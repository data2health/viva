package edu.uiowa.slis.viva;

import java.io.File;
import java.io.IOException;

import org.apache.jena.query.Dataset;
import org.apache.jena.query.Query;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.query.QuerySolution;
import org.apache.jena.query.ReadWrite;
import org.apache.jena.query.ResultSet;
import org.apache.jena.query.Syntax;
import org.apache.jena.tdb.TDBFactory;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.store.LockObtainFailedException;

public class PersonIndexer {
    protected static Logger logger = Logger.getLogger(PersonIndexer.class);
    
    static enum modes {WORK, PERSON, ORGANIZATION, PLACE };
    static modes mode = null;
    
    static Dataset dataset = null;
    static String tripleStore = "/Users/eichmann/Documents/Components/openvivo";

    static String dataPath = "/usr/local/RAID/";
    static String lucenePath = "/Users/eichmann/Documents/Components/openvivo_lucene";
    static IndexWriter theWriter = null;
    static String prefix = 
	    "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> "
	    + " PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> "
	    + " PREFIX foaf: <http://xmlns.com/foaf/0.1/> "
	    + " PREFIX mads: <http://www.loc.gov/mads/rdf/v1#> "
	    + " PREFIX skos: <http://www.w3.org/2004/02/skos/core#> "
	    + " PREFIX bib: <http://bib.ld4l.org/ontology/> ";
    static ResultSet mainRS = null;
    static int count = 0;
    
    public static void main(String[] args) throws CorruptIndexException, LockObtainFailedException, IOException, InterruptedException {
	PropertyConfigurator.configure("log4j.info");

	IndexWriterConfig config = new IndexWriterConfig(org.apache.lucene.util.Version.LUCENE_43, new StandardAnalyzer(org.apache.lucene.util.Version.LUCENE_43));
	config.setOpenMode(IndexWriterConfig.OpenMode.CREATE);
	config.setRAMBufferSizeMB(500);
	theWriter = new IndexWriter(FSDirectory.open(new File(lucenePath)), config);

	dataset = TDBFactory.createDataset(tripleStore);
	dataset.begin(ReadWrite.READ);
	indexPersons();
	dataset.end();
	logger.info("total added: " + count);
	theWriter.close();
    }
    
    static synchronized String getURI() {
	if (mainRS.hasNext()) {
	    QuerySolution sol = mainRS.nextSolution();
	    return sol.get("?uri").toString();
	} else
	    return null;
    }
    
    @SuppressWarnings("deprecation")
    static void indexPersons() throws CorruptIndexException, IOException {
   	String nameQuery =
		" SELECT DISTINCT ?s ?lab where { "+
		"  ?s rdf:type <http://xmlns.com/foaf/0.1/Person> . "+
		"  OPTIONAL { ?s rdfs:label ?labelUS  FILTER (lang(?labelUS) = \"en-US\") } "+
		"  OPTIONAL { ?s rdfs:label ?labelENG FILTER (langMatches(?labelENG,\"en\")) } "+
		"  OPTIONAL { ?s rdfs:label ?label    FILTER (lang(?label) = \"\") } "+
		"  OPTIONAL { ?s rdfs:label ?labelANY FILTER (lang(?labelANY) != \"\") } "+
		"  BIND(COALESCE(?labelUS, ?labelENG, ?label, ?labelANY ) as ?lab) "+
		" } " +
		" ORDER BY ?lab " ;
	Query query = QueryFactory.create(prefix + nameQuery, Syntax.syntaxARQ);
	QueryExecution qexec = QueryExecutionFactory.create(query, dataset);
	ResultSet rs = qexec.execSelect();
    	while (rs.hasNext()) {
    	    QuerySolution sol = rs.nextSolution();
    	    String subjectURI = sol.get("?s").toString();
    	    String label = sol.get("?lab") == null ? null : sol.get("?lab").asLiteral().getString();
    	    logger.info("uri: " + subjectURI+ "\tlab: " + label);
    	    
    	    if (label == null)
    		continue;
    
    	    Document theDocument = new Document();
    	    theDocument.add(new Field("uri", subjectURI, Field.Store.YES, Field.Index.NOT_ANALYZED));
    	    theDocument.add(new Field("name", label, Field.Store.YES, Field.Index.NOT_ANALYZED));
    	    theDocument.add(new Field("content", label, Field.Store.NO, Field.Index.ANALYZED));
    	    theWriter.addDocument(theDocument);
    	    count++;
    	    if (count % 10000 == 0)
    		logger.info("count: " + count);
    	}
    	dataset.end();
    }

}

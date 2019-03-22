<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="sparql" uri="http://slis.uiowa.edu/SPARQL"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="viva Tweeters" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">

			<sparql:setTriplestore var="vivo"
				container="edu.uiowa.slis.VIVOISF.TagLibSupport">
				<sparql:prefix prefix="foaf" baseURI="http://xmlns.com/foaf/0.1/" />
				<sparql:prefix prefix="rdf"
					baseURI="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
				<sparql:prefix prefix="vcard"
					baseURI="http://www.w3.org/2006/vcard/ns#" />
				<sparql:prefix prefix="purl"
					baseURI="http://purl.obolibrary.org/obo/" />
			</sparql:setTriplestore>

			<sparql:query var="twitter" triplestore="${vivo}">
    SELECT ?s ?filename WHERE {
      ?s rdf:type foaf:Person .
      ?s purl:ARG_2000028 ?o .
      ?o vcard:hasURL ?o2 .
      ?o2 vcard:url ?filename .
      FILTER ( strstarts(str(?filename), "http://twitter.com") || strstarts(str(?filename), "https://twitter.com") )
    }
</sparql:query>

			<h1>People with Twitter handles</h1>
			<ol class="bulletedList">
				<c:forEach items="${twitter.rows}" var="row" varStatus="rowCounter">
					<viva:Person subjectURI="${row.s}">
						<viva:foreachPersonARG_2000028Iterator>
							<c:set var="arg28">
								<viva:PersonARG_2000028 />
							</c:set>
							<c:if test="${!fn:contains(arg28,'vcard')}">
								<viva:Individual subjectURI="${arg28}">
									<viva:foreachIndividualHasNameIterator>
										<viva:Name>
											<li><a
												href="<util:applicationRoot/>/Person/altPerson.jsp?uri=${row.s}"><viva:foreachNameGivenNameIterator>
														<viva:NameGivenName />
													</viva:foreachNameGivenNameIterator> <viva:foreachNameFamilyNameIterator>
														<viva:NameFamilyName />
													</viva:foreachNameFamilyNameIterator></a>
										</viva:Name>
									</viva:foreachIndividualHasNameIterator>
								</viva:Individual>
							</c:if>
						</viva:foreachPersonARG_2000028Iterator>
					</viva:Person>
				</c:forEach>
			</ol>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


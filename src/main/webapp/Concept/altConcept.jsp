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
	<jsp:param name="title" value="viva Concept" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Concept</h1>
			<p>
				<a href="Concept.jsp?uri=${param.uri}">generated view</a>
			</p>
			<viva:Concept subjectURI="${param.uri}">
				<h3>
					<viva:ConceptLabel />
				</h3>

				<h4>Related Persons</h4>
				<ol class="bulletedList">
					<viva:foreachConceptResearchAreaOfIterator>
						<viva:Person>
							<li><a
								href="../Person/altPerson.jsp?uri=<viva:PersonSubjectURI/>"><viva:PersonLabel /></a>
						</viva:Person>
					</viva:foreachConceptResearchAreaOfIterator>
				</ol>
			</viva:Concept>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


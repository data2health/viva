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
				<a href="altConcept.jsp?uri=${param.uri}">alternate view</a>
			</p>
			<p>
				<a href="../utility/sparqlDump.jsp?type=Concept&uri=${param.uri}">RDF
					dump</a>
			</p>
			<viva:Concept subjectURI="${param.uri}">

				<h3>Default Properties</h3>
				<table>
					<tr>
						<td>URI</td>
						<td><a href="<viva:ConceptSubjectURI/>"><viva:ConceptSubjectURI /></a></td>
					</tr>
					<tr>
						<td>Label</td>
						<td><viva:ConceptLabel /></td>
					</tr>
				</table>

				<h3>Functional Datatype Properties</h3>
				<table>
					<tr>
						<td>abbreviation</td>
						<td><viva:ConceptAbbreviation /></td>
					</tr>
				</table>

				<h3>Non-Functional Datatype Properties</h3>
				<table>
					<viva:foreachConceptDescriptionIterator>
						<tr>
							<td>description</td>
							<td><viva:ConceptDescription /></td>
						</tr>
					</viva:foreachConceptDescriptionIterator>
				</table>

				<h3>Object Properties</h3>
				<table>
					<viva:foreachConceptSubjectAreaOfIterator>
						<tr>
							<td>subjectAreaOf</td>
							<td><c:set var="localType">
									<viva:ConceptSubjectAreaOfType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConceptSubjectAreaOf/>"><viva:ConceptSubjectAreaOf /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConceptSubjectAreaOfType/>/<viva:ConceptSubjectAreaOfType/>.jsp?uri=<viva:ConceptSubjectAreaOf/>"><viva:ConceptSubjectAreaOf /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConceptSubjectAreaOfIterator>
					<viva:foreachConceptResearchAreaOfIterator>
						<tr>
							<td>researchAreaOf</td>
							<td><c:set var="localType">
									<viva:ConceptResearchAreaOfType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConceptResearchAreaOf/>"><viva:ConceptResearchAreaOf /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConceptResearchAreaOfType/>/<viva:ConceptResearchAreaOfType/>.jsp?uri=<viva:ConceptResearchAreaOf/>"><viva:ConceptResearchAreaOf /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConceptResearchAreaOfIterator>
				</table>

				<h3>Inverse Object Properties (these do not have declared
					inverses)</h3>
				<table>
				</table>
			</viva:Concept>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


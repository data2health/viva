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
	<jsp:param name="title" value="viva Academic Article" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Academic Article</h1>
			<p>
				<a href="altAcademicArticle.jsp?uri=${param.uri}">alternate view</a>
			</p>
			<p>
				<a
					href="../utility/sparqlDump.jsp?type=AcademicArticle&uri=${param.uri}">RDF
					dump</a>
			</p>
			<viva:AcademicArticle subjectURI="${param.uri}">

				<h3>Default Properties</h3>
				<table>
					<tr>
						<td>URI</td>
						<td><a href="<viva:AcademicArticleSubjectURI/>"><viva:AcademicArticleSubjectURI /></a></td>
					</tr>
					<tr>
						<td>Label</td>
						<td><viva:AcademicArticleLabel /></td>
					</tr>
				</table>

				<h3>Functional Datatype Properties</h3>
				<table>
				</table>

				<h3>Non-Functional Datatype Properties</h3>
				<table>
					<viva:foreachAcademicArticleNumPagesIterator>
						<tr>
							<td>numPages</td>
							<td><viva:AcademicArticleNumPages /></td>
						</tr>
					</viva:foreachAcademicArticleNumPagesIterator>
					<viva:foreachAcademicArticlePageStartIterator>
						<tr>
							<td>pageStart</td>
							<td><viva:AcademicArticlePageStart /></td>
						</tr>
					</viva:foreachAcademicArticlePageStartIterator>
					<viva:foreachAcademicArticlePageEndIterator>
						<tr>
							<td>pageEnd</td>
							<td><viva:AcademicArticlePageEnd /></td>
						</tr>
					</viva:foreachAcademicArticlePageEndIterator>
					<viva:foreachAcademicArticleIssueIterator>
						<tr>
							<td>issue</td>
							<td><viva:AcademicArticleIssue /></td>
						</tr>
					</viva:foreachAcademicArticleIssueIterator>
					<viva:foreachAcademicArticlePmcidIterator>
						<tr>
							<td>pmcid</td>
							<td><viva:AcademicArticlePmcid /></td>
						</tr>
					</viva:foreachAcademicArticlePmcidIterator>
					<viva:foreachAcademicArticleDoiIterator>
						<tr>
							<td>doi</td>
							<td><viva:AcademicArticleDoi /></td>
						</tr>
					</viva:foreachAcademicArticleDoiIterator>
					<viva:foreachAcademicArticlePmidIterator>
						<tr>
							<td>pmid</td>
							<td><viva:AcademicArticlePmid /></td>
						</tr>
					</viva:foreachAcademicArticlePmidIterator>
					<viva:foreachAcademicArticleVolumeIterator>
						<tr>
							<td>volume</td>
							<td><viva:AcademicArticleVolume /></td>
						</tr>
					</viva:foreachAcademicArticleVolumeIterator>
				</table>

				<h3>Object Properties</h3>
				<table>
					<viva:foreachAcademicArticleRelatedByIterator>
						<tr>
							<td>relatedBy</td>
							<td><c:set var="localType">
									<viva:AcademicArticleRelatedByType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleRelatedBy/>"><viva:AcademicArticleRelatedBy /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleRelatedByType/>/<viva:AcademicArticleRelatedByType/>.jsp?uri=<viva:AcademicArticleRelatedBy/>"><viva:AcademicArticleRelatedBy /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleRelatedByIterator>
					<viva:foreachAcademicArticleARG_2000028Iterator>
						<tr>
							<td>ARG_2000028</td>
							<td><c:set var="localType">
									<viva:AcademicArticleARG_2000028Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleARG_2000028/>"><viva:AcademicArticleARG_2000028 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleARG_2000028Type/>/<viva:AcademicArticleARG_2000028Type/>.jsp?uri=<viva:AcademicArticleARG_2000028/>"><viva:AcademicArticleARG_2000028 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleARG_2000028Iterator>
					<viva:foreachAcademicArticleHasPublicationVenueIterator>
						<tr>
							<td>hasPublicationVenue</td>
							<td><c:set var="localType">
									<viva:AcademicArticleHasPublicationVenueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleHasPublicationVenue/>"><viva:AcademicArticleHasPublicationVenue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleHasPublicationVenueType/>/<viva:AcademicArticleHasPublicationVenueType/>.jsp?uri=<viva:AcademicArticleHasPublicationVenue/>"><viva:AcademicArticleHasPublicationVenue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleHasPublicationVenueIterator>
					<viva:foreachAcademicArticleDateTimeValueIterator>
						<tr>
							<td>dateTimeValue</td>
							<td><c:set var="localType">
									<viva:AcademicArticleDateTimeValueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleDateTimeValue/>"><viva:AcademicArticleDateTimeValue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleDateTimeValueType/>/<viva:AcademicArticleDateTimeValueType/>.jsp?uri=<viva:AcademicArticleDateTimeValue/>"><viva:AcademicArticleDateTimeValue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleDateTimeValueIterator>
					<viva:foreachAcademicArticleRelatesIterator>
						<tr>
							<td>relates</td>
							<td><c:set var="localType">
									<viva:AcademicArticleRelatesType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleRelates/>"><viva:AcademicArticleRelates /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleRelatesType/>/<viva:AcademicArticleRelatesType/>.jsp?uri=<viva:AcademicArticleRelates/>"><viva:AcademicArticleRelates /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleRelatesIterator>
					<viva:foreachAcademicArticleHasSubjectAreaIterator>
						<tr>
							<td>hasSubjectArea</td>
							<td><c:set var="localType">
									<viva:AcademicArticleHasSubjectAreaType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AcademicArticleHasSubjectArea/>"><viva:AcademicArticleHasSubjectArea /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AcademicArticleHasSubjectAreaType/>/<viva:AcademicArticleHasSubjectAreaType/>.jsp?uri=<viva:AcademicArticleHasSubjectArea/>"><viva:AcademicArticleHasSubjectArea /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAcademicArticleHasSubjectAreaIterator>
				</table>

				<h3>Inverse Object Properties (these do not have declared
					inverses)</h3>
				<table>
				</table>
			</viva:AcademicArticle>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


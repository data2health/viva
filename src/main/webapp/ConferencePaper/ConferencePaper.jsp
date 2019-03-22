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
	<jsp:param name="title" value="viva Conference Paper" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Conference Paper</h1>
			<p>
				<a href="altConferencePaper.jsp?uri=${param.uri}">alternate view</a>
			</p>
			<p>
				<a
					href="../utility/sparqlDump.jsp?type=ConferencePaper&uri=${param.uri}">RDF
					dump</a>
			</p>
			<viva:ConferencePaper subjectURI="${param.uri}">

				<h3>Default Properties</h3>
				<table>
					<tr>
						<td>URI</td>
						<td><a href="<viva:ConferencePaperSubjectURI/>"><viva:ConferencePaperSubjectURI /></a></td>
					</tr>
					<tr>
						<td>Label</td>
						<td><viva:ConferencePaperLabel /></td>
					</tr>
				</table>

				<h3>Functional Datatype Properties</h3>
				<table>
				</table>

				<h3>Non-Functional Datatype Properties</h3>
				<table>
					<viva:foreachConferencePaperTheAbstractIterator>
						<tr>
							<td>theAbstract</td>
							<td><viva:ConferencePaperTheAbstract /></td>
						</tr>
					</viva:foreachConferencePaperTheAbstractIterator>
					<viva:foreachConferencePaperDoiIterator>
						<tr>
							<td>doi</td>
							<td><viva:ConferencePaperDoi /></td>
						</tr>
					</viva:foreachConferencePaperDoiIterator>
				</table>

				<h3>Object Properties</h3>
				<table>
					<viva:foreachConferencePaperRelatedByIterator>
						<tr>
							<td>relatedBy</td>
							<td><c:set var="localType">
									<viva:ConferencePaperRelatedByType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperRelatedBy/>"><viva:ConferencePaperRelatedBy /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperRelatedByType/>/<viva:ConferencePaperRelatedByType/>.jsp?uri=<viva:ConferencePaperRelatedBy/>"><viva:ConferencePaperRelatedBy /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperRelatedByIterator>
					<viva:foreachConferencePaperARG_2000028Iterator>
						<tr>
							<td>ARG_2000028</td>
							<td><c:set var="localType">
									<viva:ConferencePaperARG_2000028Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperARG_2000028/>"><viva:ConferencePaperARG_2000028 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperARG_2000028Type/>/<viva:ConferencePaperARG_2000028Type/>.jsp?uri=<viva:ConferencePaperARG_2000028/>"><viva:ConferencePaperARG_2000028 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperARG_2000028Iterator>
					<viva:foreachConferencePaperHasPublicationVenueIterator>
						<tr>
							<td>hasPublicationVenue</td>
							<td><c:set var="localType">
									<viva:ConferencePaperHasPublicationVenueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperHasPublicationVenue/>"><viva:ConferencePaperHasPublicationVenue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperHasPublicationVenueType/>/<viva:ConferencePaperHasPublicationVenueType/>.jsp?uri=<viva:ConferencePaperHasPublicationVenue/>"><viva:ConferencePaperHasPublicationVenue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperHasPublicationVenueIterator>
					<viva:foreachConferencePaperDateTimeValueIterator>
						<tr>
							<td>dateTimeValue</td>
							<td><c:set var="localType">
									<viva:ConferencePaperDateTimeValueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperDateTimeValue/>"><viva:ConferencePaperDateTimeValue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperDateTimeValueType/>/<viva:ConferencePaperDateTimeValueType/>.jsp?uri=<viva:ConferencePaperDateTimeValue/>"><viva:ConferencePaperDateTimeValue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperDateTimeValueIterator>
					<viva:foreachConferencePaperRO_0002353Iterator>
						<tr>
							<td>RO_0002353</td>
							<td><c:set var="localType">
									<viva:ConferencePaperRO_0002353Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperRO_0002353/>"><viva:ConferencePaperRO_0002353 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperRO_0002353Type/>/<viva:ConferencePaperRO_0002353Type/>.jsp?uri=<viva:ConferencePaperRO_0002353/>"><viva:ConferencePaperRO_0002353 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperRO_0002353Iterator>
					<viva:foreachConferencePaperRelatesIterator>
						<tr>
							<td>relates</td>
							<td><c:set var="localType">
									<viva:ConferencePaperRelatesType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePaperRelates/>"><viva:ConferencePaperRelates /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePaperRelatesType/>/<viva:ConferencePaperRelatesType/>.jsp?uri=<viva:ConferencePaperRelates/>"><viva:ConferencePaperRelates /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePaperRelatesIterator>
				</table>

				<h3>Inverse Object Properties (these do not have declared
					inverses)</h3>
				<table>
				</table>
			</viva:ConferencePaper>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


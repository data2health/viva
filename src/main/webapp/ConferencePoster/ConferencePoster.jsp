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
	<jsp:param name="title" value="viva Conference Poster" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Conference Poster</h1>
			<p>
				<a href="altConferencePoster.jsp?uri=${param.uri}">alternate
					view</a>
			</p>
			<p>
				<a
					href="../utility/sparqlDump.jsp?type=ConferencePoster&uri=${param.uri}">RDF
					dump</a>
			</p>
			<viva:ConferencePoster subjectURI="${param.uri}">

				<h3>Default Properties</h3>
				<table>
					<tr>
						<td>URI</td>
						<td><a href="<viva:ConferencePosterSubjectURI/>"><viva:ConferencePosterSubjectURI /></a></td>
					</tr>
					<tr>
						<td>Label</td>
						<td><viva:ConferencePosterLabel /></td>
					</tr>
				</table>

				<h3>Functional Datatype Properties</h3>
				<table>
				</table>

				<h3>Non-Functional Datatype Properties</h3>
				<table>
					<viva:foreachConferencePosterTheAbstractIterator>
						<tr>
							<td>theAbstract</td>
							<td><viva:ConferencePosterTheAbstract /></td>
						</tr>
					</viva:foreachConferencePosterTheAbstractIterator>
					<viva:foreachConferencePosterDoiIterator>
						<tr>
							<td>doi</td>
							<td><viva:ConferencePosterDoi /></td>
						</tr>
					</viva:foreachConferencePosterDoiIterator>
				</table>

				<h3>Object Properties</h3>
				<table>
					<viva:foreachConferencePosterRelatedByIterator>
						<tr>
							<td>relatedBy</td>
							<td><c:set var="localType">
									<viva:ConferencePosterRelatedByType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePosterRelatedBy/>"><viva:ConferencePosterRelatedBy /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePosterRelatedByType/>/<viva:ConferencePosterRelatedByType/>.jsp?uri=<viva:ConferencePosterRelatedBy/>"><viva:ConferencePosterRelatedBy /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePosterRelatedByIterator>
					<viva:foreachConferencePosterARG_2000028Iterator>
						<tr>
							<td>ARG_2000028</td>
							<td><c:set var="localType">
									<viva:ConferencePosterARG_2000028Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePosterARG_2000028/>"><viva:ConferencePosterARG_2000028 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePosterARG_2000028Type/>/<viva:ConferencePosterARG_2000028Type/>.jsp?uri=<viva:ConferencePosterARG_2000028/>"><viva:ConferencePosterARG_2000028 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePosterARG_2000028Iterator>
					<viva:foreachConferencePosterDateTimeValueIterator>
						<tr>
							<td>dateTimeValue</td>
							<td><c:set var="localType">
									<viva:ConferencePosterDateTimeValueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePosterDateTimeValue/>"><viva:ConferencePosterDateTimeValue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePosterDateTimeValueType/>/<viva:ConferencePosterDateTimeValueType/>.jsp?uri=<viva:ConferencePosterDateTimeValue/>"><viva:ConferencePosterDateTimeValue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePosterDateTimeValueIterator>
					<viva:foreachConferencePosterRO_0002353Iterator>
						<tr>
							<td>RO_0002353</td>
							<td><c:set var="localType">
									<viva:ConferencePosterRO_0002353Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePosterRO_0002353/>"><viva:ConferencePosterRO_0002353 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePosterRO_0002353Type/>/<viva:ConferencePosterRO_0002353Type/>.jsp?uri=<viva:ConferencePosterRO_0002353/>"><viva:ConferencePosterRO_0002353 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePosterRO_0002353Iterator>
					<viva:foreachConferencePosterRelatesIterator>
						<tr>
							<td>relates</td>
							<td><c:set var="localType">
									<viva:ConferencePosterRelatesType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:ConferencePosterRelates/>"><viva:ConferencePosterRelates /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:ConferencePosterRelatesType/>/<viva:ConferencePosterRelatesType/>.jsp?uri=<viva:ConferencePosterRelates/>"><viva:ConferencePosterRelates /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachConferencePosterRelatesIterator>
				</table>

				<h3>Inverse Object Properties (these do not have declared
					inverses)</h3>
				<table>
				</table>
			</viva:ConferencePoster>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


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
	<jsp:param name="title" value="viva Audio Visual Document" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>Audio Visual Document</h1>
			<p>
				<a href="altAudioVisualDocument.jsp?uri=${param.uri}">alternate
					view</a>
			</p>
			<p>
				<a
					href="../utility/sparqlDump.jsp?type=AudioVisualDocument&uri=${param.uri}">RDF
					dump</a>
			</p>
			<viva:AudioVisualDocument subjectURI="${param.uri}">

				<h3>Default Properties</h3>
				<table>
					<tr>
						<td>URI</td>
						<td><a href="<viva:AudioVisualDocumentSubjectURI/>"><viva:AudioVisualDocumentSubjectURI /></a></td>
					</tr>
					<tr>
						<td>Label</td>
						<td><viva:AudioVisualDocumentLabel /></td>
					</tr>
				</table>

				<h3>Functional Datatype Properties</h3>
				<table>
				</table>

				<h3>Non-Functional Datatype Properties</h3>
				<table>
					<viva:foreachAudioVisualDocumentTheAbstractIterator>
						<tr>
							<td>theAbstract</td>
							<td><viva:AudioVisualDocumentTheAbstract /></td>
						</tr>
					</viva:foreachAudioVisualDocumentTheAbstractIterator>
					<viva:foreachAudioVisualDocumentDoiIterator>
						<tr>
							<td>doi</td>
							<td><viva:AudioVisualDocumentDoi /></td>
						</tr>
					</viva:foreachAudioVisualDocumentDoiIterator>
				</table>

				<h3>Object Properties</h3>
				<table>
					<viva:foreachAudioVisualDocumentRelatedByIterator>
						<tr>
							<td>relatedBy</td>
							<td><c:set var="localType">
									<viva:AudioVisualDocumentRelatedByType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AudioVisualDocumentRelatedBy/>"><viva:AudioVisualDocumentRelatedBy /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AudioVisualDocumentRelatedByType/>/<viva:AudioVisualDocumentRelatedByType/>.jsp?uri=<viva:AudioVisualDocumentRelatedBy/>"><viva:AudioVisualDocumentRelatedBy /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAudioVisualDocumentRelatedByIterator>
					<viva:foreachAudioVisualDocumentARG_2000028Iterator>
						<tr>
							<td>ARG_2000028</td>
							<td><c:set var="localType">
									<viva:AudioVisualDocumentARG_2000028Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AudioVisualDocumentARG_2000028/>"><viva:AudioVisualDocumentARG_2000028 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AudioVisualDocumentARG_2000028Type/>/<viva:AudioVisualDocumentARG_2000028Type/>.jsp?uri=<viva:AudioVisualDocumentARG_2000028/>"><viva:AudioVisualDocumentARG_2000028 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAudioVisualDocumentARG_2000028Iterator>
					<viva:foreachAudioVisualDocumentDateTimeValueIterator>
						<tr>
							<td>dateTimeValue</td>
							<td><c:set var="localType">
									<viva:AudioVisualDocumentDateTimeValueType />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AudioVisualDocumentDateTimeValue/>"><viva:AudioVisualDocumentDateTimeValue /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AudioVisualDocumentDateTimeValueType/>/<viva:AudioVisualDocumentDateTimeValueType/>.jsp?uri=<viva:AudioVisualDocumentDateTimeValue/>"><viva:AudioVisualDocumentDateTimeValue /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAudioVisualDocumentDateTimeValueIterator>
					<viva:foreachAudioVisualDocumentRO_0002353Iterator>
						<tr>
							<td>RO_0002353</td>
							<td><c:set var="localType">
									<viva:AudioVisualDocumentRO_0002353Type />
								</c:set> <c:choose>
									<c:when test="${ localType eq 'null'}">
										<a href="<viva:AudioVisualDocumentRO_0002353/>"><viva:AudioVisualDocumentRO_0002353 /></a>
									</c:when>
									<c:otherwise>
										<a
											href="../<viva:AudioVisualDocumentRO_0002353Type/>/<viva:AudioVisualDocumentRO_0002353Type/>.jsp?uri=<viva:AudioVisualDocumentRO_0002353/>"><viva:AudioVisualDocumentRO_0002353 /></a>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</viva:foreachAudioVisualDocumentRO_0002353Iterator>
				</table>

				<h3>Inverse Object Properties (these do not have declared
					inverses)</h3>
				<table>
				</table>
			</viva:AudioVisualDocument>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


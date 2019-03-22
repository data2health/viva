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
				<a href="AudioVisualDocument.jsp?uri=${param.uri}">generated
					view</a>
			</p>
			<viva:AudioVisualDocument subjectURI="${param.uri}">

				<h2>
					<viva:AudioVisualDocumentLabel />
				</h2>
				<p>
					<viva:foreachAudioVisualDocumentDoiIterator>
						<b>DOI:</b>
						<a href="http://dx.doi.org/<viva:AudioVisualDocumentDoi />"><viva:AudioVisualDocumentDoi /></a>
						<c:set var="doi">
							<viva:AudioVisualDocumentDoi />
						</c:set>
					</viva:foreachAudioVisualDocumentDoiIterator>

					<viva:foreachAudioVisualDocumentTheAbstractIterator>
						<p>
							<b>Abstract:</b>
							<viva:AudioVisualDocumentTheAbstract />
					</viva:foreachAudioVisualDocumentTheAbstractIterator>
				<h3>Authors</h3>
				<ol class=bulletedList>
					<viva:foreachAudioVisualDocumentRelatedByIterator
						classFilter="Authorship">
						<viva:Authorship>
							<viva:foreachAuthorshipRelatesIterator classFilter="Person">
								<viva:Person>
									<li><a
										href="../Person/altPerson.jsp?uri=<viva:PersonSubjectURI/>"><viva:PersonLabel /></a>
								</viva:Person>
							</viva:foreachAuthorshipRelatesIterator>
						</viva:Authorship>
					</viva:foreachAudioVisualDocumentRelatedByIterator>
				</ol>
			</viva:AudioVisualDocument>

			<c:if test="${fn:contains(doi,'figshare')}">
				<iframe
					src="https://widgets.figshare.com/articles/${fn:substringAfter(doi, "
					figshare.")}/embed?show_title=0 " width="568" height="426"
					frameborder="0"></iframe>
			</c:if>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


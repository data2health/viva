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
				<a href="ConferencePoster.jsp?uri=${param.uri}">generated view</a>
			</p>
			<viva:ConferencePoster subjectURI="${param.uri}">

				<h2>
					<viva:ConferencePosterLabel />
				</h2>
				<p>
					<viva:foreachConferencePosterDoiIterator>
						<b>DOI:</b>
						<a href="http://dx.doi.org/<viva:ConferencePosterDoi />"><viva:ConferencePosterDoi /></a>
						<c:set var="doi">
							<viva:ConferencePosterDoi />
						</c:set>
					</viva:foreachConferencePosterDoiIterator>

					<viva:foreachConferencePosterTheAbstractIterator>
						<p>
							<b>Abstract:</b>
							<viva:ConferencePosterTheAbstract />
					</viva:foreachConferencePosterTheAbstractIterator>
				<h3>Authors</h3>
				<ol class=bulletedList>
					<viva:foreachConferencePosterRelatedByIterator
						classFilter="Authorship">
						<viva:Authorship>
							<viva:foreachAuthorshipRelatesIterator classFilter="Person">
								<viva:Person>
									<li><a
										href="../Person/altPerson.jsp?uri=<viva:PersonSubjectURI/>"><viva:PersonLabel /></a>
								</viva:Person>
							</viva:foreachAuthorshipRelatesIterator>
						</viva:Authorship>
					</viva:foreachConferencePosterRelatedByIterator>
				</ol>
			</viva:ConferencePoster>

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


<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="sparql" uri="http://slis.uiowa.edu/SPARQL"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="medline" uri="http://icts.uiowa.edu/medline"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="viva academic Article" />
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
				<a href="AcademicArticle.jsp?uri=${param.uri}">generated view</a>
			</p>
			<viva:AcademicArticle subjectURI="${param.uri}">

				<h2>
					<viva:AcademicArticleLabel />
				</h2>
				<viva:foreachAcademicArticleHasPublicationVenueIterator>
					<viva:AcademicArticleHasPublicationVenue />
				</viva:foreachAcademicArticleHasPublicationVenueIterator>
				<p>
					<viva:foreachAcademicArticleDoiIterator>
						<b>DOI:</b>
						<a href="http://dx.doi.org/<viva:AcademicArticleDoi />"><viva:AcademicArticleDoi /></a>
					</viva:foreachAcademicArticleDoiIterator>
				<h3>Authors</h3>
				<ol class=bulletedList>
					<viva:foreachAcademicArticleRelatedByIterator
						classFilter="Authorship">
						<viva:Authorship>
							<viva:foreachAuthorshipRelatesIterator
								classFilter="Person Individual">
								<c:set var="type">
									<viva:AuthorshipRelatesType />
								</c:set>
								<c:choose>
									<c:when test="${type == 'Person'}">
										<viva:Person>
											<li><a
												href="../Person/altPerson.jsp?uri=<viva:PersonSubjectURI/>"><viva:PersonLabel /></a>
										</viva:Person>
									</c:when>
									<c:when test="${type == 'Individual'}">
										<viva:Individual>
											<viva:foreachIndividualHasNameIterator>
												<viva:Name>
													<li><viva:foreachNameFamilyNameIterator>
															<viva:NameFamilyName />
														</viva:foreachNameFamilyNameIterator>, <viva:foreachNameGivenNameIterator>
															<viva:NameGivenName />
														</viva:foreachNameGivenNameIterator>
												</viva:Name>
											</viva:foreachIndividualHasNameIterator>
										</viva:Individual>
									</c:when>
								</c:choose>
							</viva:foreachAuthorshipRelatesIterator>
						</viva:Authorship>
					</viva:foreachAcademicArticleRelatedByIterator>
				</ol>

				<viva:foreachAcademicArticleDoiIterator>
					<sql:query var="pmids" dataSource="jdbc/MEDLINETagLib">
                  select pmid from medline18.elocation where eid = ?
                  <sql:param>
							<viva:AcademicArticleDoi />
						</sql:param>
					</sql:query>
					<c:forEach items="${pmids.rows}" var="row" varStatus="rowCounter">
						<medline:article pmid="${row.pmid}">
							<h4>PMID: ${row.pmid}</h4>
							<medline:foreachAbstr var="xx">
								<medline:abstr>
									<p>
										<c:if test="${not empty medline:abstrLabelValue()}">
											<b><medline:abstrLabel />:</b>
										</c:if>
										<medline:abstrAbstractText />
									</p>
								</medline:abstr>
							</medline:foreachAbstr>
						</medline:article>
					</c:forEach>
				</viva:foreachAcademicArticleDoiIterator>

			</viva:AcademicArticle>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


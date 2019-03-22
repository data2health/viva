<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>
<%@ taglib prefix="sparql" uri="http://slis.uiowa.edu/SPARQL"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${not empty param.query}">
	<lucene:search
		lucenePath="/Users/eichmann/Documents/Components/openvivo_lucene"
		label="content" queryParserName="boolean" queryString="${param.query}">
		<c:set var="count">
			<lucene:count />
		</c:set>
		<c:if test="${count == 1}">
			<lucene:searchIterator>
				<c:set var="uri">
					<lucene:hit label='uri' />
				</c:set>
				<c:redirect url="altPerson.jsp?uri=${uri}" />
			</lucene:searchIterator>
		</c:if>
	</lucene:search>
</c:if>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="viva Person Search" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">

			<h3>
				<util:applicationName />
				Search
			</h3>
			<form method='POST' action='searchPerson.jsp'>
				<input name="query" value="${param.query}" size=50> <input
					type=submit name=submitButton value=Search><br>
			</form>
			Boolean operators include &amp; (and), | (or) and ! (not).
			Parentheses can be used to group terms.
			<p>
			<hr>
			<p>
				<c:if test="${not empty param.query}">
					<h3>
						Search Results:
						<c:out value="${param.query}" />
					</h3>
					<lucene:search
						lucenePath="/Users/eichmann/Documents/Components/openvivo_lucene"
						label="content" queryParserName="boolean"
						queryString="${param.query}">
						<p>
							Result Count:
							<lucene:count />
						</p>
						<ol class="bulletedList">
							<lucene:searchIterator>
								<li><a href="altPerson.jsp?uri=<lucene:hit label="uri" />"><lucene:hit
											label="name" /></a></li>
							</lucene:searchIterator>
						</ol>
					</lucene:search>
				</c:if>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>

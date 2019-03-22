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
	<jsp:param name="title" value="viva SPARQL Dump" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<h1>SPARQL Dump</h1>
			<p>
				<a href="../${param.type}/alt${param.type}.jsp?uri=${param.uri}">alternate
					view</a>
			</p>
			<p>
				<a href="../${param.type}/${param.type}.jsp?uri=${param.uri}">generated
					view</a>
			</p>

			<table>
				<caption>${param.uri}</caption>
				<tr>
					<th>Predicate</th>
					<th>Object</th>
				</tr>
				<viva:SPARQL subject="${param.uri}">
					<tr>
						<td><viva:SPARQLPredicate /></td>
						<td><viva:SPARQLObject /></td>
					</tr>
				</viva:SPARQL>
			</table>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>

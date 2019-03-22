<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="sparql" uri="http://slis.uiowa.edu/SPARQL"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
    <jsp:param name="title" value="viva Concept List" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
    <jsp:include page="../header.jsp" flush="true" />

    <div class="container pl-0 pr-0">
        <br /> <br />
        <div class="container-fluid">

       <h1>Concept List</h1>
<c:set var="limit" value="20"/>
<c:if test="${not empty param.limit}">
	<c:set var="limit" value="${0 + param.limit}"/>
</c:if>
<c:set var="offset" value="0"/>
<c:if test="${not empty param.offset}">
	<c:set var="offset" value="${0 + param.offset}"/>
</c:if>

<table>
	<tr>
		<td>
			<c:if test="${limit > 0 && offset > 0}"><a href="ConceptList.jsp?limit=${limit}&offset=${offset - limit}">&lt;</a></c:if>
		</td>
		<td>
			<c:if test="${limit > 0}"><a href="ConceptList.jsp?limit=${limit}&offset=${offset + limit}">&gt;</a></c:if>
		</td>
	</tr>
</table>

<ul>
<viva:foreachConcept limitCriteria="${limit}" offsetCriteria="${offset}" >
   <viva:Concept>
      <li><a href="Concept.jsp?uri=<viva:ConceptSubjectURI/>"><viva:ConceptLabel/></a>
   </viva:Concept>
</viva:foreachConcept>
</ul>
        </div>
        <jsp:include page="../footer.jsp" flush="true" />
    </div>
</body>

</html>


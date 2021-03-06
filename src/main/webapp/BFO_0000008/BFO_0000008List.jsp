<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BFO_0000008 List - http://purl.obolibrary.org/obo/BFO_0000008</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">

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
			<c:if test="${limit > 0 && offset > 0}"><a href="BFO_0000008List.jsp?limit=${limit}&offset=${offset - limit}">&lt;</a></c:if>
		</td>
		<td>
			<c:if test="${limit > 0}"><a href="BFO_0000008List.jsp?limit=${limit}&offset=${offset + limit}">&gt;</a></c:if>
		</td>
	</tr>
</table>

<ul>
<viva:foreachBFO_0000008 limitCriteria="${limit}" offsetCriteria="${offset}" >
   <viva:BFO_0000008>
      <li><a href="BFO_0000008.jsp?uri=<viva:BFO_0000008SubjectURI/>"><viva:BFO_0000008Label/></a>
   </viva:BFO_0000008>
</viva:foreachBFO_0000008>
</ul>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


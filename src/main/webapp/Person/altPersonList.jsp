<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Person List - http://xmlns.com/foaf/0.1/Person</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
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
            <c:if test="${limit > 0 && offset > 0}"><a href="altPersonList.jsp?limit=${limit}&offset=${offset - limit}">&lt;</a></c:if>
        </td>
        <td>
            <c:if test="${limit > 0}"><a href="altPersonList.jsp?limit=${limit}&offset=${offset + limit}">&gt;</a></c:if>
        </td>
    </tr>
</table>

<ul>
<viva:foreachPerson limitCriteria="${limit}" offsetCriteria="${offset}" >
   <viva:Person>
      <li><a href="altPerson.jsp?uri=<viva:PersonSubjectURI/>"><viva:PersonLabel/></a>
   </viva:Person>
</viva:foreachPerson>
</ul>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


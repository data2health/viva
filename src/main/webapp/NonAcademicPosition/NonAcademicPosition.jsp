<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NonAcademicPosition - http://vivoweb.org/ontology/core#NonAcademicPosition</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altNonAcademicPosition.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=NonAcademicPosition&uri=${param.uri}">RDF dump</a></p>
   <viva:NonAcademicPosition subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:NonAcademicPositionSubjectURI/>"><viva:NonAcademicPositionSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:NonAcademicPositionLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachNonAcademicPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td>
            <c:set var="localType"><viva:NonAcademicPositionDateTimeIntervalType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:NonAcademicPositionDateTimeInterval/>"><viva:NonAcademicPositionDateTimeInterval/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:NonAcademicPositionDateTimeIntervalType/>/<viva:NonAcademicPositionDateTimeIntervalType/>.jsp?uri=<viva:NonAcademicPositionDateTimeInterval/>"><viva:NonAcademicPositionDateTimeInterval /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachNonAcademicPositionDateTimeIntervalIterator>
      <viva:foreachNonAcademicPositionRelatesIterator>
         <tr><td>relates</td><td>
            <c:set var="localType"><viva:NonAcademicPositionRelatesType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:NonAcademicPositionRelates/>"><viva:NonAcademicPositionRelates/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:NonAcademicPositionRelatesType/>/<viva:NonAcademicPositionRelatesType/>.jsp?uri=<viva:NonAcademicPositionRelates/>"><viva:NonAcademicPositionRelates /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachNonAcademicPositionRelatesIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:NonAcademicPosition>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


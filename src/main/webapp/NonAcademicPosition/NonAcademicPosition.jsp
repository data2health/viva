<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>NonAcademicPosition - http://vivoweb.org/ontology/core#NonAcademicPosition</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:NonAcademicPosition subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:NonAcademicPositionSubjectURI/>"><vivo:NonAcademicPositionSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:NonAcademicPositionLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <vivo:foreachNonAcademicPositionHrJobTitleIterator>
         <tr><td>hrJobTitle</td><td><vivo:NonAcademicPositionHrJobTitle /></td></tr>
      </vivo:foreachNonAcademicPositionHrJobTitleIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachNonAcademicPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<vivo:NonAcademicPositionDateTimeIntervalType/>/<vivo:NonAcademicPositionDateTimeIntervalType/>.jsp?uri=<vivo:NonAcademicPositionDateTimeInterval/>"><vivo:NonAcademicPositionDateTimeInterval /></a></td></tr>
      </vivo:foreachNonAcademicPositionDateTimeIntervalIterator>
      <vivo:foreachNonAcademicPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<vivo:NonAcademicPositionRelatesType/>/<vivo:NonAcademicPositionRelatesType/>.jsp?uri=<vivo:NonAcademicPositionRelates/>"><vivo:NonAcademicPositionRelates /></a></td></tr>
      </vivo:foreachNonAcademicPositionRelatesIterator>
      <vivo:foreachNonAcademicPositionRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:NonAcademicPositionRO_0000052Type/>/<vivo:NonAcademicPositionRO_0000052Type/>.jsp?uri=<vivo:NonAcademicPositionRO_0000052/>"><vivo:NonAcademicPositionRO_0000052 /></a></td></tr>
      </vivo:foreachNonAcademicPositionRO_0000052Iterator>
      <vivo:foreachNonAcademicPositionRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:NonAcademicPositionRO_0000056Type/>/<vivo:NonAcademicPositionRO_0000056Type/>.jsp?uri=<vivo:NonAcademicPositionRO_0000056/>"><vivo:NonAcademicPositionRO_0000056 /></a></td></tr>
      </vivo:foreachNonAcademicPositionRO_0000056Iterator>
      <vivo:foreachNonAcademicPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<vivo:NonAcademicPositionDateTimeIntervalType/>/<vivo:NonAcademicPositionDateTimeIntervalType/>.jsp?uri=<vivo:NonAcademicPositionDateTimeInterval/>"><vivo:NonAcademicPositionDateTimeInterval /></a></td></tr>
      </vivo:foreachNonAcademicPositionDateTimeIntervalIterator>
      <vivo:foreachNonAcademicPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<vivo:NonAcademicPositionRelatesType/>/<vivo:NonAcademicPositionRelatesType/>.jsp?uri=<vivo:NonAcademicPositionRelates/>"><vivo:NonAcademicPositionRelates /></a></td></tr>
      </vivo:foreachNonAcademicPositionRelatesIterator>
   </table>
   </vivo:NonAcademicPosition>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

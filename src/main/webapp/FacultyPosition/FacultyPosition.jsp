<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>FacultyPosition - http://vivoweb.org/ontology/core#FacultyPosition</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:FacultyPosition subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:FacultyPositionSubjectURI/>"><vivo:FacultyPositionSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:FacultyPositionLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <vivo:foreachFacultyPositionHrJobTitleIterator>
         <tr><td>hrJobTitle</td><td><vivo:FacultyPositionHrJobTitle /></td></tr>
      </vivo:foreachFacultyPositionHrJobTitleIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachFacultyPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<vivo:FacultyPositionDateTimeIntervalType/>/<vivo:FacultyPositionDateTimeIntervalType/>.jsp?uri=<vivo:FacultyPositionDateTimeInterval/>"><vivo:FacultyPositionDateTimeInterval /></a></td></tr>
      </vivo:foreachFacultyPositionDateTimeIntervalIterator>
      <vivo:foreachFacultyPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<vivo:FacultyPositionRelatesType/>/<vivo:FacultyPositionRelatesType/>.jsp?uri=<vivo:FacultyPositionRelates/>"><vivo:FacultyPositionRelates /></a></td></tr>
      </vivo:foreachFacultyPositionRelatesIterator>
      <vivo:foreachFacultyPositionRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:FacultyPositionRO_0000052Type/>/<vivo:FacultyPositionRO_0000052Type/>.jsp?uri=<vivo:FacultyPositionRO_0000052/>"><vivo:FacultyPositionRO_0000052 /></a></td></tr>
      </vivo:foreachFacultyPositionRO_0000052Iterator>
      <vivo:foreachFacultyPositionRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:FacultyPositionRO_0000056Type/>/<vivo:FacultyPositionRO_0000056Type/>.jsp?uri=<vivo:FacultyPositionRO_0000056/>"><vivo:FacultyPositionRO_0000056 /></a></td></tr>
      </vivo:foreachFacultyPositionRO_0000056Iterator>
      <vivo:foreachFacultyPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<vivo:FacultyPositionDateTimeIntervalType/>/<vivo:FacultyPositionDateTimeIntervalType/>.jsp?uri=<vivo:FacultyPositionDateTimeInterval/>"><vivo:FacultyPositionDateTimeInterval /></a></td></tr>
      </vivo:foreachFacultyPositionDateTimeIntervalIterator>
      <vivo:foreachFacultyPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<vivo:FacultyPositionRelatesType/>/<vivo:FacultyPositionRelatesType/>.jsp?uri=<vivo:FacultyPositionRelates/>"><vivo:FacultyPositionRelates /></a></td></tr>
      </vivo:foreachFacultyPositionRelatesIterator>
   </table>
   </vivo:FacultyPosition>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

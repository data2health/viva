<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NonFacultyAcademicPosition - http://vivoweb.org/ontology/core#NonFacultyAcademicPosition</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altNonFacultyAcademicPosition.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=NonFacultyAcademicPosition&uri=${param.uri}">RDF dump</a></p>
   <viva:NonFacultyAcademicPosition subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:NonFacultyAcademicPositionSubjectURI/>"><viva:NonFacultyAcademicPositionSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:NonFacultyAcademicPositionLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <viva:foreachNonFacultyAcademicPositionHrJobTitleIterator>
         <tr><td>hrJobTitle</td><td><viva:NonFacultyAcademicPositionHrJobTitle /></td></tr>
      </viva:foreachNonFacultyAcademicPositionHrJobTitleIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachNonFacultyAcademicPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<viva:NonFacultyAcademicPositionDateTimeIntervalType/>/<viva:NonFacultyAcademicPositionDateTimeIntervalType/>.jsp?uri=<viva:NonFacultyAcademicPositionDateTimeInterval/>"><viva:NonFacultyAcademicPositionDateTimeInterval /></a></td></tr>
      </viva:foreachNonFacultyAcademicPositionDateTimeIntervalIterator>
      <viva:foreachNonFacultyAcademicPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<viva:NonFacultyAcademicPositionRelatesType/>/<viva:NonFacultyAcademicPositionRelatesType/>.jsp?uri=<viva:NonFacultyAcademicPositionRelates/>"><viva:NonFacultyAcademicPositionRelates /></a></td></tr>
      </viva:foreachNonFacultyAcademicPositionRelatesIterator>
      <viva:foreachNonFacultyAcademicPositionRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<viva:NonFacultyAcademicPositionRO_0000052Type/>/<viva:NonFacultyAcademicPositionRO_0000052Type/>.jsp?uri=<viva:NonFacultyAcademicPositionRO_0000052/>"><viva:NonFacultyAcademicPositionRO_0000052 /></a></td></tr>
      </viva:foreachNonFacultyAcademicPositionRO_0000052Iterator>
      <viva:foreachNonFacultyAcademicPositionRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<viva:NonFacultyAcademicPositionRO_0000056Type/>/<viva:NonFacultyAcademicPositionRO_0000056Type/>.jsp?uri=<viva:NonFacultyAcademicPositionRO_0000056/>"><viva:NonFacultyAcademicPositionRO_0000056 /></a></td></tr>
      </viva:foreachNonFacultyAcademicPositionRO_0000056Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:NonFacultyAcademicPosition>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


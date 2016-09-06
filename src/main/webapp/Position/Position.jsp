<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Position - http://vivoweb.org/ontology/core#Position</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:Position subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:PositionSubjectURI/>"><vivo:PositionSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:PositionLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <vivo:foreachPositionHrJobTitleIterator>
         <tr><td>hrJobTitle</td><td><vivo:PositionHrJobTitle /></td></tr>
      </vivo:foreachPositionHrJobTitleIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachPositionDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<vivo:PositionDateTimeIntervalType/>/<vivo:PositionDateTimeIntervalType/>.jsp?uri=<vivo:PositionDateTimeInterval/>"><vivo:PositionDateTimeInterval /></a></td></tr>
      </vivo:foreachPositionDateTimeIntervalIterator>
      <vivo:foreachPositionRelatesIterator>
         <tr><td>relates</td><td><a href="../<vivo:PositionRelatesType/>/<vivo:PositionRelatesType/>.jsp?uri=<vivo:PositionRelates/>"><vivo:PositionRelates /></a></td></tr>
      </vivo:foreachPositionRelatesIterator>
      <vivo:foreachPositionRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:PositionRO_0000052Type/>/<vivo:PositionRO_0000052Type/>.jsp?uri=<vivo:PositionRO_0000052/>"><vivo:PositionRO_0000052 /></a></td></tr>
      </vivo:foreachPositionRO_0000052Iterator>
      <vivo:foreachPositionRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:PositionRO_0000056Type/>/<vivo:PositionRO_0000056Type/>.jsp?uri=<vivo:PositionRO_0000056/>"><vivo:PositionRO_0000056 /></a></td></tr>
      </vivo:foreachPositionRO_0000056Iterator>
   </table>
   </vivo:Position>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

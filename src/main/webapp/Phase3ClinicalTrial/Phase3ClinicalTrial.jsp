<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phase3ClinicalTrial - http://vivoweb.org/ontology/scientific-research#Phase3ClinicalTrial</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altPhase3ClinicalTrial.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Phase3ClinicalTrial&uri=${param.uri}">RDF dump</a></p>
   <viva:Phase3ClinicalTrial subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:Phase3ClinicalTrialSubjectURI/>"><viva:Phase3ClinicalTrialSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:Phase3ClinicalTrialLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachPhase3ClinicalTrialERO_0001518Iterator>
         <tr><td>ERO_0001518</td><td><a href="../<viva:Phase3ClinicalTrialERO_0001518Type/>/<viva:Phase3ClinicalTrialERO_0001518Type/>.jsp?uri=<viva:Phase3ClinicalTrialERO_0001518/>"><viva:Phase3ClinicalTrialERO_0001518 /></a></td></tr>
      </viva:foreachPhase3ClinicalTrialERO_0001518Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:Phase3ClinicalTrial>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


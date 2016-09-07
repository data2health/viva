<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ClinicalRole - http://vivoweb.org/ontology/core#ClinicalRole</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altClinicalRole.jsp?uri=${param.uri}">alternate view</a></p>
   <vivo:ClinicalRole subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:ClinicalRoleSubjectURI/>"><vivo:ClinicalRoleSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:ClinicalRoleLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachClinicalRoleRoleContributesToIterator>
         <tr><td>roleContributesTo</td><td><a href="../<vivo:ClinicalRoleRoleContributesToType/>/<vivo:ClinicalRoleRoleContributesToType/>.jsp?uri=<vivo:ClinicalRoleRoleContributesTo/>"><vivo:ClinicalRoleRoleContributesTo /></a></td></tr>
      </vivo:foreachClinicalRoleRoleContributesToIterator>
      <vivo:foreachClinicalRoleBFO_0000054Iterator>
         <tr><td>BFO_0000054</td><td><a href="../<vivo:ClinicalRoleBFO_0000054Type/>/<vivo:ClinicalRoleBFO_0000054Type/>.jsp?uri=<vivo:ClinicalRoleBFO_0000054/>"><vivo:ClinicalRoleBFO_0000054 /></a></td></tr>
      </vivo:foreachClinicalRoleBFO_0000054Iterator>
      <vivo:foreachClinicalRoleRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:ClinicalRoleRO_0000052Type/>/<vivo:ClinicalRoleRO_0000052Type/>.jsp?uri=<vivo:ClinicalRoleRO_0000052/>"><vivo:ClinicalRoleRO_0000052 /></a></td></tr>
      </vivo:foreachClinicalRoleRO_0000052Iterator>
      <vivo:foreachClinicalRoleRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:ClinicalRoleRO_0000056Type/>/<vivo:ClinicalRoleRO_0000056Type/>.jsp?uri=<vivo:ClinicalRoleRO_0000056/>"><vivo:ClinicalRoleRO_0000056 /></a></td></tr>
      </vivo:foreachClinicalRoleRO_0000056Iterator>
   </table>
   </vivo:ClinicalRole>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


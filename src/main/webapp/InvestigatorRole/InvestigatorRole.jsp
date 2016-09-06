<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>InvestigatorRole - http://vivoweb.org/ontology/core#InvestigatorRole</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:InvestigatorRole subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:InvestigatorRoleSubjectURI/>"><vivo:InvestigatorRoleSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:InvestigatorRoleLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
      <tr><td>hideFromDisplay</td><td><vivo:InvestigatorRoleHideFromDisplay /></td></tr>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachInvestigatorRoleBFO_0000054Iterator>
         <tr><td>BFO_0000054</td><td><a href="../<vivo:InvestigatorRoleBFO_0000054Type/>/<vivo:InvestigatorRoleBFO_0000054Type/>.jsp?uri=<vivo:InvestigatorRoleBFO_0000054/>"><vivo:InvestigatorRoleBFO_0000054 /></a></td></tr>
      </vivo:foreachInvestigatorRoleBFO_0000054Iterator>
      <vivo:foreachInvestigatorRoleRO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:InvestigatorRoleRO_0000052Type/>/<vivo:InvestigatorRoleRO_0000052Type/>.jsp?uri=<vivo:InvestigatorRoleRO_0000052/>"><vivo:InvestigatorRoleRO_0000052 /></a></td></tr>
      </vivo:foreachInvestigatorRoleRO_0000052Iterator>
      <vivo:foreachInvestigatorRoleRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:InvestigatorRoleRO_0000056Type/>/<vivo:InvestigatorRoleRO_0000056Type/>.jsp?uri=<vivo:InvestigatorRoleRO_0000056/>"><vivo:InvestigatorRoleRO_0000056 /></a></td></tr>
      </vivo:foreachInvestigatorRoleRO_0000056Iterator>
      <vivo:foreachInvestigatorRoleRoleContributesToIterator>
         <tr><td>roleContributesTo</td><td><a href="../<vivo:InvestigatorRoleRoleContributesToType/>/<vivo:InvestigatorRoleRoleContributesToType/>.jsp?uri=<vivo:InvestigatorRoleRoleContributesTo/>"><vivo:InvestigatorRoleRoleContributesTo /></a></td></tr>
      </vivo:foreachInvestigatorRoleRoleContributesToIterator>
   </table>
   </vivo:InvestigatorRole>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

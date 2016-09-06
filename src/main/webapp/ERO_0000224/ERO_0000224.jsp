<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ERO_0000224 - http://purl.obolibrary.org/obo/ERO_0000224</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:ERO_0000224 subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:ERO_0000224SubjectURI/>"><vivo:ERO_0000224SubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:ERO_0000224Label /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachERO_0000224BFO_0000054Iterator>
         <tr><td>BFO_0000054</td><td><a href="../<vivo:ERO_0000224BFO_0000054Type/>/<vivo:ERO_0000224BFO_0000054Type/>.jsp?uri=<vivo:ERO_0000224BFO_0000054/>"><vivo:ERO_0000224BFO_0000054 /></a></td></tr>
      </vivo:foreachERO_0000224BFO_0000054Iterator>
      <vivo:foreachERO_0000224RO_0000052Iterator>
         <tr><td>RO_0000052</td><td><a href="../<vivo:ERO_0000224RO_0000052Type/>/<vivo:ERO_0000224RO_0000052Type/>.jsp?uri=<vivo:ERO_0000224RO_0000052/>"><vivo:ERO_0000224RO_0000052 /></a></td></tr>
      </vivo:foreachERO_0000224RO_0000052Iterator>
      <vivo:foreachERO_0000224RO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:ERO_0000224RO_0000056Type/>/<vivo:ERO_0000224RO_0000056Type/>.jsp?uri=<vivo:ERO_0000224RO_0000056/>"><vivo:ERO_0000224RO_0000056 /></a></td></tr>
      </vivo:foreachERO_0000224RO_0000056Iterator>
      <vivo:foreachERO_0000224RoleContributesToIterator>
         <tr><td>roleContributesTo</td><td><a href="../<vivo:ERO_0000224RoleContributesToType/>/<vivo:ERO_0000224RoleContributesToType/>.jsp?uri=<vivo:ERO_0000224RoleContributesTo/>"><vivo:ERO_0000224RoleContributesTo /></a></td></tr>
      </vivo:foreachERO_0000224RoleContributesToIterator>
   </table>
   </vivo:ERO_0000224>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

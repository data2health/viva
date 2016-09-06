<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>OBI_0100026 - http://purl.obolibrary.org/obo/OBI_0100026</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:OBI_0100026 subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:OBI_0100026SubjectURI/>"><vivo:OBI_0100026SubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:OBI_0100026Label /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachOBI_0100026RO_0000053Iterator>
         <tr><td>RO_0000053</td><td><a href="../<vivo:OBI_0100026RO_0000053Type/>/<vivo:OBI_0100026RO_0000053Type/>.jsp?uri=<vivo:OBI_0100026RO_0000053/>"><vivo:OBI_0100026RO_0000053 /></a></td></tr>
      </vivo:foreachOBI_0100026RO_0000053Iterator>
      <vivo:foreachOBI_0100026RO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:OBI_0100026RO_0000056Type/>/<vivo:OBI_0100026RO_0000056Type/>.jsp?uri=<vivo:OBI_0100026RO_0000056/>"><vivo:OBI_0100026RO_0000056 /></a></td></tr>
      </vivo:foreachOBI_0100026RO_0000056Iterator>
      <vivo:foreachOBI_0100026RO_0003000Iterator>
         <tr><td>RO_0003000</td><td><a href="../<vivo:OBI_0100026RO_0003000Type/>/<vivo:OBI_0100026RO_0003000Type/>.jsp?uri=<vivo:OBI_0100026RO_0003000/>"><vivo:OBI_0100026RO_0003000 /></a></td></tr>
      </vivo:foreachOBI_0100026RO_0003000Iterator>
      <vivo:foreachOBI_0100026RO_0003001Iterator>
         <tr><td>RO_0003001</td><td><a href="../<vivo:OBI_0100026RO_0003001Type/>/<vivo:OBI_0100026RO_0003001Type/>.jsp?uri=<vivo:OBI_0100026RO_0003001/>"><vivo:OBI_0100026RO_0003001 /></a></td></tr>
      </vivo:foreachOBI_0100026RO_0003001Iterator>
      <vivo:foreachOBI_0100026OBI_0000304Iterator>
         <tr><td>OBI_0000304</td><td><a href="../<vivo:OBI_0100026OBI_0000304Type/>/<vivo:OBI_0100026OBI_0000304Type/>.jsp?uri=<vivo:OBI_0100026OBI_0000304/>"><vivo:OBI_0100026OBI_0000304 /></a></td></tr>
      </vivo:foreachOBI_0100026OBI_0000304Iterator>
   </table>
   </vivo:OBI_0100026>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

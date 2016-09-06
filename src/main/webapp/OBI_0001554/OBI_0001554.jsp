<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>OBI_0001554 - http://purl.obolibrary.org/obo/OBI_0001554</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <vivo:OBI_0001554 subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:OBI_0001554SubjectURI/>"><vivo:OBI_0001554SubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:OBI_0001554Label /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <vivo:foreachOBI_0001554TheAbstractIterator>
         <tr><td>theAbstract</td><td><vivo:OBI_0001554TheAbstract /></td></tr>
      </vivo:foreachOBI_0001554TheAbstractIterator>
      <vivo:foreachOBI_0001554DoiIterator>
         <tr><td>doi</td><td><vivo:OBI_0001554Doi /></td></tr>
      </vivo:foreachOBI_0001554DoiIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachOBI_0001554IAO_0000221Iterator>
         <tr><td>IAO_0000221</td><td><a href="../<vivo:OBI_0001554IAO_0000221Type/>/<vivo:OBI_0001554IAO_0000221Type/>.jsp?uri=<vivo:OBI_0001554IAO_0000221/>"><vivo:OBI_0001554IAO_0000221 /></a></td></tr>
      </vivo:foreachOBI_0001554IAO_0000221Iterator>
      <vivo:foreachOBI_0001554RO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:OBI_0001554RO_0000056Type/>/<vivo:OBI_0001554RO_0000056Type/>.jsp?uri=<vivo:OBI_0001554RO_0000056/>"><vivo:OBI_0001554RO_0000056 /></a></td></tr>
      </vivo:foreachOBI_0001554RO_0000056Iterator>
      <vivo:foreachOBI_0001554TranslatorIterator>
         <tr><td>translator</td><td><a href="../<vivo:OBI_0001554TranslatorType/>/<vivo:OBI_0001554TranslatorType/>.jsp?uri=<vivo:OBI_0001554Translator/>"><vivo:OBI_0001554Translator /></a></td></tr>
      </vivo:foreachOBI_0001554TranslatorIterator>
      <vivo:foreachOBI_0001554FeaturesIterator>
         <tr><td>features</td><td><a href="../<vivo:OBI_0001554FeaturesType/>/<vivo:OBI_0001554FeaturesType/>.jsp?uri=<vivo:OBI_0001554Features/>"><vivo:OBI_0001554Features /></a></td></tr>
      </vivo:foreachOBI_0001554FeaturesIterator>
      <vivo:foreachOBI_0001554InformationResourceSupportedByIterator>
         <tr><td>informationResourceSupportedBy</td><td><a href="../<vivo:OBI_0001554InformationResourceSupportedByType/>/<vivo:OBI_0001554InformationResourceSupportedByType/>.jsp?uri=<vivo:OBI_0001554InformationResourceSupportedBy/>"><vivo:OBI_0001554InformationResourceSupportedBy /></a></td></tr>
      </vivo:foreachOBI_0001554InformationResourceSupportedByIterator>
      <vivo:foreachOBI_0001554IAO_0000136Iterator>
         <tr><td>IAO_0000136</td><td><a href="../<vivo:OBI_0001554IAO_0000136Type/>/<vivo:OBI_0001554IAO_0000136Type/>.jsp?uri=<vivo:OBI_0001554IAO_0000136/>"><vivo:OBI_0001554IAO_0000136 /></a></td></tr>
      </vivo:foreachOBI_0001554IAO_0000136Iterator>
   </table>
   </vivo:OBI_0001554>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

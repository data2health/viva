<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>ERO_0000395 - http://purl.obolibrary.org/obo/ERO_0000395</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altERO_0000395.jsp?uri=${param.uri}">alternate view</a></p>
   <vivo:ERO_0000395 subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<vivo:ERO_0000395SubjectURI/>"><vivo:ERO_0000395SubjectURI /></a></td></tr>
      <tr><td>Label</td><td><vivo:ERO_0000395Label /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <vivo:foreachERO_0000395TheAbstractIterator>
         <tr><td>theAbstract</td><td><vivo:ERO_0000395TheAbstract /></td></tr>
      </vivo:foreachERO_0000395TheAbstractIterator>
      <vivo:foreachERO_0000395DoiIterator>
         <tr><td>doi</td><td><vivo:ERO_0000395Doi /></td></tr>
      </vivo:foreachERO_0000395DoiIterator>
      <vivo:foreachERO_0000395ERO_0000046Iterator>
         <tr><td>ERO_0000046</td><td><vivo:ERO_0000395ERO_0000046 /></td></tr>
      </vivo:foreachERO_0000395ERO_0000046Iterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <vivo:foreachERO_0000395TranslatorIterator>
         <tr><td>translator</td><td><a href="../<vivo:ERO_0000395TranslatorType/>/<vivo:ERO_0000395TranslatorType/>.jsp?uri=<vivo:ERO_0000395Translator/>"><vivo:ERO_0000395Translator /></a></td></tr>
      </vivo:foreachERO_0000395TranslatorIterator>
      <vivo:foreachERO_0000395FeaturesIterator>
         <tr><td>features</td><td><a href="../<vivo:ERO_0000395FeaturesType/>/<vivo:ERO_0000395FeaturesType/>.jsp?uri=<vivo:ERO_0000395Features/>"><vivo:ERO_0000395Features /></a></td></tr>
      </vivo:foreachERO_0000395FeaturesIterator>
      <vivo:foreachERO_0000395InformationResourceSupportedByIterator>
         <tr><td>informationResourceSupportedBy</td><td><a href="../<vivo:ERO_0000395InformationResourceSupportedByType/>/<vivo:ERO_0000395InformationResourceSupportedByType/>.jsp?uri=<vivo:ERO_0000395InformationResourceSupportedBy/>"><vivo:ERO_0000395InformationResourceSupportedBy /></a></td></tr>
      </vivo:foreachERO_0000395InformationResourceSupportedByIterator>
      <vivo:foreachERO_0000395IAO_0000136Iterator>
         <tr><td>IAO_0000136</td><td><a href="../<vivo:ERO_0000395IAO_0000136Type/>/<vivo:ERO_0000395IAO_0000136Type/>.jsp?uri=<vivo:ERO_0000395IAO_0000136/>"><vivo:ERO_0000395IAO_0000136 /></a></td></tr>
      </vivo:foreachERO_0000395IAO_0000136Iterator>
      <vivo:foreachERO_0000395ERO_0000029Iterator>
         <tr><td>ERO_0000029</td><td><a href="../<vivo:ERO_0000395ERO_0000029Type/>/<vivo:ERO_0000395ERO_0000029Type/>.jsp?uri=<vivo:ERO_0000395ERO_0000029/>"><vivo:ERO_0000395ERO_0000029 /></a></td></tr>
      </vivo:foreachERO_0000395ERO_0000029Iterator>
      <vivo:foreachERO_0000395ERO_0000482Iterator>
         <tr><td>ERO_0000482</td><td><a href="../<vivo:ERO_0000395ERO_0000482Type/>/<vivo:ERO_0000395ERO_0000482Type/>.jsp?uri=<vivo:ERO_0000395ERO_0000482/>"><vivo:ERO_0000395ERO_0000482 /></a></td></tr>
      </vivo:foreachERO_0000395ERO_0000482Iterator>
      <vivo:foreachERO_0000395ERO_0000390Iterator>
         <tr><td>ERO_0000390</td><td><a href="../<vivo:ERO_0000395ERO_0000390Type/>/<vivo:ERO_0000395ERO_0000390Type/>.jsp?uri=<vivo:ERO_0000395ERO_0000390/>"><vivo:ERO_0000395ERO_0000390 /></a></td></tr>
      </vivo:foreachERO_0000395ERO_0000390Iterator>
      <vivo:foreachERO_0000395RO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<vivo:ERO_0000395RO_0000056Type/>/<vivo:ERO_0000395RO_0000056Type/>.jsp?uri=<vivo:ERO_0000395RO_0000056/>"><vivo:ERO_0000395RO_0000056 /></a></td></tr>
      </vivo:foreachERO_0000395RO_0000056Iterator>
   </table>
   </vivo:ERO_0000395>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


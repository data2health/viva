<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SynonymType - http://www.geneontology.org/formats/oboInOwl#SynonymType</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altSynonymType.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=SynonymType&uri=${param.uri}">RDF dump</a></p>
   <viva:SynonymType subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:SynonymTypeSubjectURI/>"><viva:SynonymTypeSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:SynonymTypeLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <viva:foreachSynonymTypeTheAbstractIterator>
         <tr><td>theAbstract</td><td><viva:SynonymTypeTheAbstract /></td></tr>
      </viva:foreachSynonymTypeTheAbstractIterator>
      <viva:foreachSynonymTypeDoiIterator>
         <tr><td>doi</td><td><viva:SynonymTypeDoi /></td></tr>
      </viva:foreachSynonymTypeDoiIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachSynonymTypeRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<viva:SynonymTypeRO_0000056Type/>/<viva:SynonymTypeRO_0000056Type/>.jsp?uri=<viva:SynonymTypeRO_0000056/>"><viva:SynonymTypeRO_0000056 /></a></td></tr>
      </viva:foreachSynonymTypeRO_0000056Iterator>
      <viva:foreachSynonymTypeTranslatorIterator>
         <tr><td>translator</td><td><a href="../<viva:SynonymTypeTranslatorType/>/<viva:SynonymTypeTranslatorType/>.jsp?uri=<viva:SynonymTypeTranslator/>"><viva:SynonymTypeTranslator /></a></td></tr>
      </viva:foreachSynonymTypeTranslatorIterator>
      <viva:foreachSynonymTypeFeaturesIterator>
         <tr><td>features</td><td><a href="../<viva:SynonymTypeFeaturesType/>/<viva:SynonymTypeFeaturesType/>.jsp?uri=<viva:SynonymTypeFeatures/>"><viva:SynonymTypeFeatures /></a></td></tr>
      </viva:foreachSynonymTypeFeaturesIterator>
      <viva:foreachSynonymTypeInformationResourceSupportedByIterator>
         <tr><td>informationResourceSupportedBy</td><td><a href="../<viva:SynonymTypeInformationResourceSupportedByType/>/<viva:SynonymTypeInformationResourceSupportedByType/>.jsp?uri=<viva:SynonymTypeInformationResourceSupportedBy/>"><viva:SynonymTypeInformationResourceSupportedBy /></a></td></tr>
      </viva:foreachSynonymTypeInformationResourceSupportedByIterator>
      <viva:foreachSynonymTypeIAO_0000136Iterator>
         <tr><td>IAO_0000136</td><td><a href="../<viva:SynonymTypeIAO_0000136Type/>/<viva:SynonymTypeIAO_0000136Type/>.jsp?uri=<viva:SynonymTypeIAO_0000136/>"><viva:SynonymTypeIAO_0000136 /></a></td></tr>
      </viva:foreachSynonymTypeIAO_0000136Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:SynonymType>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


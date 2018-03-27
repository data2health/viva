<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AudioVisualDocument - http://purl.org/ontology/bibo/AudioVisualDocument</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altAudioVisualDocument.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=AudioVisualDocument&uri=${param.uri}">RDF dump</a></p>
   <viva:AudioVisualDocument subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:AudioVisualDocumentSubjectURI/>"><viva:AudioVisualDocumentSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:AudioVisualDocumentLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <viva:foreachAudioVisualDocumentTheAbstractIterator>
         <tr><td>theAbstract</td><td><viva:AudioVisualDocumentTheAbstract /></td></tr>
      </viva:foreachAudioVisualDocumentTheAbstractIterator>
      <viva:foreachAudioVisualDocumentDoiIterator>
         <tr><td>doi</td><td><viva:AudioVisualDocumentDoi /></td></tr>
      </viva:foreachAudioVisualDocumentDoiIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachAudioVisualDocumentRelatedByIterator>
         <tr><td>relatedBy</td><td>
            <c:set var="localType"><viva:AudioVisualDocumentRelatedByType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:AudioVisualDocumentRelatedBy/>"><viva:AudioVisualDocumentRelatedBy/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:AudioVisualDocumentRelatedByType/>/<viva:AudioVisualDocumentRelatedByType/>.jsp?uri=<viva:AudioVisualDocumentRelatedBy/>"><viva:AudioVisualDocumentRelatedBy /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachAudioVisualDocumentRelatedByIterator>
      <viva:foreachAudioVisualDocumentARG_2000028Iterator>
         <tr><td>ARG_2000028</td><td>
            <c:set var="localType"><viva:AudioVisualDocumentARG_2000028Type/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:AudioVisualDocumentARG_2000028/>"><viva:AudioVisualDocumentARG_2000028/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:AudioVisualDocumentARG_2000028Type/>/<viva:AudioVisualDocumentARG_2000028Type/>.jsp?uri=<viva:AudioVisualDocumentARG_2000028/>"><viva:AudioVisualDocumentARG_2000028 /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachAudioVisualDocumentARG_2000028Iterator>
      <viva:foreachAudioVisualDocumentDateTimeValueIterator>
         <tr><td>dateTimeValue</td><td>
            <c:set var="localType"><viva:AudioVisualDocumentDateTimeValueType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:AudioVisualDocumentDateTimeValue/>"><viva:AudioVisualDocumentDateTimeValue/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:AudioVisualDocumentDateTimeValueType/>/<viva:AudioVisualDocumentDateTimeValueType/>.jsp?uri=<viva:AudioVisualDocumentDateTimeValue/>"><viva:AudioVisualDocumentDateTimeValue /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachAudioVisualDocumentDateTimeValueIterator>
      <viva:foreachAudioVisualDocumentRO_0002353Iterator>
         <tr><td>RO_0002353</td><td>
            <c:set var="localType"><viva:AudioVisualDocumentRO_0002353Type/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:AudioVisualDocumentRO_0002353/>"><viva:AudioVisualDocumentRO_0002353/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:AudioVisualDocumentRO_0002353Type/>/<viva:AudioVisualDocumentRO_0002353Type/>.jsp?uri=<viva:AudioVisualDocumentRO_0002353/>"><viva:AudioVisualDocumentRO_0002353 /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachAudioVisualDocumentRO_0002353Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:AudioVisualDocument>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Explanatory - http://www.w3.org/2006/vcard/ns#Explanatory</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altExplanatory.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Explanatory&uri=${param.uri}">RDF dump</a></p>
   <viva:Explanatory subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:ExplanatorySubjectURI/>"><viva:ExplanatorySubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:ExplanatoryLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <viva:foreachExplanatoryMiddleNameIterator>
         <tr><td>middleName</td><td><viva:ExplanatoryMiddleName /></td></tr>
      </viva:foreachExplanatoryMiddleNameIterator>
      <viva:foreachExplanatoryTelephoneIterator>
         <tr><td>telephone</td><td><viva:ExplanatoryTelephone /></td></tr>
      </viva:foreachExplanatoryTelephoneIterator>
      <viva:foreachExplanatoryUrlIterator>
         <tr><td>url</td><td><viva:ExplanatoryUrl /></td></tr>
      </viva:foreachExplanatoryUrlIterator>
      <viva:foreachExplanatoryRankIterator>
         <tr><td>rank</td><td><viva:ExplanatoryRank /></td></tr>
      </viva:foreachExplanatoryRankIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachExplanatoryHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><viva:ExplanatoryHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryHasAddress/>"><viva:ExplanatoryHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryHasAddressType/>/<viva:ExplanatoryHasAddressType/>.jsp?uri=<viva:ExplanatoryHasAddress/>"><viva:ExplanatoryHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryHasAddressIterator>
      <viva:foreachExplanatoryHasURLIterator>
         <tr><td>hasURL</td><td>
            <c:set var="localType"><viva:ExplanatoryHasURLType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryHasURL/>"><viva:ExplanatoryHasURL/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryHasURLType/>/<viva:ExplanatoryHasURLType/>.jsp?uri=<viva:ExplanatoryHasURL/>"><viva:ExplanatoryHasURL /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryHasURLIterator>
      <viva:foreachExplanatoryRelatedByIterator>
         <tr><td>relatedBy</td><td>
            <c:set var="localType"><viva:ExplanatoryRelatedByType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryRelatedBy/>"><viva:ExplanatoryRelatedBy/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryRelatedByType/>/<viva:ExplanatoryRelatedByType/>.jsp?uri=<viva:ExplanatoryRelatedBy/>"><viva:ExplanatoryRelatedBy /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryRelatedByIterator>
      <viva:foreachExplanatoryRelatesIterator>
         <tr><td>relates</td><td>
            <c:set var="localType"><viva:ExplanatoryRelatesType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryRelates/>"><viva:ExplanatoryRelates/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryRelatesType/>/<viva:ExplanatoryRelatesType/>.jsp?uri=<viva:ExplanatoryRelates/>"><viva:ExplanatoryRelates /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryRelatesIterator>
      <viva:foreachExplanatoryHasGeoIterator>
         <tr><td>hasGeo</td><td>
            <c:set var="localType"><viva:ExplanatoryHasGeoType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryHasGeo/>"><viva:ExplanatoryHasGeo/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryHasGeoType/>/<viva:ExplanatoryHasGeoType/>.jsp?uri=<viva:ExplanatoryHasGeo/>"><viva:ExplanatoryHasGeo /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryHasGeoIterator>
      <viva:foreachExplanatoryHasEmailIterator>
         <tr><td>hasEmail</td><td>
            <c:set var="localType"><viva:ExplanatoryHasEmailType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<viva:ExplanatoryHasEmail/>"><viva:ExplanatoryHasEmail/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<viva:ExplanatoryHasEmailType/>/<viva:ExplanatoryHasEmailType/>.jsp?uri=<viva:ExplanatoryHasEmail/>"><viva:ExplanatoryHasEmail /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </viva:foreachExplanatoryHasEmailIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:Explanatory>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


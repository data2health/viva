<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>License - http://vivoweb.org/ontology/core#License</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altLicense.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=License&uri=${param.uri}">RDF dump</a></p>
   <viva:License subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:LicenseSubjectURI/>"><viva:LicenseSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:LicenseLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachLicenseResearchAreaOfIterator>
         <tr><td>researchAreaOf</td><td><a href="../<viva:LicenseResearchAreaOfType/>/<viva:LicenseResearchAreaOfType/>.jsp?uri=<viva:LicenseResearchAreaOf/>"><viva:LicenseResearchAreaOf /></a></td></tr>
      </viva:foreachLicenseResearchAreaOfIterator>
      <viva:foreachLicenseSubjectAreaOfIterator>
         <tr><td>subjectAreaOf</td><td><a href="../<viva:LicenseSubjectAreaOfType/>/<viva:LicenseSubjectAreaOfType/>.jsp?uri=<viva:LicenseSubjectAreaOf/>"><viva:LicenseSubjectAreaOf /></a></td></tr>
      </viva:foreachLicenseSubjectAreaOfIterator>
      <viva:foreachLicenseRelatedIterator>
         <tr><td>related</td><td><a href="../<viva:LicenseRelatedType/>/<viva:LicenseRelatedType/>.jsp?uri=<viva:LicenseRelated/>"><viva:LicenseRelated /></a></td></tr>
      </viva:foreachLicenseRelatedIterator>
      <viva:foreachLicenseNarrowerIterator>
         <tr><td>narrower</td><td><a href="../<viva:LicenseNarrowerType/>/<viva:LicenseNarrowerType/>.jsp?uri=<viva:LicenseNarrower/>"><viva:LicenseNarrower /></a></td></tr>
      </viva:foreachLicenseNarrowerIterator>
      <viva:foreachLicenseBroaderIterator>
         <tr><td>broader</td><td><a href="../<viva:LicenseBroaderType/>/<viva:LicenseBroaderType/>.jsp?uri=<viva:LicenseBroader/>"><viva:LicenseBroader /></a></td></tr>
      </viva:foreachLicenseBroaderIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <viva:foreachLicenseEligibleForInverseIterator>
         <tr><td>eligibleFor</td><td><a href="../<viva:LicenseEligibleForInverseType/>/<viva:LicenseEligibleForInverseType/>.jsp?uri=<viva:LicenseEligibleForInverse/>"><viva:LicenseEligibleForInverse/></a></td></tr>
      </viva:foreachLicenseEligibleForInverseIterator>
   </table>
   </viva:License>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


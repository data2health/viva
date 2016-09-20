<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Publisher - http://vivoweb.org/ontology/core#Publisher</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altPublisher.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Publisher&uri=${param.uri}">RDF dump</a></p>
   <viva:Publisher subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:PublisherSubjectURI/>"><viva:PublisherSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:PublisherLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
      <tr><td>overview</td><td><viva:PublisherOverview /></td></tr>
      <tr><td>abbreviation</td><td><viva:PublisherAbbreviation /></td></tr>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachPublisherRelatedByIterator>
         <tr><td>relatedBy</td><td><a href="../<viva:PublisherRelatedByType/>/<viva:PublisherRelatedByType/>.jsp?uri=<viva:PublisherRelatedBy/>"><viva:PublisherRelatedBy /></a></td></tr>
      </viva:foreachPublisherRelatedByIterator>
      <viva:foreachPublisherRO_0000053Iterator>
         <tr><td>RO_0000053</td><td><a href="../<viva:PublisherRO_0000053Type/>/<viva:PublisherRO_0000053Type/>.jsp?uri=<viva:PublisherRO_0000053/>"><viva:PublisherRO_0000053 /></a></td></tr>
      </viva:foreachPublisherRO_0000053Iterator>
      <viva:foreachPublisherAssigneeForIterator>
         <tr><td>assigneeFor</td><td><a href="../<viva:PublisherAssigneeForType/>/<viva:PublisherAssigneeForType/>.jsp?uri=<viva:PublisherAssigneeFor/>"><viva:PublisherAssigneeFor /></a></td></tr>
      </viva:foreachPublisherAssigneeForIterator>
      <viva:foreachPublisherHasCollaboratorIterator>
         <tr><td>hasCollaborator</td><td><a href="../<viva:PublisherHasCollaboratorType/>/<viva:PublisherHasCollaboratorType/>.jsp?uri=<viva:PublisherHasCollaborator/>"><viva:PublisherHasCollaborator /></a></td></tr>
      </viva:foreachPublisherHasCollaboratorIterator>
      <viva:foreachPublisherTranslatorOfIterator>
         <tr><td>translatorOf</td><td><a href="../<viva:PublisherTranslatorOfType/>/<viva:PublisherTranslatorOfType/>.jsp?uri=<viva:PublisherTranslatorOf/>"><viva:PublisherTranslatorOf /></a></td></tr>
      </viva:foreachPublisherTranslatorOfIterator>
      <viva:foreachPublisherRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<viva:PublisherRO_0000056Type/>/<viva:PublisherRO_0000056Type/>.jsp?uri=<viva:PublisherRO_0000056/>"><viva:PublisherRO_0000056 /></a></td></tr>
      </viva:foreachPublisherRO_0000056Iterator>
      <viva:foreachPublisherSponsorsIterator>
         <tr><td>sponsors</td><td><a href="../<viva:PublisherSponsorsType/>/<viva:PublisherSponsorsType/>.jsp?uri=<viva:PublisherSponsors/>"><viva:PublisherSponsors /></a></td></tr>
      </viva:foreachPublisherSponsorsIterator>
      <viva:foreachPublisherPublisherOfIterator>
         <tr><td>publisherOf</td><td><a href="../<viva:PublisherPublisherOfType/>/<viva:PublisherPublisherOfType/>.jsp?uri=<viva:PublisherPublisherOf/>"><viva:PublisherPublisherOf /></a></td></tr>
      </viva:foreachPublisherPublisherOfIterator>
      <viva:foreachPublisherERO_0000031Iterator>
         <tr><td>ERO_0000031</td><td><a href="../<viva:PublisherERO_0000031Type/>/<viva:PublisherERO_0000031Type/>.jsp?uri=<viva:PublisherERO_0000031/>"><viva:PublisherERO_0000031 /></a></td></tr>
      </viva:foreachPublisherERO_0000031Iterator>
      <viva:foreachPublisherGoverningAuthorityForIterator>
         <tr><td>governingAuthorityFor</td><td><a href="../<viva:PublisherGoverningAuthorityForType/>/<viva:PublisherGoverningAuthorityForType/>.jsp?uri=<viva:PublisherGoverningAuthorityFor/>"><viva:PublisherGoverningAuthorityFor /></a></td></tr>
      </viva:foreachPublisherGoverningAuthorityForIterator>
      <viva:foreachPublisherERO_0000037Iterator>
         <tr><td>ERO_0000037</td><td><a href="../<viva:PublisherERO_0000037Type/>/<viva:PublisherERO_0000037Type/>.jsp?uri=<viva:PublisherERO_0000037/>"><viva:PublisherERO_0000037 /></a></td></tr>
      </viva:foreachPublisherERO_0000037Iterator>
      <viva:foreachPublisherERO_0001520Iterator>
         <tr><td>ERO_0001520</td><td><a href="../<viva:PublisherERO_0001520Type/>/<viva:PublisherERO_0001520Type/>.jsp?uri=<viva:PublisherERO_0001520/>"><viva:PublisherERO_0001520 /></a></td></tr>
      </viva:foreachPublisherERO_0001520Iterator>
      <viva:foreachPublisherSubcontractsGrantIterator>
         <tr><td>subcontractsGrant</td><td><a href="../<viva:PublisherSubcontractsGrantType/>/<viva:PublisherSubcontractsGrantType/>.jsp?uri=<viva:PublisherSubcontractsGrant/>"><viva:PublisherSubcontractsGrant /></a></td></tr>
      </viva:foreachPublisherSubcontractsGrantIterator>
      <viva:foreachPublisherHasSuccessorOrganizationIterator>
         <tr><td>hasSuccessorOrganization</td><td><a href="../<viva:PublisherHasSuccessorOrganizationType/>/<viva:PublisherHasSuccessorOrganizationType/>.jsp?uri=<viva:PublisherHasSuccessorOrganization/>"><viva:PublisherHasSuccessorOrganization /></a></td></tr>
      </viva:foreachPublisherHasSuccessorOrganizationIterator>
      <viva:foreachPublisherHasPredecessorOrganizationIterator>
         <tr><td>hasPredecessorOrganization</td><td><a href="../<viva:PublisherHasPredecessorOrganizationType/>/<viva:PublisherHasPredecessorOrganizationType/>.jsp?uri=<viva:PublisherHasPredecessorOrganization/>"><viva:PublisherHasPredecessorOrganization /></a></td></tr>
      </viva:foreachPublisherHasPredecessorOrganizationIterator>
      <viva:foreachPublisherHasEquipmentIterator>
         <tr><td>hasEquipment</td><td><a href="../<viva:PublisherHasEquipmentType/>/<viva:PublisherHasEquipmentType/>.jsp?uri=<viva:PublisherHasEquipment/>"><viva:PublisherHasEquipment /></a></td></tr>
      </viva:foreachPublisherHasEquipmentIterator>
      <viva:foreachPublisherAffiliatedOrganizationIterator>
         <tr><td>affiliatedOrganization</td><td><a href="../<viva:PublisherAffiliatedOrganizationType/>/<viva:PublisherAffiliatedOrganizationType/>.jsp?uri=<viva:PublisherAffiliatedOrganization/>"><viva:PublisherAffiliatedOrganization /></a></td></tr>
      </viva:foreachPublisherAffiliatedOrganizationIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <viva:foreachPublisherIssuerInverseIterator>
         <tr><td>issuer</td><td><a href="../<viva:PublisherIssuerInverseType/>/<viva:PublisherIssuerInverseType/>.jsp?uri=<viva:PublisherIssuerInverse/>"><viva:PublisherIssuerInverse/></a></td></tr>
      </viva:foreachPublisherIssuerInverseIterator>
      <viva:foreachPublisherOBI_0000304InverseIterator>
         <tr><td>OBI_0000304</td><td><a href="../<viva:PublisherOBI_0000304InverseType/>/<viva:PublisherOBI_0000304InverseType/>.jsp?uri=<viva:PublisherOBI_0000304Inverse/>"><viva:PublisherOBI_0000304Inverse/></a></td></tr>
      </viva:foreachPublisherOBI_0000304InverseIterator>
   </table>
   </viva:Publisher>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


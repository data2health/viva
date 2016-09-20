<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERO_0000565 - http://purl.obolibrary.org/obo/ERO_0000565</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altERO_0000565.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=ERO_0000565&uri=${param.uri}">RDF dump</a></p>
   <viva:ERO_0000565 subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:ERO_0000565SubjectURI/>"><viva:ERO_0000565SubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:ERO_0000565Label /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
      <tr><td>overview</td><td><viva:ERO_0000565Overview /></td></tr>
      <tr><td>abbreviation</td><td><viva:ERO_0000565Abbreviation /></td></tr>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachERO_0000565RO_0000053Iterator>
         <tr><td>RO_0000053</td><td><a href="../<viva:ERO_0000565RO_0000053Type/>/<viva:ERO_0000565RO_0000053Type/>.jsp?uri=<viva:ERO_0000565RO_0000053/>"><viva:ERO_0000565RO_0000053 /></a></td></tr>
      </viva:foreachERO_0000565RO_0000053Iterator>
      <viva:foreachERO_0000565AssigneeForIterator>
         <tr><td>assigneeFor</td><td><a href="../<viva:ERO_0000565AssigneeForType/>/<viva:ERO_0000565AssigneeForType/>.jsp?uri=<viva:ERO_0000565AssigneeFor/>"><viva:ERO_0000565AssigneeFor /></a></td></tr>
      </viva:foreachERO_0000565AssigneeForIterator>
      <viva:foreachERO_0000565HasCollaboratorIterator>
         <tr><td>hasCollaborator</td><td><a href="../<viva:ERO_0000565HasCollaboratorType/>/<viva:ERO_0000565HasCollaboratorType/>.jsp?uri=<viva:ERO_0000565HasCollaborator/>"><viva:ERO_0000565HasCollaborator /></a></td></tr>
      </viva:foreachERO_0000565HasCollaboratorIterator>
      <viva:foreachERO_0000565TranslatorOfIterator>
         <tr><td>translatorOf</td><td><a href="../<viva:ERO_0000565TranslatorOfType/>/<viva:ERO_0000565TranslatorOfType/>.jsp?uri=<viva:ERO_0000565TranslatorOf/>"><viva:ERO_0000565TranslatorOf /></a></td></tr>
      </viva:foreachERO_0000565TranslatorOfIterator>
      <viva:foreachERO_0000565RO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<viva:ERO_0000565RO_0000056Type/>/<viva:ERO_0000565RO_0000056Type/>.jsp?uri=<viva:ERO_0000565RO_0000056/>"><viva:ERO_0000565RO_0000056 /></a></td></tr>
      </viva:foreachERO_0000565RO_0000056Iterator>
      <viva:foreachERO_0000565SponsorsIterator>
         <tr><td>sponsors</td><td><a href="../<viva:ERO_0000565SponsorsType/>/<viva:ERO_0000565SponsorsType/>.jsp?uri=<viva:ERO_0000565Sponsors/>"><viva:ERO_0000565Sponsors /></a></td></tr>
      </viva:foreachERO_0000565SponsorsIterator>
      <viva:foreachERO_0000565PublisherOfIterator>
         <tr><td>publisherOf</td><td><a href="../<viva:ERO_0000565PublisherOfType/>/<viva:ERO_0000565PublisherOfType/>.jsp?uri=<viva:ERO_0000565PublisherOf/>"><viva:ERO_0000565PublisherOf /></a></td></tr>
      </viva:foreachERO_0000565PublisherOfIterator>
      <viva:foreachERO_0000565ERO_0000031Iterator>
         <tr><td>ERO_0000031</td><td><a href="../<viva:ERO_0000565ERO_0000031Type/>/<viva:ERO_0000565ERO_0000031Type/>.jsp?uri=<viva:ERO_0000565ERO_0000031/>"><viva:ERO_0000565ERO_0000031 /></a></td></tr>
      </viva:foreachERO_0000565ERO_0000031Iterator>
      <viva:foreachERO_0000565GoverningAuthorityForIterator>
         <tr><td>governingAuthorityFor</td><td><a href="../<viva:ERO_0000565GoverningAuthorityForType/>/<viva:ERO_0000565GoverningAuthorityForType/>.jsp?uri=<viva:ERO_0000565GoverningAuthorityFor/>"><viva:ERO_0000565GoverningAuthorityFor /></a></td></tr>
      </viva:foreachERO_0000565GoverningAuthorityForIterator>
      <viva:foreachERO_0000565ERO_0000037Iterator>
         <tr><td>ERO_0000037</td><td><a href="../<viva:ERO_0000565ERO_0000037Type/>/<viva:ERO_0000565ERO_0000037Type/>.jsp?uri=<viva:ERO_0000565ERO_0000037/>"><viva:ERO_0000565ERO_0000037 /></a></td></tr>
      </viva:foreachERO_0000565ERO_0000037Iterator>
      <viva:foreachERO_0000565ERO_0001520Iterator>
         <tr><td>ERO_0001520</td><td><a href="../<viva:ERO_0000565ERO_0001520Type/>/<viva:ERO_0000565ERO_0001520Type/>.jsp?uri=<viva:ERO_0000565ERO_0001520/>"><viva:ERO_0000565ERO_0001520 /></a></td></tr>
      </viva:foreachERO_0000565ERO_0001520Iterator>
      <viva:foreachERO_0000565RelatedByIterator>
         <tr><td>relatedBy</td><td><a href="../<viva:ERO_0000565RelatedByType/>/<viva:ERO_0000565RelatedByType/>.jsp?uri=<viva:ERO_0000565RelatedBy/>"><viva:ERO_0000565RelatedBy /></a></td></tr>
      </viva:foreachERO_0000565RelatedByIterator>
      <viva:foreachERO_0000565SubcontractsGrantIterator>
         <tr><td>subcontractsGrant</td><td><a href="../<viva:ERO_0000565SubcontractsGrantType/>/<viva:ERO_0000565SubcontractsGrantType/>.jsp?uri=<viva:ERO_0000565SubcontractsGrant/>"><viva:ERO_0000565SubcontractsGrant /></a></td></tr>
      </viva:foreachERO_0000565SubcontractsGrantIterator>
      <viva:foreachERO_0000565HasSuccessorOrganizationIterator>
         <tr><td>hasSuccessorOrganization</td><td><a href="../<viva:ERO_0000565HasSuccessorOrganizationType/>/<viva:ERO_0000565HasSuccessorOrganizationType/>.jsp?uri=<viva:ERO_0000565HasSuccessorOrganization/>"><viva:ERO_0000565HasSuccessorOrganization /></a></td></tr>
      </viva:foreachERO_0000565HasSuccessorOrganizationIterator>
      <viva:foreachERO_0000565HasPredecessorOrganizationIterator>
         <tr><td>hasPredecessorOrganization</td><td><a href="../<viva:ERO_0000565HasPredecessorOrganizationType/>/<viva:ERO_0000565HasPredecessorOrganizationType/>.jsp?uri=<viva:ERO_0000565HasPredecessorOrganization/>"><viva:ERO_0000565HasPredecessorOrganization /></a></td></tr>
      </viva:foreachERO_0000565HasPredecessorOrganizationIterator>
      <viva:foreachERO_0000565HasEquipmentIterator>
         <tr><td>hasEquipment</td><td><a href="../<viva:ERO_0000565HasEquipmentType/>/<viva:ERO_0000565HasEquipmentType/>.jsp?uri=<viva:ERO_0000565HasEquipment/>"><viva:ERO_0000565HasEquipment /></a></td></tr>
      </viva:foreachERO_0000565HasEquipmentIterator>
      <viva:foreachERO_0000565AffiliatedOrganizationIterator>
         <tr><td>affiliatedOrganization</td><td><a href="../<viva:ERO_0000565AffiliatedOrganizationType/>/<viva:ERO_0000565AffiliatedOrganizationType/>.jsp?uri=<viva:ERO_0000565AffiliatedOrganization/>"><viva:ERO_0000565AffiliatedOrganization /></a></td></tr>
      </viva:foreachERO_0000565AffiliatedOrganizationIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <viva:foreachERO_0000565IssuerInverseIterator>
         <tr><td>issuer</td><td><a href="../<viva:ERO_0000565IssuerInverseType/>/<viva:ERO_0000565IssuerInverseType/>.jsp?uri=<viva:ERO_0000565IssuerInverse/>"><viva:ERO_0000565IssuerInverse/></a></td></tr>
      </viva:foreachERO_0000565IssuerInverseIterator>
      <viva:foreachERO_0000565OBI_0000304InverseIterator>
         <tr><td>OBI_0000304</td><td><a href="../<viva:ERO_0000565OBI_0000304InverseType/>/<viva:ERO_0000565OBI_0000304InverseType/>.jsp?uri=<viva:ERO_0000565OBI_0000304Inverse/>"><viva:ERO_0000565OBI_0000304Inverse/></a></td></tr>
      </viva:foreachERO_0000565OBI_0000304InverseIterator>
   </table>
   </viva:ERO_0000565>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - http://vivoweb.org/ontology/core#Company</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altCompany.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Company&uri=${param.uri}">RDF dump</a></p>
   <viva:Company subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:CompanySubjectURI/>"><viva:CompanySubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:CompanyLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
      <tr><td>abbreviation</td><td><viva:CompanyAbbreviation /></td></tr>
      <tr><td>overview</td><td><viva:CompanyOverview /></td></tr>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachCompanyRelatedByIterator>
         <tr><td>relatedBy</td><td><a href="../<viva:CompanyRelatedByType/>/<viva:CompanyRelatedByType/>.jsp?uri=<viva:CompanyRelatedBy/>"><viva:CompanyRelatedBy /></a></td></tr>
      </viva:foreachCompanyRelatedByIterator>
      <viva:foreachCompanyAssigneeForIterator>
         <tr><td>assigneeFor</td><td><a href="../<viva:CompanyAssigneeForType/>/<viva:CompanyAssigneeForType/>.jsp?uri=<viva:CompanyAssigneeFor/>"><viva:CompanyAssigneeFor /></a></td></tr>
      </viva:foreachCompanyAssigneeForIterator>
      <viva:foreachCompanyHasCollaboratorIterator>
         <tr><td>hasCollaborator</td><td><a href="../<viva:CompanyHasCollaboratorType/>/<viva:CompanyHasCollaboratorType/>.jsp?uri=<viva:CompanyHasCollaborator/>"><viva:CompanyHasCollaborator /></a></td></tr>
      </viva:foreachCompanyHasCollaboratorIterator>
      <viva:foreachCompanyTranslatorOfIterator>
         <tr><td>translatorOf</td><td><a href="../<viva:CompanyTranslatorOfType/>/<viva:CompanyTranslatorOfType/>.jsp?uri=<viva:CompanyTranslatorOf/>"><viva:CompanyTranslatorOf /></a></td></tr>
      </viva:foreachCompanyTranslatorOfIterator>
      <viva:foreachCompanyRO_0000053Iterator>
         <tr><td>RO_0000053</td><td><a href="../<viva:CompanyRO_0000053Type/>/<viva:CompanyRO_0000053Type/>.jsp?uri=<viva:CompanyRO_0000053/>"><viva:CompanyRO_0000053 /></a></td></tr>
      </viva:foreachCompanyRO_0000053Iterator>
      <viva:foreachCompanySponsorsIterator>
         <tr><td>sponsors</td><td><a href="../<viva:CompanySponsorsType/>/<viva:CompanySponsorsType/>.jsp?uri=<viva:CompanySponsors/>"><viva:CompanySponsors /></a></td></tr>
      </viva:foreachCompanySponsorsIterator>
      <viva:foreachCompanyPublisherOfIterator>
         <tr><td>publisherOf</td><td><a href="../<viva:CompanyPublisherOfType/>/<viva:CompanyPublisherOfType/>.jsp?uri=<viva:CompanyPublisherOf/>"><viva:CompanyPublisherOf /></a></td></tr>
      </viva:foreachCompanyPublisherOfIterator>
      <viva:foreachCompanyERO_0000031Iterator>
         <tr><td>ERO_0000031</td><td><a href="../<viva:CompanyERO_0000031Type/>/<viva:CompanyERO_0000031Type/>.jsp?uri=<viva:CompanyERO_0000031/>"><viva:CompanyERO_0000031 /></a></td></tr>
      </viva:foreachCompanyERO_0000031Iterator>
      <viva:foreachCompanyGoverningAuthorityForIterator>
         <tr><td>governingAuthorityFor</td><td><a href="../<viva:CompanyGoverningAuthorityForType/>/<viva:CompanyGoverningAuthorityForType/>.jsp?uri=<viva:CompanyGoverningAuthorityFor/>"><viva:CompanyGoverningAuthorityFor /></a></td></tr>
      </viva:foreachCompanyGoverningAuthorityForIterator>
      <viva:foreachCompanyERO_0000037Iterator>
         <tr><td>ERO_0000037</td><td><a href="../<viva:CompanyERO_0000037Type/>/<viva:CompanyERO_0000037Type/>.jsp?uri=<viva:CompanyERO_0000037/>"><viva:CompanyERO_0000037 /></a></td></tr>
      </viva:foreachCompanyERO_0000037Iterator>
      <viva:foreachCompanyERO_0001520Iterator>
         <tr><td>ERO_0001520</td><td><a href="../<viva:CompanyERO_0001520Type/>/<viva:CompanyERO_0001520Type/>.jsp?uri=<viva:CompanyERO_0001520/>"><viva:CompanyERO_0001520 /></a></td></tr>
      </viva:foreachCompanyERO_0001520Iterator>
      <viva:foreachCompanySubcontractsGrantIterator>
         <tr><td>subcontractsGrant</td><td><a href="../<viva:CompanySubcontractsGrantType/>/<viva:CompanySubcontractsGrantType/>.jsp?uri=<viva:CompanySubcontractsGrant/>"><viva:CompanySubcontractsGrant /></a></td></tr>
      </viva:foreachCompanySubcontractsGrantIterator>
      <viva:foreachCompanyHasSuccessorOrganizationIterator>
         <tr><td>hasSuccessorOrganization</td><td><a href="../<viva:CompanyHasSuccessorOrganizationType/>/<viva:CompanyHasSuccessorOrganizationType/>.jsp?uri=<viva:CompanyHasSuccessorOrganization/>"><viva:CompanyHasSuccessorOrganization /></a></td></tr>
      </viva:foreachCompanyHasSuccessorOrganizationIterator>
      <viva:foreachCompanyHasPredecessorOrganizationIterator>
         <tr><td>hasPredecessorOrganization</td><td><a href="../<viva:CompanyHasPredecessorOrganizationType/>/<viva:CompanyHasPredecessorOrganizationType/>.jsp?uri=<viva:CompanyHasPredecessorOrganization/>"><viva:CompanyHasPredecessorOrganization /></a></td></tr>
      </viva:foreachCompanyHasPredecessorOrganizationIterator>
      <viva:foreachCompanyHasEquipmentIterator>
         <tr><td>hasEquipment</td><td><a href="../<viva:CompanyHasEquipmentType/>/<viva:CompanyHasEquipmentType/>.jsp?uri=<viva:CompanyHasEquipment/>"><viva:CompanyHasEquipment /></a></td></tr>
      </viva:foreachCompanyHasEquipmentIterator>
      <viva:foreachCompanyAffiliatedOrganizationIterator>
         <tr><td>affiliatedOrganization</td><td><a href="../<viva:CompanyAffiliatedOrganizationType/>/<viva:CompanyAffiliatedOrganizationType/>.jsp?uri=<viva:CompanyAffiliatedOrganization/>"><viva:CompanyAffiliatedOrganization /></a></td></tr>
      </viva:foreachCompanyAffiliatedOrganizationIterator>
      <viva:foreachCompanyRO_0000056Iterator>
         <tr><td>RO_0000056</td><td><a href="../<viva:CompanyRO_0000056Type/>/<viva:CompanyRO_0000056Type/>.jsp?uri=<viva:CompanyRO_0000056/>"><viva:CompanyRO_0000056 /></a></td></tr>
      </viva:foreachCompanyRO_0000056Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <viva:foreachCompanyIssuerInverseIterator>
         <tr><td>issuer</td><td><a href="../<viva:CompanyIssuerInverseType/>/<viva:CompanyIssuerInverseType/>.jsp?uri=<viva:CompanyIssuerInverse/>"><viva:CompanyIssuerInverse/></a></td></tr>
      </viva:foreachCompanyIssuerInverseIterator>
      <viva:foreachCompanyOBI_0000304InverseIterator>
         <tr><td>OBI_0000304</td><td><a href="../<viva:CompanyOBI_0000304InverseType/>/<viva:CompanyOBI_0000304InverseType/>.jsp?uri=<viva:CompanyOBI_0000304Inverse/>"><viva:CompanyOBI_0000304Inverse/></a></td></tr>
      </viva:foreachCompanyOBI_0000304InverseIterator>
   </table>
   </viva:Company>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


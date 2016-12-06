<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Location - http://vivoweb.org/ontology/core#Location</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altLocation.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Location&uri=${param.uri}">RDF dump</a></p>
   <viva:Location subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<viva:LocationSubjectURI/>"><viva:LocationSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><viva:LocationLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
      <tr><td>placeOfPublication</td><td><viva:LocationPlaceOfPublication /></td></tr>
      <tr><td>hideFromDisplay</td><td><viva:LocationHideFromDisplay /></td></tr>
      <tr><td>abbreviation</td><td><viva:LocationAbbreviation /></td></tr>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <viva:foreachLocationAgriculturalAreaUnitIterator>
         <tr><td>agriculturalAreaUnit</td><td><viva:LocationAgriculturalAreaUnit /></td></tr>
      </viva:foreachLocationAgriculturalAreaUnitIterator>
      <viva:foreachLocationAgriculturalAreaTotalIterator>
         <tr><td>agriculturalAreaTotal</td><td><viva:LocationAgriculturalAreaTotal /></td></tr>
      </viva:foreachLocationAgriculturalAreaTotalIterator>
      <viva:foreachLocationNationalityITIterator>
         <tr><td>nationalityIT</td><td><viva:LocationNationalityIT /></td></tr>
      </viva:foreachLocationNationalityITIterator>
      <viva:foreachLocationNameOfficialRUIterator>
         <tr><td>nameOfficialRU</td><td><viva:LocationNameOfficialRU /></td></tr>
      </viva:foreachLocationNameOfficialRUIterator>
      <viva:foreachLocationAgriculturalAreaYearIterator>
         <tr><td>agriculturalAreaYear</td><td><viva:LocationAgriculturalAreaYear /></td></tr>
      </viva:foreachLocationAgriculturalAreaYearIterator>
      <viva:foreachLocationNameCurrencyFRIterator>
         <tr><td>nameCurrencyFR</td><td><viva:LocationNameCurrencyFR /></td></tr>
      </viva:foreachLocationNameCurrencyFRIterator>
      <viva:foreachLocationNameListENIterator>
         <tr><td>nameListEN</td><td><viva:LocationNameListEN /></td></tr>
      </viva:foreachLocationNameListENIterator>
      <viva:foreachLocationGDPNotesIterator>
         <tr><td>GDPNotes</td><td><viva:LocationGDPNotes /></td></tr>
      </viva:foreachLocationGDPNotesIterator>
      <viva:foreachLocationGDPTotalInCurrentPricesIterator>
         <tr><td>GDPTotalInCurrentPrices</td><td><viva:LocationGDPTotalInCurrentPrices /></td></tr>
      </viva:foreachLocationGDPTotalInCurrentPricesIterator>
      <viva:foreachLocationNameOfficialZHIterator>
         <tr><td>nameOfficialZH</td><td><viva:LocationNameOfficialZH /></td></tr>
      </viva:foreachLocationNameOfficialZHIterator>
      <viva:foreachLocationNationalityARIterator>
         <tr><td>nationalityAR</td><td><viva:LocationNationalityAR /></td></tr>
      </viva:foreachLocationNationalityARIterator>
      <viva:foreachLocationPopulationUnitIterator>
         <tr><td>populationUnit</td><td><viva:LocationPopulationUnit /></td></tr>
      </viva:foreachLocationPopulationUnitIterator>
      <viva:foreachLocationNationalityESIterator>
         <tr><td>nationalityES</td><td><viva:LocationNationalityES /></td></tr>
      </viva:foreachLocationNationalityESIterator>
      <viva:foreachLocationNameListARIterator>
         <tr><td>nameListAR</td><td><viva:LocationNameListAR /></td></tr>
      </viva:foreachLocationNameListARIterator>
      <viva:foreachLocationCountryAreaTotalIterator>
         <tr><td>countryAreaTotal</td><td><viva:LocationCountryAreaTotal /></td></tr>
      </viva:foreachLocationCountryAreaTotalIterator>
      <viva:foreachLocationHasMinLatitudeIterator>
         <tr><td>hasMinLatitude</td><td><viva:LocationHasMinLatitude /></td></tr>
      </viva:foreachLocationHasMinLatitudeIterator>
      <viva:foreachLocationNameShortZHIterator>
         <tr><td>nameShortZH</td><td><viva:LocationNameShortZH /></td></tr>
      </viva:foreachLocationNameShortZHIterator>
      <viva:foreachLocationNameShortITIterator>
         <tr><td>nameShortIT</td><td><viva:LocationNameShortIT /></td></tr>
      </viva:foreachLocationNameShortITIterator>
      <viva:foreachLocationCodeISO3Iterator>
         <tr><td>codeISO3</td><td><viva:LocationCodeISO3 /></td></tr>
      </viva:foreachLocationCodeISO3Iterator>
      <viva:foreachLocationCodeAGROVOCIterator>
         <tr><td>codeAGROVOC</td><td><viva:LocationCodeAGROVOC /></td></tr>
      </viva:foreachLocationCodeAGROVOCIterator>
      <viva:foreachLocationNationalityRUIterator>
         <tr><td>nationalityRU</td><td><viva:LocationNationalityRU /></td></tr>
      </viva:foreachLocationNationalityRUIterator>
      <viva:foreachLocationHasMaxLongitudeIterator>
         <tr><td>hasMaxLongitude</td><td><viva:LocationHasMaxLongitude /></td></tr>
      </viva:foreachLocationHasMaxLongitudeIterator>
      <viva:foreachLocationNameCurrencyZHIterator>
         <tr><td>nameCurrencyZH</td><td><viva:LocationNameCurrencyZH /></td></tr>
      </viva:foreachLocationNameCurrencyZHIterator>
      <viva:foreachLocationNationalityENIterator>
         <tr><td>nationalityEN</td><td><viva:LocationNationalityEN /></td></tr>
      </viva:foreachLocationNationalityENIterator>
      <viva:foreachLocationAgriculturalAreaNotesIterator>
         <tr><td>agriculturalAreaNotes</td><td><viva:LocationAgriculturalAreaNotes /></td></tr>
      </viva:foreachLocationAgriculturalAreaNotesIterator>
      <viva:foreachLocationNameListFRIterator>
         <tr><td>nameListFR</td><td><viva:LocationNameListFR /></td></tr>
      </viva:foreachLocationNameListFRIterator>
      <viva:foreachLocationNameOfficialESIterator>
         <tr><td>nameOfficialES</td><td><viva:LocationNameOfficialES /></td></tr>
      </viva:foreachLocationNameOfficialESIterator>
      <viva:foreachLocationNameCurrencyENIterator>
         <tr><td>nameCurrencyEN</td><td><viva:LocationNameCurrencyEN /></td></tr>
      </viva:foreachLocationNameCurrencyENIterator>
      <viva:foreachLocationCountryAreaNotesIterator>
         <tr><td>countryAreaNotes</td><td><viva:LocationCountryAreaNotes /></td></tr>
      </viva:foreachLocationCountryAreaNotesIterator>
      <viva:foreachLocationCodeFAOTERMIterator>
         <tr><td>codeFAOTERM</td><td><viva:LocationCodeFAOTERM /></td></tr>
      </viva:foreachLocationCodeFAOTERMIterator>
      <viva:foreachLocationNameOfficialITIterator>
         <tr><td>nameOfficialIT</td><td><viva:LocationNameOfficialIT /></td></tr>
      </viva:foreachLocationNameOfficialITIterator>
      <viva:foreachLocationNameListRUIterator>
         <tr><td>nameListRU</td><td><viva:LocationNameListRU /></td></tr>
      </viva:foreachLocationNameListRUIterator>
      <viva:foreachLocationNameShortESIterator>
         <tr><td>nameShortES</td><td><viva:LocationNameShortES /></td></tr>
      </viva:foreachLocationNameShortESIterator>
      <viva:foreachLocationGDPYearIterator>
         <tr><td>GDPYear</td><td><viva:LocationGDPYear /></td></tr>
      </viva:foreachLocationGDPYearIterator>
      <viva:foreachLocationPopulationYearIterator>
         <tr><td>populationYear</td><td><viva:LocationPopulationYear /></td></tr>
      </viva:foreachLocationPopulationYearIterator>
      <viva:foreachLocationPopulationNotesIterator>
         <tr><td>populationNotes</td><td><viva:LocationPopulationNotes /></td></tr>
      </viva:foreachLocationPopulationNotesIterator>
      <viva:foreachLocationCountryAreaUnitIterator>
         <tr><td>countryAreaUnit</td><td><viva:LocationCountryAreaUnit /></td></tr>
      </viva:foreachLocationCountryAreaUnitIterator>
      <viva:foreachLocationHasMinLongitudeIterator>
         <tr><td>hasMinLongitude</td><td><viva:LocationHasMinLongitude /></td></tr>
      </viva:foreachLocationHasMinLongitudeIterator>
      <viva:foreachLocationNameCurrencyITIterator>
         <tr><td>nameCurrencyIT</td><td><viva:LocationNameCurrencyIT /></td></tr>
      </viva:foreachLocationNameCurrencyITIterator>
      <viva:foreachLocationCodeFAOSTATIterator>
         <tr><td>codeFAOSTAT</td><td><viva:LocationCodeFAOSTAT /></td></tr>
      </viva:foreachLocationCodeFAOSTATIterator>
      <viva:foreachLocationNameCurrencyARIterator>
         <tr><td>nameCurrencyAR</td><td><viva:LocationNameCurrencyAR /></td></tr>
      </viva:foreachLocationNameCurrencyARIterator>
      <viva:foreachLocationNameCurrencyESIterator>
         <tr><td>nameCurrencyES</td><td><viva:LocationNameCurrencyES /></td></tr>
      </viva:foreachLocationNameCurrencyESIterator>
      <viva:foreachLocationCodeDBPediaIDIterator>
         <tr><td>codeDBPediaID</td><td><viva:LocationCodeDBPediaID /></td></tr>
      </viva:foreachLocationCodeDBPediaIDIterator>
      <viva:foreachLocationNameListZHIterator>
         <tr><td>nameListZH</td><td><viva:LocationNameListZH /></td></tr>
      </viva:foreachLocationNameListZHIterator>
      <viva:foreachLocationNameShortENIterator>
         <tr><td>nameShortEN</td><td><viva:LocationNameShortEN /></td></tr>
      </viva:foreachLocationNameShortENIterator>
      <viva:foreachLocationNameOfficialARIterator>
         <tr><td>nameOfficialAR</td><td><viva:LocationNameOfficialAR /></td></tr>
      </viva:foreachLocationNameOfficialARIterator>
      <viva:foreachLocationHasMaxLatitudeIterator>
         <tr><td>hasMaxLatitude</td><td><viva:LocationHasMaxLatitude /></td></tr>
      </viva:foreachLocationHasMaxLatitudeIterator>
      <viva:foreachLocationNationalityFRIterator>
         <tr><td>nationalityFR</td><td><viva:LocationNationalityFR /></td></tr>
      </viva:foreachLocationNationalityFRIterator>
      <viva:foreachLocationNationalityZHIterator>
         <tr><td>nationalityZH</td><td><viva:LocationNationalityZH /></td></tr>
      </viva:foreachLocationNationalityZHIterator>
      <viva:foreachLocationGDPUnitIterator>
         <tr><td>GDPUnit</td><td><viva:LocationGDPUnit /></td></tr>
      </viva:foreachLocationGDPUnitIterator>
      <viva:foreachLocationHDINotesIterator>
         <tr><td>HDINotes</td><td><viva:LocationHDINotes /></td></tr>
      </viva:foreachLocationHDINotesIterator>
      <viva:foreachLocationLandAreaYearIterator>
         <tr><td>landAreaYear</td><td><viva:LocationLandAreaYear /></td></tr>
      </viva:foreachLocationLandAreaYearIterator>
      <viva:foreachLocationCountryAreaYearIterator>
         <tr><td>countryAreaYear</td><td><viva:LocationCountryAreaYear /></td></tr>
      </viva:foreachLocationCountryAreaYearIterator>
      <viva:foreachLocationNameShortARIterator>
         <tr><td>nameShortAR</td><td><viva:LocationNameShortAR /></td></tr>
      </viva:foreachLocationNameShortARIterator>
      <viva:foreachLocationNameOfficialENIterator>
         <tr><td>nameOfficialEN</td><td><viva:LocationNameOfficialEN /></td></tr>
      </viva:foreachLocationNameOfficialENIterator>
      <viva:foreachLocationLandAreaUnitIterator>
         <tr><td>landAreaUnit</td><td><viva:LocationLandAreaUnit /></td></tr>
      </viva:foreachLocationLandAreaUnitIterator>
      <viva:foreachLocationPopulationTotalIterator>
         <tr><td>populationTotal</td><td><viva:LocationPopulationTotal /></td></tr>
      </viva:foreachLocationPopulationTotalIterator>
      <viva:foreachLocationNameShortFRIterator>
         <tr><td>nameShortFR</td><td><viva:LocationNameShortFR /></td></tr>
      </viva:foreachLocationNameShortFRIterator>
      <viva:foreachLocationCodeISO2Iterator>
         <tr><td>codeISO2</td><td><viva:LocationCodeISO2 /></td></tr>
      </viva:foreachLocationCodeISO2Iterator>
      <viva:foreachLocationCodeGAULIterator>
         <tr><td>codeGAUL</td><td><viva:LocationCodeGAUL /></td></tr>
      </viva:foreachLocationCodeGAULIterator>
      <viva:foreachLocationHDITotalIterator>
         <tr><td>HDITotal</td><td><viva:LocationHDITotal /></td></tr>
      </viva:foreachLocationHDITotalIterator>
      <viva:foreachLocationNameCurrencyRUIterator>
         <tr><td>nameCurrencyRU</td><td><viva:LocationNameCurrencyRU /></td></tr>
      </viva:foreachLocationNameCurrencyRUIterator>
      <viva:foreachLocationCodeCurrencyIterator>
         <tr><td>codeCurrency</td><td><viva:LocationCodeCurrency /></td></tr>
      </viva:foreachLocationCodeCurrencyIterator>
      <viva:foreachLocationNameOfficialFRIterator>
         <tr><td>nameOfficialFR</td><td><viva:LocationNameOfficialFR /></td></tr>
      </viva:foreachLocationNameOfficialFRIterator>
      <viva:foreachLocationLandAreaTotalIterator>
         <tr><td>landAreaTotal</td><td><viva:LocationLandAreaTotal /></td></tr>
      </viva:foreachLocationLandAreaTotalIterator>
      <viva:foreachLocationNameListESIterator>
         <tr><td>nameListES</td><td><viva:LocationNameListES /></td></tr>
      </viva:foreachLocationNameListESIterator>
      <viva:foreachLocationNameListITIterator>
         <tr><td>nameListIT</td><td><viva:LocationNameListIT /></td></tr>
      </viva:foreachLocationNameListITIterator>
      <viva:foreachLocationCodeUNIterator>
         <tr><td>codeUN</td><td><viva:LocationCodeUN /></td></tr>
      </viva:foreachLocationCodeUNIterator>
      <viva:foreachLocationNameShortRUIterator>
         <tr><td>nameShortRU</td><td><viva:LocationNameShortRU /></td></tr>
      </viva:foreachLocationNameShortRUIterator>
      <viva:foreachLocationHDIYearIterator>
         <tr><td>HDIYear</td><td><viva:LocationHDIYear /></td></tr>
      </viva:foreachLocationHDIYearIterator>
      <viva:foreachLocationCodeUNDPIterator>
         <tr><td>codeUNDP</td><td><viva:LocationCodeUNDP /></td></tr>
      </viva:foreachLocationCodeUNDPIterator>
      <viva:foreachLocationLandAreaNotesIterator>
         <tr><td>landAreaNotes</td><td><viva:LocationLandAreaNotes /></td></tr>
      </viva:foreachLocationLandAreaNotesIterator>
      <viva:foreachLocationRankIterator>
         <tr><td>rank</td><td><viva:LocationRank /></td></tr>
      </viva:foreachLocationRankIterator>
      <viva:foreachLocationFreetextKeywordIterator>
         <tr><td>freetextKeyword</td><td><viva:LocationFreetextKeyword /></td></tr>
      </viva:foreachLocationFreetextKeywordIterator>
      <viva:foreachLocationUrlIterator>
         <tr><td>url</td><td><viva:LocationUrl /></td></tr>
      </viva:foreachLocationUrlIterator>
      <viva:foreachLocationDescriptionIterator>
         <tr><td>description</td><td><viva:LocationDescription /></td></tr>
      </viva:foreachLocationDescriptionIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <viva:foreachLocationBFO_0000051Iterator>
         <tr><td>BFO_0000051</td><td><a href="../<viva:LocationBFO_0000051Type/>/<viva:LocationBFO_0000051Type/>.jsp?uri=<viva:LocationBFO_0000051/>"><viva:LocationBFO_0000051 /></a></td></tr>
      </viva:foreachLocationBFO_0000051Iterator>
      <viva:foreachLocationRO_0001015Iterator>
         <tr><td>RO_0001015</td><td><a href="../<viva:LocationRO_0001015Type/>/<viva:LocationRO_0001015Type/>.jsp?uri=<viva:LocationRO_0001015/>"><viva:LocationRO_0001015 /></a></td></tr>
      </viva:foreachLocationRO_0001015Iterator>
      <viva:foreachLocationBFO_0000050Iterator>
         <tr><td>BFO_0000050</td><td><a href="../<viva:LocationBFO_0000050Type/>/<viva:LocationBFO_0000050Type/>.jsp?uri=<viva:LocationBFO_0000050/>"><viva:LocationBFO_0000050 /></a></td></tr>
      </viva:foreachLocationBFO_0000050Iterator>
      <viva:foreachLocationHasAddressIterator>
         <tr><td>hasAddress</td><td><a href="../<viva:LocationHasAddressType/>/<viva:LocationHasAddressType/>.jsp?uri=<viva:LocationHasAddress/>"><viva:LocationHasAddress /></a></td></tr>
      </viva:foreachLocationHasAddressIterator>
      <viva:foreachLocationHasTelephoneIterator>
         <tr><td>hasTelephone</td><td><a href="../<viva:LocationHasTelephoneType/>/<viva:LocationHasTelephoneType/>.jsp?uri=<viva:LocationHasTelephone/>"><viva:LocationHasTelephone /></a></td></tr>
      </viva:foreachLocationHasTelephoneIterator>
      <viva:foreachLocationDateTimeValueIterator>
         <tr><td>dateTimeValue</td><td><a href="../<viva:LocationDateTimeValueType/>/<viva:LocationDateTimeValueType/>.jsp?uri=<viva:LocationDateTimeValue/>"><viva:LocationDateTimeValue /></a></td></tr>
      </viva:foreachLocationDateTimeValueIterator>
      <viva:foreachLocationRO_0001025Iterator>
         <tr><td>RO_0001025</td><td><a href="../<viva:LocationRO_0001025Type/>/<viva:LocationRO_0001025Type/>.jsp?uri=<viva:LocationRO_0001025/>"><viva:LocationRO_0001025 /></a></td></tr>
      </viva:foreachLocationRO_0001025Iterator>
      <viva:foreachLocationHasTitleIterator>
         <tr><td>hasTitle</td><td><a href="../<viva:LocationHasTitleType/>/<viva:LocationHasTitleType/>.jsp?uri=<viva:LocationHasTitle/>"><viva:LocationHasTitle /></a></td></tr>
      </viva:foreachLocationHasTitleIterator>
      <viva:foreachLocationRO_0002353Iterator>
         <tr><td>RO_0002353</td><td><a href="../<viva:LocationRO_0002353Type/>/<viva:LocationRO_0002353Type/>.jsp?uri=<viva:LocationRO_0002353/>"><viva:LocationRO_0002353 /></a></td></tr>
      </viva:foreachLocationRO_0002353Iterator>
      <viva:foreachLocationHasResearchAreaIterator>
         <tr><td>hasResearchArea</td><td><a href="../<viva:LocationHasResearchAreaType/>/<viva:LocationHasResearchAreaType/>.jsp?uri=<viva:LocationHasResearchArea/>"><viva:LocationHasResearchArea /></a></td></tr>
      </viva:foreachLocationHasResearchAreaIterator>
      <viva:foreachLocationGeographicFocusIterator>
         <tr><td>geographicFocus</td><td><a href="../<viva:LocationGeographicFocusType/>/<viva:LocationGeographicFocusType/>.jsp?uri=<viva:LocationGeographicFocus/>"><viva:LocationGeographicFocus /></a></td></tr>
      </viva:foreachLocationGeographicFocusIterator>
      <viva:foreachLocationHasPublicationVenueIterator>
         <tr><td>hasPublicationVenue</td><td><a href="../<viva:LocationHasPublicationVenueType/>/<viva:LocationHasPublicationVenueType/>.jsp?uri=<viva:LocationHasPublicationVenue/>"><viva:LocationHasPublicationVenue /></a></td></tr>
      </viva:foreachLocationHasPublicationVenueIterator>
      <viva:foreachLocationHasNameIterator>
         <tr><td>hasName</td><td><a href="../<viva:LocationHasNameType/>/<viva:LocationHasNameType/>.jsp?uri=<viva:LocationHasName/>"><viva:LocationHasName /></a></td></tr>
      </viva:foreachLocationHasNameIterator>
      <viva:foreachLocationPublicationVenueForIterator>
         <tr><td>publicationVenueFor</td><td><a href="../<viva:LocationPublicationVenueForType/>/<viva:LocationPublicationVenueForType/>.jsp?uri=<viva:LocationPublicationVenueFor/>"><viva:LocationPublicationVenueFor /></a></td></tr>
      </viva:foreachLocationPublicationVenueForIterator>
      <viva:foreachLocationARG_2000028Iterator>
         <tr><td>ARG_2000028</td><td><a href="../<viva:LocationARG_2000028Type/>/<viva:LocationARG_2000028Type/>.jsp?uri=<viva:LocationARG_2000028/>"><viva:LocationARG_2000028 /></a></td></tr>
      </viva:foreachLocationARG_2000028Iterator>
      <viva:foreachLocationPublisherIterator>
         <tr><td>publisher</td><td><a href="../<viva:LocationPublisherType/>/<viva:LocationPublisherType/>.jsp?uri=<viva:LocationPublisher/>"><viva:LocationPublisher /></a></td></tr>
      </viva:foreachLocationPublisherIterator>
      <viva:foreachLocationRelatedByIterator>
         <tr><td>relatedBy</td><td><a href="../<viva:LocationRelatedByType/>/<viva:LocationRelatedByType/>.jsp?uri=<viva:LocationRelatedBy/>"><viva:LocationRelatedBy /></a></td></tr>
      </viva:foreachLocationRelatedByIterator>
      <viva:foreachLocationHasSubjectAreaIterator>
         <tr><td>hasSubjectArea</td><td><a href="../<viva:LocationHasSubjectAreaType/>/<viva:LocationHasSubjectAreaType/>.jsp?uri=<viva:LocationHasSubjectArea/>"><viva:LocationHasSubjectArea /></a></td></tr>
      </viva:foreachLocationHasSubjectAreaIterator>
      <viva:foreachLocationDateTimeIntervalIterator>
         <tr><td>dateTimeInterval</td><td><a href="../<viva:LocationDateTimeIntervalType/>/<viva:LocationDateTimeIntervalType/>.jsp?uri=<viva:LocationDateTimeInterval/>"><viva:LocationDateTimeInterval /></a></td></tr>
      </viva:foreachLocationDateTimeIntervalIterator>
      <viva:foreachLocationHasEmailIterator>
         <tr><td>hasEmail</td><td><a href="../<viva:LocationHasEmailType/>/<viva:LocationHasEmailType/>.jsp?uri=<viva:LocationHasEmail/>"><viva:LocationHasEmail /></a></td></tr>
      </viva:foreachLocationHasEmailIterator>
      <viva:foreachLocationRelatesIterator>
         <tr><td>relates</td><td><a href="../<viva:LocationRelatesType/>/<viva:LocationRelatesType/>.jsp?uri=<viva:LocationRelates/>"><viva:LocationRelates /></a></td></tr>
      </viva:foreachLocationRelatesIterator>
      <viva:foreachLocationHasURLIterator>
         <tr><td>hasURL</td><td><a href="../<viva:LocationHasURLType/>/<viva:LocationHasURLType/>.jsp?uri=<viva:LocationHasURL/>"><viva:LocationHasURL /></a></td></tr>
      </viva:foreachLocationHasURLIterator>
      <viva:foreachLocationRO_0000053Iterator>
         <tr><td>RO_0000053</td><td><a href="../<viva:LocationRO_0000053Type/>/<viva:LocationRO_0000053Type/>.jsp?uri=<viva:LocationRO_0000053/>"><viva:LocationRO_0000053 /></a></td></tr>
      </viva:foreachLocationRO_0000053Iterator>
      <viva:foreachLocationRO_0002234Iterator>
         <tr><td>RO_0002234</td><td><a href="../<viva:LocationRO_0002234Type/>/<viva:LocationRO_0002234Type/>.jsp?uri=<viva:LocationRO_0002234/>"><viva:LocationRO_0002234 /></a></td></tr>
      </viva:foreachLocationRO_0002234Iterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </viva:Location>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>


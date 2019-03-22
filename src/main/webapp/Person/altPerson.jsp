<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="viva" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="sparql" uri="http://slis.uiowa.edu/SPARQL"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="en-US">
<jsp:include page="../head.jsp" flush="true">
	<jsp:param name="title" value="viva Person" />
</jsp:include>
<style type="text/css" media="all">
@import "../resources/layout.css";

@import "../resources/ajaxtabs.css";
</style>

<body class="home page-template-default page page-id-6 CD2H">
	<jsp:include page="../header.jsp" flush="true" />

	<div class="container pl-0 pr-0">
		<br /> <br />
		<div class="container-fluid">
			<script type="text/javascript" src="/viva/resources/ajaxtabs.js">
				
			</script>

			<h1>Person</h1>
			<p>
				<a href="Person.jsp?uri=${param.uri}">generated view</a>
			</p>
			<viva:Person subjectURI="${param.uri}">
				<div id="biodiv"
					style="border-radius: 5px; border: 1px solid gray; width: 90%; margin-bottom: 1em; padding: 10px">

					<jsp:include page="altPersonImage.jsp" />

					<viva:foreachPersonARG_2000028Iterator>
						<c:set var="arg28">
							<viva:PersonARG_2000028 />
						</c:set>
						<c:if test="${!fn:contains(arg28,'vcard')}">
							<viva:Individual subjectURI="${arg28}">
								<viva:foreachIndividualHasNameIterator>
									<viva:Name>
										<h3>
											<viva:foreachNameGivenNameIterator>
												<viva:NameGivenName />
											</viva:foreachNameGivenNameIterator>
											<viva:foreachNameFamilyNameIterator>
												<viva:NameFamilyName />
											</viva:foreachNameFamilyNameIterator>
										</h3>
									</viva:Name>
								</viva:foreachIndividualHasNameIterator>
								<viva:foreachIndividualHasEmailIterator classFilter="Email">
									<p>
										Email:
										<viva:Email>
											<viva:foreachEmailEmailIterator>
												<a href="mailto:<viva:EmailEmail/>"><viva:EmailEmail /></a>
											</viva:foreachEmailEmailIterator>
										</viva:Email>
								</viva:foreachIndividualHasEmailIterator>
							</viva:Individual>
						</c:if>
					</viva:foreachPersonARG_2000028Iterator>
				</div>
			</viva:Person>

			<jsp:include page="altPersonGitHubProbe.jsp" />
			<ul id="maintabs" class="shadetabs">
				<li><a href="person_tab0.jsp?uri=${param.uri}"
					rel="tabcontainer">Identity</a></li>
				<li><a href="person_tab1.jsp?uri=${param.uri}"
					rel="tabcontainer" id="favorite" class="selected">Overview</a></li>
				<li><a href="person_tab2.jsp?uri=${param.uri}"
					rel="tabcontainer">Publications</a></li>
				<li><a href="person_tab3.jsp?uri=${param.uri}"
					rel="tabcontainer">Tabbed Publications</a></li>
				<li><a href="person_tab4.jsp?uri=${param.uri}"
					rel="tabcontainer">Positions</a></li>
				<c:if test="${hasGitHubLogin}">
					<li><a href="person_tab5.jsp?uri=${param.uri}"
						rel="tabcontainer">GitHub Repositories</a></li>
				</c:if>
			</ul>

			<div id="tabcontainer"
				style="border-radius: 5px; border: 1px solid gray; width: 90%; margin-bottom: 1em; padding: 10px" />

			<script type="text/javascript">
				var tabs = new ddajaxtabs("maintabs", "tabcontainer")
				tabs.setpersist(true)
				tabs.setselectedClassTarget("link") //"link" or "linkparent"
				tabs.init()

				tabs.onajaxpageload = function(pageurl) {
					if (pageurl.indexOf("person_tab3.jsp?uri=${param.uri}") != -1) {
						subs = new ddajaxtabs("subtabs", "subtabcontainer")
						subs.setpersist(true)
						subs.setselectedClassTarget("link") //"link" or "linkparent"
						subs.init()
					}
				}
			</script>
		</div>
		<jsp:include page="../footer.jsp" flush="true" />
	</div>
</body>

</html>


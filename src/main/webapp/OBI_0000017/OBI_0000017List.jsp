<%@ page language="java" contentType="text/html; charset=US-ASCII" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vivo" uri="http://slis.uiowa.edu/VIVOISF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>OBI_0000017 List - http://purl.obolibrary.org/obo/OBI_0000017</title>
<style type="text/css" media="all">    @import "/viva/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
<ul>
<vivo:foreachOBI_0000017>
   <vivo:OBI_0000017>
      <li><a href="OBI_0000017.jsp?uri=<vivo:OBI_0000017SubjectURI/>"><vivo:OBI_0000017Label/></a>
   </vivo:OBI_0000017>
</vivo:foreachOBI_0000017>
</ul>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

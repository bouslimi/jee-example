<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<!-- Recommended method (using EL with HTML) -->
	<h3>${ lang == "fr" ? "Bienvenue sur la page Contactez-nous !" : "Welcome to Contact us page!" }</h3>

	<!-- Not recommended method (using Java with HTML) -->
	<%
	String lang = (String) request.getAttribute("lang");
	if (lang.equalsIgnoreCase("fr"))
		out.println("<h3>Bienvenue sur la page Contactez-nous !</h3>");
	else
		out.println("<h3>Welcome to Contact us page!</h3>");
	%>

</body>
</html>

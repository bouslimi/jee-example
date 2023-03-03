<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<!-- Recommended method (using EL with HTML) -->
	<h3>${ lang == "fr" ? "Votre profil" : "Your profile" }</h3>

	<%
	/*
	// Not recommended method (using Java with HTML)
	String lang = (String) request.getAttribute("lang");
	if (lang.equalsIgnoreCase("fr"))
		out.println("<h3>Votre profil</h3>");
	else
		out.println("<h3>Your profile</h3>");
	*/
	%>

	<div style="margin-top: 10px;">
		<span style="font-weight: bold;">Full Name:</span> <span>${ person.fullName }</span>
	</div>
	<div style="margin-top: 10px;">
		<span style="font-weight: bold;">Age:</span> <span>${ person.age }</span>
	</div>
	<div style="margin-top: 10px;">
		<span style="font-weight: bold;">Gender:</span> <span>${ person.gender }</span>
	</div>

</body>
</html>

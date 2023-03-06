<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<style>
table {
	border-collapse: collapse;
}

th, td {
	border: 1px solid #000000;
	padding: 5px;
}

.mt-5 {
	margin-top: 5px;
}
</style>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<!-- Recommended method (using EL or JSTL) -->
	<h3>${ lang == "fr" ? "Ajouter un nouveau utilisateur" : "Add new user" }</h3>

	<%
	/*
	// Not recommended method (using Java with HTML)
	String lang = (String) request.getAttribute("lang");
	if (lang.equalsIgnoreCase("fr"))
		out.println("<h3>Ajouter un nouveau utilisateur</h3>");
	else
		out.println("<h3>Add new user</h3>");
	*/
	%>

	<form method="post" action="users">
		<div>
			<label for="name">Name: </label> <input type="text" name="name" required />
		</div>
		<div class="mt-5">
			<label for="age">Age: </label> <input type="number" name="age" min="0" max="200" required />
		</div>
		<div class="mt-5">
			<label for="gender">Gender: </label> <input type="text" name="gender" required />
		</div>
		<input type="submit" class="mt-5" />
	</form>


	<h3>${ lang == "fr" ? "Liste des utilisateurs" : "Users list" }</h3>

	<table>
		<tr>
			<th>id</th>
			<th>Name</th>
			<th>Age</th>
			<th>Gender</th>
		</tr>
		<c:forEach var="user" items="${ users }">
			<tr>
				<td>${ user.id }</td>
				<td>${ user.name }</td>
				<td>${ user.age }</td>
				<td>${ user.gender }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>

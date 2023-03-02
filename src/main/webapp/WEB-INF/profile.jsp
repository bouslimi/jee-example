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

	<h2>Profile</h2>
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

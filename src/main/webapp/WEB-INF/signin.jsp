<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<%@ include file="menu.jsp"%>

	<form method="post" action="signin">
		<div>
			<label for="login">Login: </label> <input type="text" name="login"
				id="login" />
		</div>
		<br>
		<div>
			<label for="password">Password: </label> <input type="password"
				name="password" id="password" />
		</div>
		<br> <input type="submit" />
	</form>

	<br>
	<span>${ areCredentialsOK ? "" : "Wrong login and/or password!" }</span>

</body>
</html>

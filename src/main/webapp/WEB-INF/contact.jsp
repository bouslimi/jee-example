<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>
<style type="text/css">
	div {
		margin-top: 10px;
	}
</style>
</head>
<body>

	<%@ include file="menu.jsp"%>

	<h3>Contact Us</h3>

	<form method="post" action="contact">
		<div>
			<label for="name">Your name: </label> <input type="text" name="name"
				id="name" required />
		</div>
		<div>
			<label for="email">Your email: </label> <input type="email"
				name="email" id="email" required />
		</div>
		<div>
			<label for="subject">Subject: </label> <input type="text"
				name="subject" id="subject" required />
		</div>
		<div>
			<label for="message">Message: </label>
			<textarea name="message" id="message"></textarea>
		</div>

		<input type="submit" />
	</form>

	<span>${ deliveryMsg }</span>

</body>
</html>

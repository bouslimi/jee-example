package com.trigger_soft.forms;

import jakarta.servlet.http.HttpServletRequest;

public class SigninForm {

	public String checkCredentials(HttpServletRequest request) {
		String login = request.getParameter("login");
		String password = request.getParameter("password");

		if (login.equals(password)) {
			return "OK";
		} else {
			return "Wrong login and/or password!";
		}
	}

}

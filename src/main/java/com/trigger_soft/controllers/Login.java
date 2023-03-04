package com.trigger_soft.controllers;

import jakarta.servlet.http.HttpServletRequest;

public class Login {

	public boolean checkCredentials(HttpServletRequest request) {
		String login = request.getParameter("login");
		String password = request.getParameter("password");

		if (login.equals(password)) {
			return true;
		} else {
			return false;
		}
	}

}

package com.trigger_soft.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.trigger_soft.beans.User;
import com.trigger_soft.dao.DaoFactory;
import com.trigger_soft.dao.UserDao;

public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init() {
		DaoFactory daoFactory = DaoFactory.getInstance();
		userDao = daoFactory.getUserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lang = request.getParameter("lang");
		request.setAttribute("lang", lang);

		request.setAttribute("users", userDao.getAllUsers());

		this.getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = new User();
		user.setName(request.getParameter("name"));
		user.setAge(Integer.parseInt(request.getParameter("age")));
		user.setGender(request.getParameter("gender"));
		userDao.addUser(user);

		request.setAttribute("users", userDao.getAllUsers());
		this.getServletContext().getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
	}

}

package com.trigger_soft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.trigger_soft.beans.User;

public class UserDaoImpl implements UserDao {

	private DaoFactory daoFactory;

	public UserDaoImpl(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}

	@Override
	public Optional<User> getUser(long id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}

	@Override
	public List<User> getAllUsers() {
		List<User> usersList = new ArrayList<User>();
		Connection connection = null;
		Statement statement = null;
		ResultSet result = null;

		try {
			connection = daoFactory.getConnection();
			statement = connection.createStatement();
			result = statement.executeQuery("SELECT id, name, age, gender FROM users;");
			while (result.next()) {
				User user = new User();
				user.setId(result.getLong("id"));
				user.setName(result.getString("name"));
				user.setAge(result.getInt("age"));
				user.setGender(result.getString("gender"));

				usersList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return usersList;
	}

	@Override
	public void addUser(User user) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		try {
			connection = daoFactory.getConnection();
			preparedStatement = connection.prepareStatement("INSERT INTO users(name, age, gender) VALUES(?, ?, ?);");
			preparedStatement.setString(1, user.getName());
			preparedStatement.setInt(2, user.getAge());
			preparedStatement.setString(3, user.getGender());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub

	}

}

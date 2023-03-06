package com.trigger_soft.dao;

import java.util.List;
import java.util.Optional;

import com.trigger_soft.beans.User;

public interface UserDao {

	Optional<User> getUser(long id);

	List<User> getAllUsers();

	void addUser(User user);

	void updateUser(User user);

	void deleteUser(User user);

}

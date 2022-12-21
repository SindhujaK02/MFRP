package com.springmvcorm.services;

import java.util.List;

import com.springmvcorm.model.User;

public interface UserService {

	public int create(User user);
	List<User> userList();
}

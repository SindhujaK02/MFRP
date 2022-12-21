package com.springmvcorm.services;

import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvcorm.dao.UserDao;
import com.springmvcorm.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	@Transactional
	public int create(User user) {
		// TODO Auto-generated method stub
		return userDao.createUser(user);
	}

	@Override
	public List<User> userList() {
		// TODO Auto-generated method stub
		List<User> allUsers = userDao.getAllUsers();
		Collections.sort(allUsers);
		return allUsers;
	}



	
}

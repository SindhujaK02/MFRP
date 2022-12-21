package com.springmvcorm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.springmvcorm.model.User;


public interface UserDao {

	int createUser(User user);
	
	List<User> getAllUsers();

	
}

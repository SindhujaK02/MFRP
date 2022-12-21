package com.springmvcorm.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.springmvcorm.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public int createUser(User user) {
		int save = (int) hibernateTemplate.save(user);
		return save;
	}

	@Override
	public List<User> getAllUsers() {
		return hibernateTemplate.loadAll(User.class);
	}

	

	
	

}

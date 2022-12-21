package com.hibernate.ORM_Hibernate.dao;

import java.util.List;

import com.hibernate.ORM_Hibernate.model.Product;

public interface ProductDAO {

	void create(Product product );
	void update(Product product);
	void get(int id);
	List<Product> getAll();
	void delete(Product product);
}

package com.hibernate.ORM_Hibernate.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.hibernate.ORM_Hibernate.model.Product;

//DAO is data access object
@Component("productimp")
@Service
public class ProductDAOimpl implements ProductDAO {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Override
	@Transactional
	public void create(Product product) {

		int result = (int) hibernateTemplate.save(product);
		System.out.println(result);
	}

	@Override
	@Transactional
	public void update(Product product) {
		hibernateTemplate.update(product);
	}

	@Override
	@Transactional
	public void get(int id) {
		Product product = hibernateTemplate.get(Product.class, id);
		System.out.println(product);
	}

	@Override
	@Transactional
	public List<Product> getAll() {
		List<Product> products = hibernateTemplate.loadAll(Product.class);
		return products;
	}

	@Override
	@Transactional
	public void delete(Product product) {
		hibernateTemplate.delete(product);
		System.out.println(product+ " is deleted");
	}

}

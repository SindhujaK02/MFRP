package com.hibernate.ORM_Hibernate;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hibernate.ORM_Hibernate.dao.ProductDAO;
import com.hibernate.ORM_Hibernate.dao.ProductDAOimpl;
import com.hibernate.ORM_Hibernate.model.Product;

public class Test {

	public static void main(String[] args) {

		ApplicationContext context=new ClassPathXmlApplicationContext("jdbc.xml");
		ProductDAO bean = (ProductDAO) context.getBean("productimp");
		Product product=new Product();
		product.setId(2);
		product.setName("sindhu");
		product.setPrice(100);
		product.setDesc("Toy purchase");
		
	//	bean.create(product);
		
//		bean.update(product);
//		System.out.println("Updated with price as "+product.getPrice());
		
		bean.delete(product);
		
	//	bean.get(1);
		
//		List<Product> all = bean.getAll();
//		System.out.println(all);
		
	}

}

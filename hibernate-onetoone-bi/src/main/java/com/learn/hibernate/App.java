package com.learn.hibernate;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.learn.hibernate.model.Instructor;
import com.learn.hibernate.model.InstructorDetail;



/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		
		//create session factory
		System.out.println("Creating session factory!");
		Configuration configuration = new Configuration().configure();
		SessionFactory factory = configuration.buildSessionFactory();
		
		//create session
		System.out.println("Creating session!");
		Session session = factory.openSession();
		
		
		
		//associate object
		System.out.println("Associating objects!");
		InstructorDetail tempinstruct=session.get(InstructorDetail.class,100 );
		System.out.println(tempinstruct);
		System.out.println(tempinstruct.getInstructor());
		
		//start transaction
		System.out.println("Starting trasaction!");
		session.beginTransaction();
		
		//delete object
		session.delete(tempinstruct);
		
		//save transaction
		System.out.println("Saving transaction!");
		session.getTransaction().commit();
		
	}
}

package com.learn.hibernate;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.learn.hibernate.model.Course;
import com.learn.hibernate.model.Instructor;
import com.learn.hibernate.model.InstructorDetail;



/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		
		//create session factory
		Configuration configuration = new Configuration().configure();
		SessionFactory factory = configuration.buildSessionFactory();
		
		//create session
		Session session = factory.openSession();
		
		//252504
		//create object
		Instructor instructor=new Instructor("kayal", "s", "kayal@gmail.com");
		InstructorDetail instructor_detail=new InstructorDetail("kayal.youtube.com", "searching");
		Course course1=new Course("java");
		Course course2=new Course("C");
		instructor.add(course1);
		instructor.add(course2);
		
		//saving object
		instructor.setInstructorDetial(instructor_detail);
		
		//start transaction
		session.beginTransaction();
		
		//saving
		session.save(instructor);
		
		
		//save transaction
		session.getTransaction().commit();
		
	}
}

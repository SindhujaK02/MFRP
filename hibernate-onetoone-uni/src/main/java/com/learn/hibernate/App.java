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
		
		//create object
		System.out.println("Creating objects!");
		Instructor instructor=new Instructor("yali", "s", "mayal@gmail.com");
		InstructorDetail instructor_detail=new InstructorDetail("sdsd.youtube.com", "parking");
		
		//associate object
		System.out.println("Associating objects!");
		instructor.setInstructorDetial(instructor_detail);
		
		//start transaction
		System.out.println("Starting trasaction!");
		session.beginTransaction();
		
		//saving the objects
		//note: saving one object, saves other object too, due to cascading
		session.save(instructor);
		
	//	but saving insturtor_detail doesn't save data in instructr bcoz it is unidirection here
		//deleting object
		//1.retrieve values based on id to be deleted
		Instructor instructor2=session.get(Instructor.class, 1);
		//2.deleting id
		if(instructor2!=null)
			session.delete(instructor2);
		
		//save transaction
		System.out.println("Saving transaction!");
		session.getTransaction().commit();
		
	}
}

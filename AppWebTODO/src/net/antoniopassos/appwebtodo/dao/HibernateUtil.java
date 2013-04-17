package net.antoniopassos.appwebtodo.dao;

import net.antoniopassos.appwebtodo.modelo.Todo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class HibernateUtil {
	private static SessionFactory factory;
	static {
		/*
		 * AnnotationConfiguration cfg = new AnnotationConfiguration();
		 * cfg.addAnnotatedClass(Produto.class);
		 */
		factory = new AnnotationConfiguration().configure()
				.addAnnotatedClass(Todo.class).buildSessionFactory();
	}

	public Session getSession() {
		return factory.openSession();
	}
}

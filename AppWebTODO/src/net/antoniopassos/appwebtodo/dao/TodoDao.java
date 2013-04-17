package net.antoniopassos.appwebtodo.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;

import net.antoniopassos.appwebtodo.modelo.Todo;

public class TodoDao {
	private Session session;
	
	public TodoDao(){
		this.session = new HibernateUtil().getSession();
	}
	public TodoDao(Session session) {
		this.session = session;
	}
	public void adiciona(Todo todo) {
		this.session.save(todo);
	}
	
	public void altera(Todo todo){
		this.session.update(todo);
	}
	
	public List<Todo> getLista() throws SQLException{
		return this.session.createCriteria(Todo.class).list();
	}
}

package net.antoniopassos.appwebtodo.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import net.antoniopassos.appwebtodo.dao.HibernateUtil;
import net.antoniopassos.appwebtodo.dao.TodoDao;
import net.antoniopassos.appwebtodo.modelo.Todo;


public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processaRequisicao(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.processaRequisicao(request, response);
	}
	
	private void processaRequisicao(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String tarefa = request.getParameter("tarefa");
		String prioridade = request.getParameter("prioridade");
		String prazo = request.getParameter("prazo");
		
		Todo todo = new Todo();
		todo.setTarefa(tarefa);
		todo.setPrioridade(prioridade);
		todo.setPrazo(prazo);
	
		Session session = new HibernateUtil().getSession();
		TodoDao dao = new TodoDao(session);
		session.beginTransaction();
		dao.adiciona(todo);
		session.getTransaction().commit();
		session.close();
		
		request.setAttribute("TodoBean", todo);
		
		RequestDispatcher view = request.getRequestDispatcher("sucesso.jsp");
		view.forward(request, response);
	}
}

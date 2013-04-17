<%@page import="java.util.List"%>
<%@page import="net.antoniopassos.appwebtodo.modelo.Todo"%>
<%@page import="net.antoniopassos.appwebtodo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAWJ - Lista de Tarefas</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp" />
	<h1>DAWJ - Lista de Tarefas</h1>
	<table>
		<tr>
			<td align="center"><h2>Tarefa</h2></td>
			<td><h2>Prioridade</h2></td>
			<td><h2>Prazo</h2></td>
		</tr>
	<%
		
		TodoDao dao = new TodoDao();
		List<Todo> todos = dao.getLista();

		for (Todo todo : todos) {
	%>
		<tr>
			<td><%=todo.getTarefa()%></td>
			<td align="center"><%=todo.getPrioridade()%></td>
			<td align="center"><%=todo.getPrazo()%></td>
		</tr>
	<%
		}
	%>
	</table>
	<p>
		<jsp:include page="rodape.jsp" />
	</p>
</body>
</html>
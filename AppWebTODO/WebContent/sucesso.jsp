<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAWJ - AppWebTODO</title>
</head>
<body>
	<%
		String formato = "dd/MM/yyyy - hh:mm";
		SimpleDateFormat sdf = new SimpleDateFormat(formato);
	%>
	<jsp:include page="cabecalho.jsp" />
	<jsp:useBean id="TodoBean"
		class="net.antoniopassos.appwebtodo.modelo.Todo" scope="request" />
	<h3>Tarefa gravada com sucesso!!!</h3>
	<table border="1">
		<tr>
			<td><b>Tarefa</b></td>
			<td><jsp:getProperty name="TodoBean" property="tarefa" /></td>
		</tr>
		<tr>
			<td><b>Prioridade</b></td>
			<td><jsp:getProperty name="TodoBean" property="prioridade" /></td>
		</tr>
		<tr>
			<td><b>Duracao</b></td>
			<td><jsp:getProperty name="TodoBean" property="prazo" /></td>
		</tr>
		<tr>
			<td><b>Data/Hora da gravacao:</b></td>
			<td><%=sdf.format(new Date())%></td>
		</tr>
	</table>
	<br />
	<form action="index.jsp">
		<input type="submit" value="Gravar nova tarefa" />
	</form>
	<br />
	<jsp:include page="rodape.jsp" />
</body>
</html>
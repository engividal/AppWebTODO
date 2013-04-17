<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAWJ - AppWebTODO</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp" />
	<fieldset style="width: 380px">
		<legend>Dados da tarefa</legend>
		<form action="ServletController" method="post">
			<table>
				<tr>
					<td>Tarefa</td>
					<td><input type="text" name="tarefa" /></td>
				</tr>
				<tr>
					<td>Prioridade</td>
					<td><select name="prioridade">
							<option value="Baixa" selected>Baixa</option>
							<option value="Média">Média</option>
							<option value="Alta">Alta</option>
					</select></td>
				</tr>
				<tr>
					<td>Prazo</td>
					<td><input type="text" name="prazo" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Gravar" /> <input
						type="reset" value="Limpar" /></td>
				</tr>
			</table>
		</form>
	</fieldset>
	
	<h1><a href="http://localhost:8080/AppWebTODO/listarTarefas.jsp">Lista de Tarefas</a></h1>
	
	<p>
		<jsp:include page="rodape.jsp" />
	</p>
	
</body>
</html>
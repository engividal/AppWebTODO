<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DAWJ - AppWebTODO</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp" />
	<h3>Exceção Java: java.io.IOException</h3>
	<p>Ops! Ao tentar gravar a tarefa, foi lançada a seguinte exceção
		Java:</p>
	<p><%=exception.getMessage()%></p>
	<jsp:include page="rodape.jsp" />
</body>
</html>
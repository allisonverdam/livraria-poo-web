<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.dominio.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação de Alteracao de Cliente</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>
</head>
<body>
<a href="autentica">Voltar</a>

<p>A alteração foi feita</p>
<jsp:useBean id="cliente" class="modelo.dominio.Cliente" scope="request"></jsp:useBean>
	<table>
		<tr>
			<td class="tituloCampo">ID:</td>
			<td><%=cliente.getId()%></td>
		</tr>
		<tr>
			<td class="tituloCampo">Login:</td>
			<td><%=cliente.getLogin()%></td>
		</tr>
		
		<tr>
			<td class="tituloCampo">Nome:</td>
			<td><%=cliente.getNome()%></td>
		</tr>
	</table>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









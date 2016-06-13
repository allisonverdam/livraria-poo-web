<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.dominio.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação do Cadastro de Gerente</title>

</head>
<body>
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>

	<jsp:useBean id="gerente" class="modelo.dominio.Gerente" scope="request"></jsp:useBean>
	<table>
<tr>
			<td>Nome:</td>
			<td><%=gerente.getNome()%></td>
		</tr>
		<tr>
			<td>Login:</td>
			<td><%=gerente.getLogin()%></td>
		</tr>
	</table>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









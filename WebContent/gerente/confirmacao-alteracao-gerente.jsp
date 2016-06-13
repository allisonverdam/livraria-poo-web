<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.dominio.Gerente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação de Alteracao de Gerente</title>

</head>
<body>
<a href="exibirCadastroGerentes">Voltar para o cadastro de Gerentes</a>
<a href="exibirPainelAdmin">Voltar a Página de Administração</a>

<p>A alteração foi feita</p>
<jsp:useBean id="gerente" class="modelo.dominio.Gerente" scope="request"></jsp:useBean>
	<table>
		<tr>
			<td>Login:</td>
			<td><%=gerente.getLogin()%></td>
		</tr>
		<tr>
			<td>Nome:</td>
			<td><%=gerente.getNome()%></td>
		</tr>
	</table>
	
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









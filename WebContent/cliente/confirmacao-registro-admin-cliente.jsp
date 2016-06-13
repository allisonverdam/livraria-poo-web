<%@page import="modelo.dominio.Cliente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação de Registro</title>

</head>
<body>
<jsp:useBean id="cliente" class="modelo.dominio.Cliente" scope="request"></jsp:useBean>
	<table>
		<tr>
			<td>Nome:</td>
			<td><%=cliente.getNome()%></td>
		</tr>
	</table>
	<p>Seja Bem-Vindo <%=cliente.getNome()%>.</p>
	<br>
	<br>
	<a>Exibir Catalogo</a>
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>
	<br>
	<br>
</body>
</html>









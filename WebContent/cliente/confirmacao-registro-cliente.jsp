<%@page import="modelo.dominio.Cliente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirma��o de Registro</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>
</head>
<body>
<jsp:useBean id="cliente" class="modelo.dominio.Cliente" scope="request"></jsp:useBean>
	<table>
		<tr>
			<td class="tituloCampo">Nome:</td>
			<td><%=cliente.getNome()%></td>
		</tr>
	</table>
	<p class="tituloCampo">Seja Bem-Vindo <%=cliente.getNome()%>.</p>
	<br>
	<a href="exibirCatalogo">Exibir Catalogo</a>
	<a href="logout">Sair</a>
</body>
</html>









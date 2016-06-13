<%@page import="modelo.dominio.Gerente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação de Registro</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>
</head>
<body>
<jsp:useBean id="gerente" class="modelo.dominio.Gerente" scope="request"></jsp:useBean>
	<table>
		<tr>
			<td class="tituloCampo">Nome:</td>
			<td><%=gerente.getNome()%></td>
		</tr>
	</table>
	<p class="tituloCampo">Seja Bem-Vindo <%=gerente.getNome()%>.</p>
	<br>
	<br>
	<a href="exibirPainelAdmin">Menu</a>
	<a href="logout">Sair</a>
</body>
</html>









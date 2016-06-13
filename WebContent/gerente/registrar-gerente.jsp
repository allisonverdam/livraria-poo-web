<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrar Cliente</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>

</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<h3>Cadastro de Gerentes</h3>
	Op��es: <a href="exibirCadastroGerentes">Voltar</a>

	<br>
	<br>
	<form action="salvarGerente" method="post" onsubmit="return validar()">
		<table>
			<tr>
				<td class="tituloCampo">Login:</td>
				<td><input type="text" name="login" size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Nome:</td>
				<td><input type="text" name="nome" size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Senha:</td>
				<td><input type="password" name="senha" size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Senha:</td>
				<td><input type="password" name="senhaConf" size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Enviar"></td>
			</tr>
		</table>
	</form>
</body>
</html>








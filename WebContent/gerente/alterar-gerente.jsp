<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alteração em Gerente</title>

<script type="text/javascript">
function validar()
{
	var f = document.forms[0];
	if (f.nome.value == '')
	{
		alert('O campo nome não foi preenchido.');
		f.nome.focus();
		return false;
	}
	return true;
}
</script>
<jsp:useBean id="gerente" class="modelo.dominio.Gerente" scope="request"></jsp:useBean>
</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<form action="alterarGerente" method="post" onsubmit="return validar()">
		<table>
			<tr>
				<td>Id:</td>
				<td><input type="text" name="id" value='<jsp:getProperty property="id" name="gerente"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td>Login:</td>
				<td><input type="text" name="login" value='<jsp:getProperty property="login" name="gerente"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" value='<jsp:getProperty property="nome" name="gerente"/>' size="11" maxlength="11"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Enviar"></td>
			</tr>
		</table>
	</form>
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









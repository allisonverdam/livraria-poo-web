<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INSCRIÇÃO</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>

<script type="text/javascript">
function validar()
{
	var f = document.forms[0];
	if (f.nome.value == '')
	{
		alert('O campo NOME não foi preenchido.');
		f.nome.focus();
		return false;
	}
	return true;
}
</script>
<jsp:useBean id="livro" class="modelo.dominio.Livro" scope="request"></jsp:useBean>
</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<form action="alterarLivro" method="post" onsubmit="return validar()">
		<table>
			<tr>
				<td class="tituloCampo">ID:</td>
				<td><input type="text" name="id" value='<jsp:getProperty property="id" name="livro"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Nome:</td>
				<td><input type="text" name="nomeLivro" value='<jsp:getProperty property="nomeLivro" name="livro"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Descrição:</td>
				<td><input type="text" name="descricao" value='<jsp:getProperty property="descricao" name="livro"/>' size="11" maxlength="11"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Ano Lançamento:</td>
				<td><input type="text" name="anoLancamento" value='<jsp:getProperty property="anoLancamento" name="livro"/>' size="10" maxlength="10"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Número Paginas:</td>
				<td><input type="text" name="numPaginas" value='<jsp:getProperty property="numPaginas" name="livro"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Preço:</td>
				<td><input type="text" name="preco" value='<jsp:getProperty property="preco" name="livro"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Enviar"></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









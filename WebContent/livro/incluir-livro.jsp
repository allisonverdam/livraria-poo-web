<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inclusão</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>

<jsp:useBean id="livro" class="modelo.dominio.Livro" scope="request"></jsp:useBean>
</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<form action="salvarLivro" method="post" onsubmit="return validar()">
		<table>
			<tr>
				<td class="tituloCampo">Nome:</td>
				<td><input type="text" name="nomeLivro" size="30"
					maxlength="80" placeholder="Nome do Livro"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Descrição:</td>
				<td><input type="text" size="30" name="descricao"placeholder="Descrição do Livro">
			</td>
			</tr>
			<tr>
				<td class="tituloCampo">Ano de Lançamento:</td>
				<td><input type="text" name="anoLancamento" size="30" maxlength="4"
					placeholder="Ano de Lançamento do Filme"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Número de Páginas:</td>
				<td><input type="text" name="numPaginas" size="30"
					maxlength="80" placeholder="Número de Páginas"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Preço:</td>
				<td><input type="text" name="preco" size="30"
					maxlength="80" placeholder="Preço"></td>
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









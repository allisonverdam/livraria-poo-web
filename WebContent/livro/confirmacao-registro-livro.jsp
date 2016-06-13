<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.dominio.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirma��o de Registro de Livro</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>
</head>
<body>
	<a href="exibirCadastroLivros">Voltar para o cadastro de Livros</a>
	<a href="exibirPainelAdmin">Voltar a P�gina de Administra��o</a>

	<jsp:useBean id="livro" class="modelo.dominio.Livro" scope="request"></jsp:useBean>
	<table>
<tr>
			<td class="tituloCampo">Nome:</td>
			<td><%=livro.getNomeLivro()%></td>
		</tr>
		<tr>
			<td class="tituloCampo">Descricao:</td>
			<td><%=livro.getDescricao()%></td>
		</tr>
		<tr>
			<td class="tituloCampo">Ano de Lan�amento:</td>
			<td><%=livro.getAnoLancamento()%></td>
		</tr>
		<tr>
			<td class="tituloCampo">N�mero de P�ginas:</td>
			<td><%=livro.getNumPaginas()%></td>
		</tr>
		<tr>
			<td class="tituloCampo">Pre�o:</td>
			<td><%=livro.getPreco()%></td>
		</tr>
	</table>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









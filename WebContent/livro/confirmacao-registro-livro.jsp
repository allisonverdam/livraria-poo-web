<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.dominio.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação de Registro de Livro</title>

</head>
<body>
	<a href="exibirCadastroLivros">Voltar para o cadastro de Livros</a>
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>

	<jsp:useBean id="livro" class="modelo.dominio.Livro" scope="request"></jsp:useBean>
	<table>
<tr>
			<td>Nome:</td>
			<td><%=livro.getNomeLivro()%></td>
		</tr>
		<tr>
			<td>Descricao:</td>
			<td><%=livro.getDescricao()%></td>
		</tr>
		<tr>
			<td>Ano de Lançamento:</td>
			<td><%=livro.getAnoLancamento()%></td>
		</tr>
		<tr>
			<td>Número de Páginas:</td>
			<td><%=livro.getNumPaginas()%></td>
		</tr>
		<tr>
			<td>Preço:</td>
			<td><%=livro.getPreco()%></td>
		</tr>
	</table>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









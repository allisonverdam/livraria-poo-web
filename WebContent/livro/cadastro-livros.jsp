<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="modelo.dominio.Livro"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Livros</title>
</head>
<body>
	<h3>Cadastro de Livros</h3>
	Opções: <a href="exibirRegistroLivro">Incluir</a>
	
	<br>
	<br>
	Lista de Livros:
	<table cellpadding="5" cellspacing="0" border="1">
		<tr>
			<td>Opções</td>
			<td>ID</td>
			<td>Nome Livro</td>
			<td>Descrição</td>
			<td>Ano de Lançamento</td>
			<td>Numero de Páginas</td>
			<td>Preço</td>
		</tr>
<%
	List<Livro> lista = (List<Livro>) request.getAttribute("lista");
	if (lista != null)
	{
		for (Livro livro: lista)
		{
%>
		<tr>
			<td><a href="alterarCadastroLivro?id=<%=livro.getId()%>">Alterar</a><br>
				<a href="excluirLivro?id=<%=livro.getId()%>">Excluir</a>
			</td>
			<td><%=livro.getId()%></td>
			<td><%=livro.getNomeLivro()%></td>
			<td><%=livro.getDescricao()%></td>
			<td><%=livro.getAnoLancamento()%></td>
			<td><%=livro.getNumPaginas()%></td>
			<td><%=livro.getPreco()%></td>
		</tr>
<%
		}
	}
%>
	</table>
	<a href="exibirPainelAdmin">Voltar a Página de Administração</a>
	<br>
	<br>
	<a href="logout">Sair</a>
	
</body>
</html>












	
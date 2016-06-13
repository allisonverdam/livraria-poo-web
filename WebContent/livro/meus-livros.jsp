<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="modelo.dominio.Cliente"%>
<%@page import="modelo.dominio.Livro"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br> Meus Livros:
	<table cellpadding="5" cellspacing="0" border="1">
		<tr>
			<td>Opções</td>
			<td>Nome</td>
			<td>Descrição</td>
			<td>Ano de Lançamento</td>
			<td>Número de Páginas</td>
			<td>Preço</td>
		</tr>
		<%
			Cliente cliente = (Cliente) request.getAttribute("cliente");
			
			List<Livro> lista = (List<Livro>) request.getAttribute("lista");
			if (lista != null) {
				for (Livro livro : lista) {
		%>
		<tr>
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
	<br>
	<br>
	<a href="exibirCatalogo">Voltar ao Catalogo</a>
	<a href="logout">Sair</a>
</body>
</html>
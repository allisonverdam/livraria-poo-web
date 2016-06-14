<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="modelo.dominio.Cliente"%>
<%@page import="modelo.dominio.Compra"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Meus Livros</title>
</head>
<body>
	<br>
	<br> Meus Livros:
	<table border="1">
		<tr>
			<td>Nome</td>
			<td>Descrição</td>
			<td>Ano de Lançamento</td>
			<td>Número de Páginas</td>
			<td>Preço</td>
		</tr>
		<%
			List<Compra> compras = (List<Compra>) request.getAttribute("compras");
			Cliente cliente = (Cliente) request.getAttribute("cliente");
			
			if (compras != null) {
				for (Compra compra : compras) {
					
		%>
		<tr>
			<td><%=compra.getLivro().getNomeLivro()%></td>
			<td><%=compra.getLivro().getDescricao()%></td>
			<td><%=compra.getLivro().getAnoLancamento()%></td>
			<td><%=compra.getLivro().getNumPaginas()%></td>
			<td><%=compra.getLivro().getPreco()%></td>
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
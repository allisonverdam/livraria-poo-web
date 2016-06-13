<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="modelo.dominio.Gerente"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Gerentes</title>
</head>
<body>
	<h3>Cadastro de Gerentes</h3>
	Opções: <a href="abrirRegistroGerentes">Incluir</a>

	<br>
	<br>
	Lista de Gerentes:
	<table border="1">
		<tr>
			<td>Opções</td>
			<td>Id</td>
			<td>Nome Gerente</td>
		</tr>
<%
	List<Gerente> lista = (List<Gerente>) request.getAttribute("lista");
	if (lista != null)
	{
		for (Gerente gerente: lista)
		{
%>
		<tr>
			<td><a href="alterarCadastroGerente?id=<%=gerente.getId()%>">Alterar</a><br>
				<a href="excluirGerente?id=<%=gerente.getId()%>">Excluir</a>
			</td>
			<td><%=gerente.getId()%></td>
			<td><%=gerente.getNome()%></td>
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












	
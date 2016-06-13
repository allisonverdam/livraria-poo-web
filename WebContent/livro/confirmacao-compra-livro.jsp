<%@page import="modelo.dominio.Livro"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmação da Compra</title>

</head>
<body>
	<jsp:useBean id="livro" class="modelo.dominio.Livro" scope="request"></jsp:useBean>
	<p class="tituloCampo">
		A compra do livro <b>"<%=livro.getNomeLivro()%>"
		</b> foi confirmado.
	</p>
	<a href="exibirCatalogo">Voltar ao catálogo</a>
	<br>
	<br>
	<a href="logout">Sair</a>
</body>
</html>









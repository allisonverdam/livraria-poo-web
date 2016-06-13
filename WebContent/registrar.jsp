<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/livraria.css">
<title>Registrar Usuário</title>

</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<div class="container">
		<div class="caixa-group">
			<h1 style="padding-top: 15px;">Tela de Cadastro</h1>
			<hr>
			<form action="salvarUsuario" method="post"
				onsubmit="return validar()" class="form-group">
				<label for="login">Login:</label> <input type="text" id="login"
					name="login" class="input" required> <label for="nome">Nome:</label>
				<input type="text" id="nome" name="nome" class="input" required>
				<label for="senha">Senha:</label> <input type="password" id="senha"
					name="senha" class="input" required> <label for="senha">Senha:</label>
				<input type="password" id="senhaConf" name="senhaConf" class="input"
					required> <input type="submit" value="Enviar"
					class="btn btn-vermelho">
			</form>
			<a href="abrirLogin" class="btn btn-cinza"
				style="text-decoration: none;">Logar</a>
		</div>
	</div>
</body>
</html>









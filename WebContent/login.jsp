<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/livraria.css">
<title>Logar</title>
<script type="text/javascript">
	function validar() {
		var f = document.forms[0];
		if (f.login.value == '') {
			alert('O campo login não foi preenchido.');
			f.login.focus();
			return false;
		} else if (f.senha.value == '') {
			alert('O campo senha não foi preenchido.');
			f.senha.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="container">
		<div class="caixa-group">
			<h1 style="padding-top: 15px;">Tela de Login</h1>
			<%
			String mensagem = (String) request.getAttribute("mensagem");
			if (mensagem != null)
			out.println("<hr><h3>" + mensagem + "</h3>");
			%>
			<div class="container"></div>
			<hr>
			<form action="autenticar" method="post" onsubmit="return validar()" class="form-group">
				<label for="login">Usuário:</label> 
				<input type="text" id="login" class="input" required name="login"> 
				<label for="senha">Senha:</label>
				<input type="password" class="input" required name="senha" id="senha">
				<input type="submit" value="Logar" class="btn btn-vermelho">
			</form>
			<a href="registrarUsuario" class="btn btn-cinza" style="text-decoration: none;">Registra-se</a>
		</div>
	</div>
</body>
</html>









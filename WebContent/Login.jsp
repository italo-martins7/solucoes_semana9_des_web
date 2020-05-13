<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cadastros</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Barra superior com os menus de navegacao -->
	<c:import url="Menu.jsp" />
	<!-- Container Principal -->
	<div id="main" class="container">
		<h3 class="page-header">Login</h3>
		<!-- Formulario de Login -->
		<form action="controller.do" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Endereço de e-mail</label> <input
					type="email" class="form-control" name="username" id="username"
					aria-describedby="emailHelp" placeholder="Seu e-mail"> <small
					id="emailHelp" class="form-text text-muted">Nunca vamos
					compartilhar seu e-mail, com ninguém.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Senha</label> <input
					type="password" name="passwd" class="form-control" id="passwd"
					placeholder="Digite sua senha">
			</div>
			<div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Clique
					em mim</label>
			</div>
			<button type="submit" name="command" value="FazerLogin" class="btn btn-primary">Entrar</button>
		</form>
	</div>
	<div class="footer">
		<p><strong>© 2020 Copyright - Italo Martins de Araujo</strong></p>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Adicionar País</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp" />
	<div id="main" class="container">
		<h3 class="page-header">Incluir País</h3>
		<!-- Formulario para inclusao de clientes -->
		<form action="controller.do" method="post">
			<!-- area de campos do form -->
			<div class="row">
				<div class="form-group col-md-12">
					<label for="nome">Nome</label> <input type="text"
						class="form-control" name="nome" id="nome"
						 placeholder="nome do país">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="fone">População</label> <input type="number"
						class="form-control" name="populacao" id="populacao"
						placeholder="população do país">
				</div>

				<div class="form-group col-md-6">
					<label for="area">Área</label> <input type="number"
						class="form-control" name="area" id="area" 
						placeholder="área do país em km²">
				</div>
			</div>
			<hr />
			<div id="actions" class="row">
				<div class="col-md-12">
					<button type="submit" class="btn btn-success" name="command"
						value="CriarPais">Incluir</button>
					<a href="index.jsp" class="btn btn-danger">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
	<!-- Rodapé -->
	<div class="footer">
				<p><strong>© 2020 Copyright - Italo Martins de Araujo</strong></p>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>
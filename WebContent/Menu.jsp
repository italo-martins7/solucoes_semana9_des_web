<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Usuario"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Login.jsp"> <c:if test="${logado == null}">#</c:if></a>
                <a class="navbar-brand"> <c:if test="${logado != null}"> Bem vindo, ${logado.username}</c:if> </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="controller.do?command=ListarPaisReiniciar">Lista Países</a>
                    </li>
                    <li><a href="AdicionarPais.jsp">Novo País</a>
                    </li>
                    <li><a href="controller.do?command=Logoff">Sair</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

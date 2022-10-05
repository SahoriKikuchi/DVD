<%-- 
    Document   : listagem
    Created on : 28 de set. de 2022, 13:43:08
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaGenero?acao=preparar"/>


<!DOCTYPE html>
<html>
    <head>
        <title>Generos Cadastrados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>
    <body>
        <h1>Gêneros Cadastrados</h1>


        <table>
            <thead>
                <tr>
                    <th>Gêneros</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>

                <jsp:useBean
                    id="servicos"
                    scope="page"
                    class="locacaodvds.servicos.GeneroServices"/>

                <c:forEach items="${servicos.todos}" var="generos">
                    <tr>

                        <td>${generos.genero}</td>

                        <td>
                            <a href="${cp}/${prefixo}Alteracao&id=${generos.id}">
                                <i class="material-icons">edit_square</i>
                            </a>
                        </td>
                        <td>
                            <a href="${cp}/${prefixo}Exclusao&id=${generos.id}">
                                <i class="material-icons">delete</i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <br>
        <div class = "frame">
            <a href="${cp}/formularios/generos/novo.jsp" >
                <button type="button" class = "custom-btn btn-4">
                    Novo Gênero
                </button>
            </a>
            <a href="${cp}/index.jsp">
                <button type="button" class = "custom-btn btn-4">
                    Tela Inicial
                </button>
            </a>
    </body>
</html>

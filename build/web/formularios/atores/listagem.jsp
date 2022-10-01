<%-- 
    Document   : listagem
    Created on : 28 de set. de 2022, 13:43:08
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaAtores?acao=preparar"/>


<!DOCTYPE html>
<html>
    <head>
        <title>Atores Cadastrados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/estilos.css"/>
    </head>
    <body>
        <h1>Atores Cadastrados</h1>

        <p>
            <a href="${cp}/formularios/atores/novo.jsp">
                Novo Ator
            </a>
        </p>

        <table class="tabelaListagem">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th>Data de Estreia</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>

                <jsp:useBean
                    id="servicos"
                    scope="page"
                    class="locacaodvds.servicos.AtoresServices"/>

                <c:forEach items="${servicos.todos}" var="atores">
                    <tr>

                        <td>${atores.nome}</td>
                        <td>${atores.sobrenome}</td>
                        <td>${atores.dataDeEstreia}</td>

                        <td>
                            <a href="${cp}/${prefixo}Alteracao&id=${atores.id}">
                                Alterar
                            </a>
                        </td>
                        <td>
                            <a href="${cp}/${prefixo}Exclusao&id=${atores.id}">
                                Excluir
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <button class = "retorno">
            <a href="${cp}/index.jsp">Tela Inicial</a>
        </button>
    </body>
</html>

<%-- 
    Document   : listagem
    Created on : 29 de set. de 2022, 20:51:15
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaDvd?acao=preparar"/>
<!DOCTYPE html>

<html>
    <head>
        <title>Dvds Cadastrados</title>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    </head>

    <body>

        <h1>Dvds Cadastrados</h1>

        <p>
            <a href="${cp}/formularios/dvd/novo.jsp">
                Novo DVD
            </a>
        </p>

        <table>
            <thead>
                <tr>
                    <th>Titulo</th>
                    <th>Ano de Lançamento</th>
                    <th>Ator Principal</th>
                    <th>Ator Coadjuvante</th>
                    <th>Data de Lançamento</th>
                    <th>Duracao</th>
                    <th>Gênero</th>
                    <th>Classificação</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
            </thead>
            <tbody>

                <jsp:useBean
                    id="servicos"
                    scope="page"
                    class="locacaodvds.servicos.DvdServices"/>

                <c:forEach items="${servicos.todos}" var="dvd">
                    <tr>
                        <td>${dvd.id}</td>
                        <td>${dvd.titulo}</td>
                        <td>${dvd.anoDeLancamento}</td>
                        <td>${dvd.atores.nome}</td>
                        <td>${dvd.duracao}</td>

                        <td>
                            <a href="${cp}/${prefixo}Alteracao&id=${dvd.id}">
                                <i class="material-icons">edit_square</i>
                            </a>
                        </td>
                        <td>
                            <a href="${cp}/${prefixo}Exclusao&id=${dvd.id}">
                                <i class="material-icons">delete</i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


        <p><a href="${cp}/index.jsp">Tela Principal</a></p>

    </body>

</html>


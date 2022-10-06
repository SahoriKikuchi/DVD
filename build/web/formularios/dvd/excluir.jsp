<%-- 
    Document   : excluir
    Created on : 4 de out. de 2022, 13:46:14
    Author     : lpcor
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaDvds?acao=preparar"/>
<html>
    <head>
        <title>Excluir Dvd</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>

    <body>

        <h1>Excluir Dvd</h1>

        <form method="post" action="${cp}/processaDvds">

            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.dvd.id}"/>
            <table>
                <tr>
                    <td>Titulo:</td>
                    <td>${requestScope.dvd.titulo}</td>
                </tr>
                <tr>
                    <td>Ano de Lançamento:</td>
                    <td>${requestScope.dvd.anoDeLancamento}</td>
                </tr>
                <tr>
                    <td>Ator Principal: </td>
                    <td>${requestScope.dvd.atorPrincipal.nome} ${requestScope.dvd.atorPrincipal.sobrenome}</td>
                </tr>
                <tr>
                    <td>Ator Coadjuvante: </td>
                    <td>${requestScope.dvd.atorCoadjuvante.nome} ${requestScope.dvd.atorCoadjuvante.sobrenome}</td>
                </tr>
                <tr>
                    <td>Data de Lançamento: </td>
                    <td>${requestScope.dvd.dataDeLancamento}</td>
                </tr>
                <tr>
                    <td >Duração: </td>
                    <td>${requestScope.dvd.duracao}</td>
                </tr>
                <tr>
                    <td>Gênero: </td>
                    <td>${requestScope.dvd.genero.genero}</td>
                </tr>
                <tr>
                    <td>Classificação: </td>
                    <td>${requestScope.dvd.classificacao.descricao}</td>
                </tr>

            </table>

            <div class="frame">
                <a href="${cp}/formularios/dvd/listagem.jsp">
                    <button type="button" class="custom-btn btn-4">
                        Voltar
                    </button>
                </a>
                <input type="submit" value="Excluir"/>
            </div>
        </form>

    </body>
</html>

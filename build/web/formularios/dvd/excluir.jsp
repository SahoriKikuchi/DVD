<%-- 
    Document   : excluir
    Created on : 4 de out. de 2022, 13:46:14
    Author     : lpcor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaDvds?acao=preparar"/>
<!DOCTYPE html>
<html>
    <head>
        <title>Excluir Atores</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
    </head>

    <body>

        <h1>Excluir Atores</h1>

        <form method="post" action="${cp}/processaDvds">

            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.dvd.id}"/>

            <table>
                <tr>
                    <td class="alinharDireita">Titulo:</td>
                    <td class="alinharEsquerda">${requestScope.dvd.titulo}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ano de Lançamento:</td>
                    <td class="alinharEsquerda">${requestScope.dvd.anoDeLancamento}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ator Principal: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.atorPrincipal}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ator Coadjuvante: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.atorCoadjuvante} ${requestScope.dvd.atorCoadjuvante.nome}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Data de Lançamento: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.dataDeLancamento}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Duração: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.duracao}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Gênero: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.genero.genero}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Classificação: </td>
                    <td class="alinharEsquerda">${requestScope.dvd.classificacao.descricao}</td>
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

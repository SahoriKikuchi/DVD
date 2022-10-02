<%-- 
    Document   : excluir
    Created on : 28 de set. de 2022, 13:42:57
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
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

        <form method="post" action="${cp}/processaAtores">

            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.atores.id}"/>

            <table>
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td class="alinharEsquerda">${requestScope.atores.nome}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Sobrenome:</td>
                    <td class="alinharEsquerda">${requestScope.atores.sobrenome}</td>
                </tr>
                <tr>
                    <td class="alinharDireita">Data de Estreia: </td>
                    <td class="alinharEsquerda">${requestScope.atores.dataDeEstreia}</td>
                </tr>

            </table>

            <div class="frame">
                <button class="custom-btn">
                    <a href="${cp}/formularios/atores/listagem.jsp">
                        Voltar
                    </a>
                </button>
                <input type="submit" value="Excluir"/>
            </div>
        </form>

    </body>

</html>

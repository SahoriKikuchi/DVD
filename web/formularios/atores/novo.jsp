<%-- 
    Document   : novo
    Created on : 28 de set. de 2022, 17:44:25
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="atoresServlets?acao=preparar"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Novo Ator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>

    <body>

        <h1>Novo Ator</h1>

        <form method="post" action="${cp}/processaAtores">

            <input name="acao" type="hidden" value="inserir"/>

            <table>
                <tr>
                    <td class="alinharCentro">Nome:</td>
                    <td class="alinharEsquerda">
                        <input name="nome"
                               type="text"
                               size="20"
                               maxlength="30"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharCentro">Sobrenome</td>
                    <td class="alinharEsquerda">
                        <input name="sobrenome"
                               type="text"
                               size="20"
                               maxlength="30"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharCentro">Data de Estreia: </td>
                    <td class="alinharEsquerda">
                        <input name="dataDeEstreia"
                               type="Date"
                               required/>
                    </td>
                </tr>
            </table>

            <div class = "frame">
                <a href="${cp}/formularios/atores/listagem.jsp">
                    <button type="button" class="custom-btn btn-4">
                        Voltar
                    </button>
                </a>
                <input type="submit" value="Salvar"/>
            </div>
        </form>

    </body>

</html>

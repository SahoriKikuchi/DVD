<%-- 
    Document   : novo
    Created on : 28 de set. de 2022, 17:44:25
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Nova classificacao</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>

    <body>

        <h1>Nova classificação</h1>

        <form method="post" action="${cp}/processaClassificacao">

            <input name="acao" type="hidden" value="inserir"/>

            <table>
                <tr>
                    <td class="alinharDireita">Descrição: </td>
                    <td>
                        <input name="descricao"
                               type="text"
                               size="20"
                               maxlength="255"
                               required/>
                    </td>
                </tr>

                <tr>
            </table>
            <br/>
            <input type="submit" value="Salvar"/>
            <div class="frame">
                <a href="${cp}/formularios/classificacao/listagem.jsp">
                    <button type = "button" class="custom-btn btn-4">
                        Voltar
                    </button>
                </a>
            </div>
        </form>
    </body>
</html>

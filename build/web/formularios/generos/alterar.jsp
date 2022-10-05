<%-- 
    Document   : alterar
    Created on : 28 de set. de 2022, 23:10:22
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaGeneros?acao=preparar"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>
    <body>

        <h1>Alterar Generos</h1>

        <form method="post" action="${cp}/processaGenero">

            <input name="acao" type="hidden" value="alterar"/>
            <input name="id" type="hidden" value="${requestScope.generos.id}"/>

            <table>
                <tr>
                    <td class="alinharDireita">Genero:</td>
                    <td>
                        <input name="genero"
                               type="text"
                               size="20"
                               maxlength="255"
                               value="${requestScope.generos.genero}"/>
                    </td>
                </tr>

            </table>
            <div class = "frame">
                <a href="${cp}/formularios/generos/listagem.jsp" >
                    <button type="button" class = "custom-btn btn-4">
                        Voltar
                    </button>
                </a>
                <input type="submit" value="Alterar"/>
            </div>    


        </form>

    </body>
</html>

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
        <title>Excluir Generos</title>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="${cp}/css/estilos.css"/>
    </head>

    <body>

        <h1>Excluir Generos</h1>

        <form method="post" action="${cp}/processaGenero">

            <input name="acao" type="hidden" value="excluir"/>
            <input name="id" type="hidden" value="${requestScope.generos.id}"/>

            <table>
                <tr>
                    <td class="alinharDireita">Genero:</td>
                    <td>${requestScope.generos.genero}</td>
                </tr>
                <tr>
                    <td>
                        <a href="${cp}/formularios/generos/listagem.jsp">
                            Voltar
                        </a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Excluir"/>
                    </td>
                </tr>
            </table>

        </form>

    </body>

</html>

<%-- 
    Document   : index.jsp
    Created on : 26 de set. de 2022, 17:10:03
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Locadora</title>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  type="text/css" href="${cp}/css/style.css"/>

    </head>

    <body>

        <h1>Locadora de DVD</h1>

        <div class = "cards-list">
            <div class ="card">
                <div class ="card_img">
                    <a href="${cp}/formularios/dvd/listagem.jsp">
                        <img src="${cp}/img/img-dvd.jpg">
                    </a>
                </div>
                <div class="card_title title-white">
                    <p>
                        <a href="${cp}/formularios/dvd/listagem.jsp">DVD</a>
                    </p>
                </div>
            </div>
            <div class ="card">
                <div class ="card_img">
                    <a href="${cp}/formularios/atores/listagem.jsp">
                        <img src="${cp}/img/atorees.jpg">
                    </a>
                </div>
                <div class="card_title title-white">
                    <p>
                        <a href="${cp}/formularios/atores/listagem.jsp">Atores</a>
                    </p>
                </div>
            </div>
            <div class ="card">
                <div class ="card_img">
                    <a href="${cp}/formularios/classificacao/listagem.jsp">
                        <img src="${cp}/img/classificacaoEtaria.jpg">
                    </a>
                </div>
                <div class="card_title title-white">
                    <p>
                        <a href="${cp}/formularios/classificacao/listagem.jsp">Classificação</a>
                    </p>
                </div>
            </div>
            <div class ="card">
                <div class ="card_img">
                    <a href="${cp}/formularios/generos/listagem.jsp">
                        <img src="${cp}/img/img-generos.jpg">
                    </a>
                </div>
                <div class="card_title title-white">
                    <p>
                        <a href="${cp}/formularios/generos/listagem.jsp">Gêneros</a>
                    </p>
                </div>
            </div>
        </div>

    </body>

</html>

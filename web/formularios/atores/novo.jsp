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
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${cp}/css/style.css"/>
    
    
  </head>

  <body>

    <h1>Novo Ator</h1>

    <form method="post" action="${cp}/processaAtores">

      <input name="acao" type="hidden" value="inserir"/>

      <table>
        <tr>
          <td class="alinharDireita">Nome:</td>
          <td>
            <input name="nome"
                   type="text"
                   size="20"
                   maxlength="30"
                   required/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Sobrenome</td>
          <td>
            <input name="sobrenome"
                   type="text"
                   size="20"
                   maxlength="30"
                   required/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Data de Estreia: </td>
          <td>
            <input name="dataDeEstreia"
                   type="Date"
                   required/>
          </td>
        </tr>
      </table>
      
      <div class = "frame">
            <button class = "custom-btn btn-4">
                <a href="${cp}/formularios/atores/listagem.jsp" >
                    Voltar
                </a>
            </button>
            <button type = "submit" class = "custom-btn btn-4">
                Salvar
            </button>
        </div>
    </form>

  </body>

</html>

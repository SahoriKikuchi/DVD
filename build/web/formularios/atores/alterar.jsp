<%-- 
    Document   : alterar
    Created on : 28 de set. de 2022, 23:10:22
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaAtores?acao=preparar"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>

    <h1>Alterar Atores</h1>

    <form method="post" action="${cp}/processaAtores">

      <input name="acao" type="hidden" value="alterar"/>
      <input name="id" type="hidden" value="${requestScope.atores.id}"/>

      <table>
        <tr>
          <td class="alinharDireita">Nome:</td>
          <td>
            <input name="nome"
                   type="text"
                   size="20"
                   maxlength="45"
                   value="${requestScope.atores.nome}"/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Sobrenome: </td>
          <td>
            <input name="sobrenome"
                   type="text"
                   size="3"
                   maxlength="45"
                   value="${requestScope.atores.sobrenome}"/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Data de estreia: </td>
          <td>
            <input name="dataDeEstreia"
                   type="date"
                   value="${requestScope.atores.dataDeEstreia}"/>
          </td>
        </tr>
        <tr>
          <td>
            <a href="${cp}/formularios/atores/listagem.jsp">
              Voltar
            </a>
          </td>
          <td class="alinharDireita">
            <input type="submit" value="Alterar"/>
          </td>
        </tr>
      </table>

    </form>

  </body>
</html>

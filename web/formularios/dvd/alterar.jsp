<%-- 
    Document   : alterar
    Created on : 28 de set. de 2022, 13:42:49
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaDvds?acao=preparar"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
        <link rel="stylesheet" href="${cp}/css/style.css"/>
        <link rel = "icon"  type = "image/gif" href="${cp}/img/background.gif"/>
    </head>
    <body>

        <h1>Alterar Dvds</h1>

        <form method="post" action="${cp}/processaDvds">

            <input name="acao" type="hidden" value="alterar"/>
            <input name="id" type="hidden" value="${requestScope.dvd.id}"/>

            <table>
                <tr>
                    <td class="alinharDireita">Titulo: </td>
                    <td>
                        <input name="titulo"
                               type="text"
                               size="20"
                               maxlength="120"
                               value="${requestScope.dvd.titulo}"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ano de Lançamento:</td>
                    <td>
                        <input name="anoDeLancamento"
                               type="text"
                               size="20"
                               maxlength="4"
                               value="${requestScope.dvd.anoDeLancamento}"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ator Principal:</td>
                    <td>

                        <jsp:useBean
                            id="servicosAP"
                            scope="page"
                            class="locacaodvds.servicos.AtoresServices"/>

                        <select name="atorPrincipal">
                            <c:forEach items="${servicosAP.todos}" var="atorP">
                                <option value="${atorP.id}">
                                    ${atorP.nome} ${atorP.sobrenome}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ator Coadjuvante:</td>
                    <td>
                        <jsp:useBean
                            id="servicosAC"
                            scope="page"
                            class="locacaodvds.servicos.AtoresServices"/>

                        <select name="atorCoadjuvante">
                            <c:forEach items="${servicosAC.todos}" var="atorC">
                                <option value="${atorC.id}">
                                    ${atorC.nome} ${atorC.sobrenome}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Data De Lançamento:</td>
                    <td>
                        <input name="dataDeLancamento"
                               type="date"
                               size="20"
                               value="${requestScope.dvd.dataDeLancamento}"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Duracao (min):</td>
                    <td>
                        <input name="duracao"
                               type="number"
                               size="25"
                               maxlength="11"
                               value="${requestScope.dvd.duracao}"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Genero:</td>
                    <td>
                        <jsp:useBean
                            id="servicos"
                            scope="page"
                            class="locacaodvds.servicos.GeneroServices"/>

                        <select name="genero">
                            <c:forEach items="${servicos.todos}" var="genero">
                                <option value="${genero.id}">
                                    ${genero.genero}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Classificação</td>
                    <td>
                        <jsp:useBean
                            id="servicosC"
                            scope="page"
                            class="locacaodvds.servicos.ClassificacaoServices"/>

                        <select name="classificacao">
                            <c:forEach items="${servicosC.todos}" var="classificacao">
                                <option value="${classificacao.id}">
                                    ${classificacao.descricao}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
            </table>
            <div class="frame"> 
                <a href="${cp}/formularios/dvd/listagem.jsp">
                    <button type="button" class = "custom-btn btn-4">
                        Voltar
                    </button>
                </a>
                <input type="submit" value="Alterar"/>
            </div>
        </form>

    </body>
</html>

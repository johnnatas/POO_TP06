<%-- 
    Document   : quiz
    Created on : 28/05/2017, 14:59:38
    Author     : Jonatas Lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf"  %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
        <h1>Digite seu nome:</h1>
            <input type="text" name="jogador" required="true" />
            <input type="submit" name="jogar" value="Iniciar" />
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>

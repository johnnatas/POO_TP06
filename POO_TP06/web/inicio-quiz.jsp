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
        <title>Quiz</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container">
            <div class="row" id="iniciar-quiz">
                <h1>Digite seu nome:</h1>
                <div class="form-group col-md-offset-5">
                    <form action="quiz.jsp">
                        <input type="text" class="form-control txt" name="jogador" required/>
                        <input type="submit" class="form-control btn btn-success txt" name="jogar" value="Iniciar" />
                    </form>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>

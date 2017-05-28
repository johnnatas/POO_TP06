<%-- 
    Document   : index
    Created on : 27/05/2017, 13:21:57
    Author     : Jonatas Lopes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <title>Quiz</title>
    </head>
    <body>
        <div class="row cor">
        <div class="container" id="pagina-index">
            <div class="col-md-4" id="texto-index">
                <p>
                    Bem vindo ao Quiz Fatec
                </p>
            </div>
            <div class="col-md-7 col-md-offset-1" id="menu-index">
                <div class="row">
                    <a href="quiz.jsp">
                        <div class="col-md-5" id="quiz">
                            <div class="row">
                                <div class="col-md-12">
                                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-12">
                                    <label>Quiz</label>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="ranking.jsp">
                        <div class="col-md-5" id="ranking">
                            <div class="row">
                                <div class="col-md-12">
                                    <i class="fa fa-sort-amount-desc" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-12">
                                    <label>Ranking</label>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="row">
                    <a href="sobre.jsp">
                        <div class="col-md-10" id="sobre">
                            <div class="row">
                                <div class="col-md-12">
                                    <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                                </div>
                                <div class="col-md-12">
                                    <label>Sobre</label>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        </div>
    </body>
</html>

<%@page import="com.domain.quiz.Quiz"%>
<%@page import="com.domain.quiz.Database"%>
<%@page import="com.domain.quiz.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
User myUser = Database.findUser(request.getParameter("user"));
Quiz myUserQuiz = myUser.getMyQuiz();

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>WebQuiz - Resultados</title>
    </head>
    <body>
        
        <div class="container">
                    
            <div class="navbar">
                
            <div class="pull-left"><h1>WebQuiz</h1></div>
            <div class="pull-right" style="padding-top:20px"><a class="btn btn-success" href="test.jsp?user=<%=myUser.getUserName()%>">Refazer o teste</a></div>

            </div><hr/>
            
            
        
        <div class="jumbotron">
            <h2>Olá <%= request.getParameter("user")%></h2>
            <h2>Resultados do teste:</h2><br>    
        <h4>Aproveitamento de acertos:</h4>
        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="<%= 100.0*myUserQuiz.getLastGrade() %>" aria-valuemin="0" aria-valuemax="100" style="width:<%= 100.0*myUserQuiz.getLastGrade() %>%">
                <%= 100.0* myUserQuiz.getLastGrade() %>%
            </div>
        </div>

        <h4>Média de todos os testes feitos:</h4>
        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="<%= 100.0*myUserQuiz.getGradeAverage() %>" aria-valuemin="0" aria-valuemax="100" style="width:<%= 100.0*myUserQuiz.getGradeAverage() %>%">
                <%= 100.0* myUserQuiz.getGradeAverage() %>%
            </div>
        </div>
            
        </div>
    </body>
</html>

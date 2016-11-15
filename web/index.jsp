<%@page import="com.domain.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="pull-right" style="padding-top:20px"><a class="btn btn-success" href="test.jsp">Refazer o teste</a></div>

            </div><hr/>
            
            
        
        <div class="jumbotron">
            
            <h2>Resultados do teste:</h2><br>    
        <h4>Aproveitamento de acertos:</h4>
        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="<%= 100.0*Quiz.getLastGrade() %>" aria-valuemin="0" aria-valuemax="100" style="width:<%= 100.0*Quiz.getLastGrade() %>%">
                <%= 100.0*Quiz.getLastGrade() %>%
            </div>
        </div>

        <h4>Média de todos os testes feitos:</h4>
        <div class="progress">
            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="<%= 100.0*Quiz.getGradeAverage() %>" aria-valuemin="0" aria-valuemax="100" style="width:<%= 100.0*Quiz.getGradeAverage() %>%">
                <%= 100.0*Quiz.getGradeAverage() %>%
            </div>
        </div>
            
        </div>
    </body>
</html>

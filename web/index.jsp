<%@page import="com.domain.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice: WebQuiz</title>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Índice</h2>
        <hr/>
        <h3>Última nota:</h3>
        <%= 100.0*Quiz.getLastGrade() %>%
        <h3>Média</h3>
        <%= 100.0*Quiz.getGradeAverage() %>%
        <hr/>
        <a href="test.jsp">
            <button>Iniciar Teste</button>
        </a>
    </body>
</html>

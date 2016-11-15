<%@page import="com.domain.quiz.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("login")!=null){        
        response.sendRedirect("index.jsp");
        
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice: WebQuiz</title>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Login</h2>
        <hr/>
        <h3>Usuário</h3>
        <form>
            
        <input type="text" id="user" name="user"/>
        
        <input type="submit" name="login">
        
        </form>
        
    </body>
</html>

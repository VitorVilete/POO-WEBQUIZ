<%@page import="com.domain.quiz.User"%>
<%@page import="com.domain.quiz.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    /*if(request.getParameter("login")!=null){        
        response.sendRedirect("index.jsp");
        
    }*/
    if(request.getParameter("login")!=null && request.getParameter("user")!=null){        
        String userName = request.getParameter("user");
        for(int i = 0; i < Database.getUsers().size(); i++){
            //Checa se o usuário já existe. Se não, cria um novo usuário e o adiciona ao final do arrayList
            if (userName == Database.getUsers().get(i).getUserName()) {
            response.sendRedirect("index.jsp?user="+userName+"");
            }        
        }              
        User myUser = new User(userName);
        Database.getUsers().add(myUser);
        response.sendRedirect("index.jsp?user="+userName+"");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>WebQuiz - Login</title>
    </head>
    <body>
        
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Digite o seu usuário para começar o teste!</h1>
                
                <div class="account-wall">
                    <img class="profile-img" src="./resources/img/login.png" alt="">
                    <form class="form-signin">
                        <input type="text" id="user" name="user" class="form-control" placeholder="Usuário" required autofocus><br>
                        <input class="btn btn-lg btn-primary btn-block" type="submit" name="login" value="Entrar"><br>
                        <label class="pull-left"><input type="checkbox" value="remember-me"> Lembrar</label>
                        <a href="#" class="pull-right">Ajuda? </a><span class="clearfix"></span>
                    </form>
                </div>
            
                <a href="#" class="text-center new-account">Criar uma conta</a>
            </div>
        </div>
    </div>
             
    </body>
</html>

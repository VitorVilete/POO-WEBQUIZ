<%@page import="com.domain.quiz.Quiz"%>
<%@page import="com.domain.quiz.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("test")!=null){
        Quiz.validateTest(new String[]{
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3")
        });
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <title>Teste: WebQuiz</title>
    </head>
    <body>        
        <div class="container">
                    
        <h1>WebQuiz</h1>
        <h2>Teste</h2>
        <hr/>
        
        <form>

        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="jumbotron">
                    <br><br><br><br><br><a href="#myCarousel" role="button" data-slide="next"><button type="button" class="btn btn-primary center-block btn-lg active">Iniciar</button></a><br><br><br><br><br><br>
                </div><hr/>
            </div>
            
            <%ArrayList<Question> test = Quiz.getTest();%>
            <%for(Question q: test){%>  
            
            <div class="item">
            
            <div class="jumbotron">
            <h3><span class="label label-primary">Questão <%=test.indexOf(q)+1%></span> <%= q.getQuestion() %></h3>
            
                <%for(String alternative: q.getAlternatives()){%>
                
                <div class="funkyradio">
                    <div class="funkyradio-primary">
                        <input type="radio" name="<%=test.indexOf(q)%>" id="<%=test.indexOf(q)%>e<%=alternative%>" value="<%=alternative%>"/>
                        <label for="<%=test.indexOf(q)%>e<%=alternative%>"><%=alternative%></label>
                        
                    </div>
                </div>
                        
                    
                <%}%>
                
            </div>
            <hr/>
           
            
            <% if (test.size()-1 == test.indexOf(q)){ %>
            
            <div class="pull-left"><!-- Left and right controls -->
            <a href="#myCarousel" role="button" data-slide="prev">
            <button type="button" class="btn btn-primary center-block btn-lg active">Pergunta Anterior</button>
            </a>
                
            </div> 
            
            <span class="pull-right"><input class="btn btn-primary center-block btn-lg active" type="submit" name="test" value="Concluir"/></span>
            
            <% } else if (test.indexOf(q) == 0){ %>
            
            
            <div class="pull-right"><a href="#myCarousel" role="button" data-slide="next">
            <button type="button" class="btn btn-primary center-block btn-lg active">Próxima Pergunta</button>
                </a> </div>
            
            <% } else { %>
            
                        <div class="pull-left"><!-- Left and right controls -->
            <a href="#myCarousel" role="button" data-slide="prev">
            <button type="button" class="btn btn-primary center-block btn-lg active">Pergunta Anterior</button>
            </a></div>
                
                         <div class="pull-right"> <a href="#myCarousel" role="button" data-slide="next">
            <button type="button" class="btn btn-primary center-block btn-lg active">Próxima Pergunta</button>
                </a>   
            </div> 
                
            <%}%>
            
            </div><%}%>
            
            
            
            

            
            </form>
                       
 
      
    </div>


  </div>

                  
        
</div>
        

    </body>
</html>

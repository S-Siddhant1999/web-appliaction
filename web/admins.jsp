<%-- 
    Document   : admin.jsp
    Created on : Apr 14, 2019, 9:26:49 AM
    Author     : raju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="home.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <body>
  
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="home.html"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                       <li><a href="About.html"><span class="glyphicon glyphicon-globe"></span> About</a></li>
                        <li><a href="service.html"><span class="glyphicon glyphicon-wrench"></span> Services</a></li>
                         <li><a href="contactus.html"><span class="glyphicon glyphicon-phone-alt"></span> Contact Us</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
       <div style="margin-top:0px;">
                    <center> <img src="images/about_us_bnr.jpg" alt="Cinque Terre" style="width:100%; height:200px;"></center>
                   </div>
 </nav>
   
    
        <% String email=request.getParameter("email");
        String password=request.getParameter("password");
        %>
        
        <form action="admin" method="post"> 
            <input type="hidden" name="email" value="<%=email%>"/>
            <input type="hidden" name="password" value="<%=password%>"/>
          <input type="submit" class="rebtn" name="button" value="New Record"/> 
        </form>
         <form action="adminold" method="post"> 
            <input type="hidden" name="email" value="<%=email%>"/>
            <input type="hidden" name="password" value="<%=password%>"/>
          <input type="submit" class="rebtn" name="button" value="Previous Record"/> 
        </form>
         
    </body>
</html>

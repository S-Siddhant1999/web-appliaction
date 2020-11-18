<%-- 
    Document   : book_confirm
    Created on : 26-Mar-2020, 23:26:45
    Author     : Siddhant Mishra
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
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
      <%
          String service=(String)session.getAttribute("service");
          System.out.println(service);
          String email="null",password="null",name="null",area="null",mobile="null";
          try
          {
               response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select name,email,area,mobile,password from provider where service='"+service+"'";
            
            ResultSet rs=st.executeQuery(query);
            
            while(rs.next())
            {
                name=rs.getString(1);
                email=rs.getString(2);
                area=rs.getString(3);
                mobile=rs.getString(4);
                password=rs.getString(5);
            
            }
          }
          catch(Exception e)
          {
          
          }
          System.out.println(name+" "+email+" "+area);
          
          %>
   
        <h2>Your booking is confirmed</h2>
        <a href="work.jsp?u=<%=service%>&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Back to the Page</a>
            
    </body>
</html>

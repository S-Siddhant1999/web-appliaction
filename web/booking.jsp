<%-- 
    Document   : booking
    Created on : Mar 20, 2020, 10:38:58 AM
    Author     : raju
--%>

<%@page import="java.util.jar.Attributes.Name"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body background="images/">
         <%
          boolean flag=false;
          String email=(String)session.getAttribute("uemail");
          String common=(String)session.getAttribute("common");
          String name=(String)session.getAttribute("name");
         
       // String area=request.getParameter("area");
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select * from book where "+common+"='"+email+"'";
            System.out.println(query);
            
            ResultSet rs=st.executeQuery(query);
            %>
  
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"></span> <%=name%></a>
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
    
        
</nav>
         
            <table class="table table-striped" cellpadding="0" cellspacing="0">
                    
                   
                    <thead>
                <tr>
               
                    <th> User Mail</th>
                     <th> Provider Mail</th>
                      <th> User Name</th>
                      <th>Area</th>
                       <th>User Mobile</th>
                       <th> Provider Name</th>
                       <th>Provide Mobile</th>
                </tr>
               </thead>      
           
           
             <%   
                
               while(rs.next())
               {
                   flag=true;
                   System.out.println("sahi h");
                   %>
                 
                   
    <tr>
        <td><%=rs.getString(1)%></td>
         <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
           <td><%=rs.getString(4)%></td>
           <td><%=rs.getString(5)%></td>
           <td><%=rs.getString(6)%></td>
           <td><%=rs.getString(7)%></td>
        
        
    </tr>
             
             <%
             }
}
catch(Exception e)
{
    System.out.println("error in fetch");

}
if(flag==false)

{
    if(common=="provideremail")
{
    %>
    <script>alert('There is no new Record');
    window.location='profile.jsp';
    </script>
    <%
}
else
{
%>
    <script>alert('There is no new Record');
    window.location='visit.jsp';
    </script>
    <%

}
   
}
             %>
    </body>
</html>

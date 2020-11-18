
<%-- 
    Document   : excessprovider
    Created on : Apr 14, 2019, 10:08:34 AM
    Author     : raju
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            boolean flag=false;
          String service=request.getParameter("service");
        String city=request.getParameter("city");
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select f_name,l_name,services,email from registartion where status='approve'";
            
            ResultSet rs=st.executeQuery(query);
             %>
               <table cellpadding="0" cellspacing="0">
                    
                    
                    <thead>
                <tr>
               
                    <th>First Name</th>
                    <th>Last Name</th>
                     <th>Service</th>
                      <th>Email</th>
                      <th>visit</th>
            
                </tr>
               </thead>      
           
            <%
                
                
               while(rs.next())
               {
                   flag=true;
                   %>
                 
                   
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td>
            <a href="adminexcess.jsp?u=<%=rs.getString(4)%>" >visit Me </a>
        </td>
    </tr>
                  
        <% 
                  
               }

%>
                </table>
                
    
        <%
}
catch(SQLException e)
        {
            out.write("result not found");
        }
%>
    </body>
</html>

<%-- 
    Document   : Teacher
    Created on : Apr 4, 2019, 12:34:22 AM
    Author     : raju
--%>

<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
    <body>
        <%
          String service=request.getParameter("u");
           String username=request.getParameter("v");
           String email=request.getParameter("r");
            String password=request.getParameter("s");
            String userarea=request.getParameter("t");
            String usermobile=request.getParameter("w");
            session.setAttribute("email",email);
            session.setAttribute("password",password);
            session.setAttribute("userarea",userarea);
            session.setAttribute("usermobile",usermobile);
            session.setAttribute("username",username);
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            System.out.print(service);
            
            
            String query="select name,service,area,email from provider where service='"+service+"' AND email not in(select provideremail from book)";
            
            ResultSet rs=st.executeQuery(query);
  

    
%>
         <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="user_profile.jsp"><%=username%></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="userhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                       
                        <li><a href="service.jsp"><span class="glyphicon glyphicon-wrench"></span> Services</a></li>
                         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login_user.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
       
 </nav>
   

        
                <table class="table table-striped" >
                    
                    
                <tr>
               
                    <th>Name</th>
                    
                     <th>Service</th>
                    <th>Area</th>
                     <th>Email</th>
                      <th>Visit</th>
                </tr>
                    
           
            <%
                
                
               while(rs.next())
               {
                   %>
                 
                   
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td>
            <a href="visit.jsp?u=<%=rs.getString(4)%>" >visit Me </a>
        </td>
    </tr>
                  
        <% 
                  
               }

%>
                </table>
          
    <%}

catch(SQLException e)
        {
            out.write("result not found");
        }
            %>
             <input type="hidden" name="name" value="<%=username%>"/>
        <input type="hidden" name="email" value="<%=email%>"/>
        <input type="hidden" name="password" value="<%=password%>"/>
    </body>
</html>

<%-- 
    Document   : search
    Created on : Apr 3, 2019, 9:42:30 PM
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
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body background="images/.png">
           <%
               String username=(String)session.getAttribute("name");
               System.out.println("search ="+username);
               String password=(String)session.getAttribute("password");
               String email=(String)session.getAttribute("email");
               String userarea=(String)session.getAttribute("area");
               String usermobile=(String)session.getAttribute("mobile");
               
               
             session.setAttribute("email",email);
            session.setAttribute("password",password);
            session.setAttribute("userarea",userarea);
            session.setAttribute("usermobile",usermobile);
            session.setAttribute("username",username);
            boolean flag=false;
          String service=request.getParameter("service");
        String area=request.getParameter("area");
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select name,service,area,email from provider where service='"+service+"' AND area='"+area+"' And status='Approve' AND email not in(select provideremail from book)";
            System.out.println(query);
            ResultSet rs=st.executeQuery(query);
             %>
  
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="user_profile.jsp"><%=username%></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="userhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                       
                      <li><a href="service.html"><span class="glyphicon glyphicon-wrench"></span> Services</a></li>
                         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login_user.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
    
        
</nav>
        
        
    

     
                   
             <table class="table table-striped" cellpadding="0" cellspacing="0">
                    
                   
                    <thead>
                <tr>
               
                    <th>First Name</th>
                    
                     <th>Service</th>
                     
                     <th>Area</th>
                     
                      <th>Email</th>
                      <th>visit</th>
            
                </tr>
               </thead>      
           
            <%
                
                
               while(rs.next())
               {
                   flag=true;
                   session.setAttribute("u",rs.getString(4));
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
                
   
        <%
}
catch(SQLException e)
        {
            out.write("result not found");
        }
if(flag==false)
{
    response.sendRedirect("noRecordFound.jsp");
}

            %>
             
    </body>
</html>

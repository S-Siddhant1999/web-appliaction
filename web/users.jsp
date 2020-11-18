<%-- 
    Document   : users
    Created on : 26-Apr-2020, 16:36:40
    Author     : Siddhant Mishra
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quick Response</title>

 <link href="home.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("images/background.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
 
}
frame{
    overflow:hidden;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
 
}
</style>

</head>

<body background="images/" style="">
    

     <div class="bg" >
  
    <nav class="navbar navbar-inverse" style="margin-bottom:0px;padding-bottom:0px; ">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#" style="font-size:200%;color:white"><strong>Hello Admin!</strong></a>
    </div>
    <ul class="nav navbar-nav">
      
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
     
       <li ><a href="admin.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
      
      </li>
    </ul>
  </div>
</nav>
    <%
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="Select * from user";
            
            ResultSet rs=st.executeQuery(query);
        
        
        
        %>
         <table class="table" cellpadding="0" cellspacing="0" style="margin-left: 0%;margin-top: 0%;" >
                 
             
                    
             <tr style="text-align:center;">
       
               
                    <th><center>Name</center></th>
                  
         <th><center>Email</center></th>
                     <th><center>Area</center></th>
                     <th><center>Mobile</center></th>
                     
                      <th><center>Trash</center></th>
                </tr>
                    
           
            <%
                
                
               while(rs.next())
               {
                   %>
                 
                   
    <tr style="text-align:left">
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        
        <td>
            <a href="Del_user?u=<%=rs.getString(2)%>" onclick="return confirm('Are you sure, you want to delete it?')"><span class="glyphicon glyphicon-trash"></span></a>
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
    </body>
</html>

<%-- 
    Document   : booked
    Created on : 27-Apr-2020, 13:13:03
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
  padding: 4px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  cursor: pointer;
  margin-top: 0%;
 
}
frame{
    overflow:hidden;
}

</style>

</head>


    

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
            boolean flag=false;
          
          String service=request.getParameter("service");
        String city=request.getParameter("city");
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select * from book";
            
            ResultSet rs=st.executeQuery(query);
             %>
                   
             <table cellpadding="0" cellspacing="0" class="table table-striped" style="margin-left: 0%;margin-top: 0%;margin-right: 3%">
  
                    <thead>
                <tr>
               
                    <th> User Mail</th>
                     <th> Provider Mail</th>
                      <th> User Name</th>
                      <th>Area</th>
                       <th>User Mobile</th>
                       <th> Provider Name</th>
                       <th>Provide Mobile</th>
                       <th>Unbook</th>
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
        
        
    
             
    
       <td><form action="del_book" method="post"> 
           <input type="hidden" value="<%=rs.getString(2)%>" name="extra"  />
           <input type="submit" name="button" class="button" value="Unbook" onclick="return confirm('Are you sure, you want to unbook it?')">
              </form>
        
       </td>
            
         
       
    </tr>
     
                  
        <% 
                  
               }

%>
                </table>
                
   
    </div>
        <%
            
}
catch(SQLException e)
        {
            out.write("result not found");
        }
if(flag==false)

{
    %>
    <script>alert('There is no new Record');
    window.location='providers.jsp';
    </script>
    <%
   
}

            %>
    
</html>

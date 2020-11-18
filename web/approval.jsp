<%-- 
    Document   : approval
    Created on : Apr 11, 2019, 11:55:55 PM
    Author     : raju
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
            
            String query="select * from provider where status ='null'";
            
            ResultSet rs=st.executeQuery(query);
             %>
                   
             <table cellpadding="0" cellspacing="0" class="table table-striped" style="margin-left: 0%;margin-top: 0%;">
                    
                    
                    <thead>
                <tr>
               
                    <th>Name</th>
                    <th>Service</th>
                     <th>Area</th>
                      
                      
                      
                      <th>Email</th>
                     
                        <th>Number</th>
                         <th>Experience</th>
                         
                         <th>Status</th>
                         <th>Submit</th>
            
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
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
        
         
       
    
       <td><form action="approved" method="post"> 
           <input type="hidden" value="<%=rs.getString(4)%>" name="extra" />
            <select name="status" style="border:0px;"><option><%=rs.getString(8)%></option>
                    <option>Approve</option>
                    <option>Disable</option>
            </select>
        
        
       </td>
            
         <td>
            
          <input type="submit" name="button" class="button" value="submit">
            
        </td>
       </form>
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

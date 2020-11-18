<%-- 
    Document   : profile
    Created on : Mar 29, 2019, 3:24:43 AM
    Author     : raju
--%>

<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
         <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}
.button {
    margin-bottom : 5px;
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

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  width: 98%;
  opacity: 0.9;
}
.button:hover{
    color:black;
}
.btn:hover {
  opacity: 1;
}

</style>
    </head>
     <%
           String name,area,mail,services,experience,city,mobile; 
           String email=(String)session.getAttribute("email");
           String password=(String)session.getAttribute("password");
           String common="provideremail";
           session.setAttribute("uemail",email);
           session.setAttribute("common",common);
           try{
               
            Statement st=DBConnector.getStatement();
            
            String query="Select * from provider where email='"+email+"' AND password='"+password+"'";
            System.out.println("provider update"+query);
            ResultSet rs=st.executeQuery(query);
            
            if(rs.next())
            {
            name= rs.getString(1);
            session.setAttribute("name",name);
            services=rs.getString(2);
            area=rs.getString(3);
            email=rs.getString(4);
            password=rs.getString(5);
            mobile=rs.getString(6);
            experience=rs.getString(7);
           
            
            session.setAttribute(email,"email");
           
            %>
    <body>
           <nav class="navbar navbar-inverse" style="bottom-margin:0%;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Hello <%=name%> !</a>
    </div>
    <ul class="nav navbar-nav">
      
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
       
 </nav>
        
     <h3 style="float:left;margin-left: 33.5%;margin-top:0%;margin-bottom: 2%;"><strong>Provider Profile</strong></h3>   <a href="booking.jsp?u=<%=email%>" style="float:right; margin-right:33.8%;margin-top:0%; " class="button">Show Booked Status</a>
   <form action="updated" method="post" style="max-width:500px;margin:auto;top:0%;">
       
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Username" name="name" value="<%=name%>">
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email" value="<%=email%>" readonly="readonly">
  </div>
  
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="psw" value="<%=password%>">
  </div>
  
   <div class="input-container">
    <i class="fa fa-map-marker icon"></i>
    <input class="input-field" type="text" placeholder="Area" name="area" value="<%=area%>">
  </div>
  
   <div class="input-container">
    <i class="fa fa-phone-square icon"></i>
    <input class="input-field" type="text" placeholder="Mobile" name="mobile" value="<%=mobile%>">
  </div>
  
  <div class="input-container">
    <i class="fa fa-briefcase icon"></i>
    <input class="input-field" type="text" placeholder="Experience" name="exp" value="<%=experience%>">
  </div>
  
  <div class="input-container">
    <i class="fa fa-wrench icon"></i>
    <input class="input-field" type="text" placeholder="Services" name="services" value="<%=services%>">
  </div>
  
  <table WIDTH="100%" >
      <tr>
          <td WIDTH="52%">
 <p><button type="submit" class="btn" style="float:left">Update</button>
 </p></td></form>
<form action="delete" method="post">     <td WIDTH="52%">
        <input class="input-field" type="hidden" placeholder="Email" name="email" value="<%=email%>" readonly="readonly">
        <input class="input-field" type="hidden" placeholder="Password" name="psw" value="<%=password%>">
         <p><button type="submit" class="btn" style="float:right">Remove Account</button></p>
      </td>   
      </tr>
 </table>
</form>
            
           
           
           <%
             
               }
}

            catch(Exception e)
            {
            System.out.println(e);

            }%>
    </body>
</html>

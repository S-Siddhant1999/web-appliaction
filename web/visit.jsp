<%-- 
    Document   : visit
    Created on : Apr 3, 2019, 10:44:24 PM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
  width: 32.8%;
  opacity: 0.9;
  margin-left:33.7%;
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
           String upassword=(String)session.getAttribute("password");
               String uemail=(String)session.getAttribute("email");
               String userarea=(String)session.getAttribute("userarea");
               String usermobile=(String)session.getAttribute("usermobile");
               String username=(String)session.getAttribute("username");
               
               String common="useremail";
               session.setAttribute("upassword",upassword);
               session.setAttribute("common",common);
               session.setAttribute("name",username);
               session.setAttribute("uemail",uemail);
               session.setAttribute("userarea",userarea);
               session.setAttribute("usermobile",usermobile);
               session.setAttribute("username",username);
               
           String email=request.getParameter("u");
             String name=request.getParameter("v");
           
            String area=request.getParameter("t");
            String mobile=request.getParameter("w");
            Statement st=DBConnector.getStatement();
            System.out.println("hello:"+email+"select name,service,area,email,mobile,experience from provider where email='"+email+"'");
            System.out.println("check do"+usermobile+" "+username+" "+uemail+" "+upassword);
            
            String query="select name,service,area,email,mobile,experience from provider where email='"+email+"'";
            
            
            ResultSet rs=st.executeQuery(query);
           while(rs.next())   
        {%>
    <body background="">
          <nav class="navbar navbar-inverse" style="padding: 0px;margin: 0px ;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="profile.jsp"><span class="glyphicon glyphicon-user"></span> <%=username%></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="userhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                       
                        <li><a href="service.jsp"><span class="glyphicon glyphicon-wrench"></span> Services</a></li>
                         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
      
 </nav>
   

      
 
       <h3 style="float:left;margin-left: 33.5%;margin-top:2%;margin-bottom: 1.5%;"><strong><u>Provider Profile</u></strong></h3>   <a href="booking.jsp" style="float:right; margin-right:33.7%;margin-top:1.8%; " class="button">You have booked</a>
   <form action="updated" method="post" style="max-width:500px;margin:auto;top:0%;">
       
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Username" name="name" value="<%=rs.getString(1)%>" readonly="readonly">
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email" value="<%=rs.getString(4)%>" readonly="readonly">
  </div>
  
   <div class="input-container">
    <i class="fa fa-map-marker icon"></i>
    <input class="input-field" type="text" placeholder="Area" name="area" value="<%=rs.getString(3)%>" readonly="readonly">
  </div>
  
   <div class="input-container">
    <i class="fa fa-phone-square icon"></i>
    <input class="input-field" type="text" placeholder="Mobile" name="mobile" value="<%=rs.getString(5)%>" readonly="readonly">
  </div>
  
  <div class="input-container">
    <i class="fa fa-briefcase icon"></i>
    <input class="input-field" type="text" placeholder="Experience" name="exp" value="<%=rs.getString(6)%>" readonly="readonly">
  </div>
  
  <div class="input-container">
    <i class="fa fa-wrench icon"></i>
    <input class="input-field" type="text" placeholder="Services" name="services" value="<%=rs.getString(2)%>" readonly="readonly">
  </div>
  </form>
     <form method="post" action="mymail">
        <input type="hidden" name="email" value="<%=rs.getString(4)%>"/>
        <input type="hidden" name="name" value="<%=rs.getString(1)%>"/>
        <input type="hidden" name="uemail" value="<%=uemail%>"/>
        <input type="hidden" name="upassword" value="<%=upassword%>"/>
         <input type="hidden" name="area" value="<%=rs.getString(3)%>"/>
        <input type="hidden" name="mobile" value="<%=rs.getString(5)%>"/>
        <input type="hidden" name="service" value="<%=rs.getString(2)%>"/>
        <button type="submit" class="btn">Book</button>
        </form>
<%}%>
    </body>
</html>

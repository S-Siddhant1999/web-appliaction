<%-- 
    Document   : adminexcess.jsp
    Created on : Apr 14, 2019, 10:19:34 AM
    Author     : raju
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="visit.css" rel="stylesheet" type="text/css" />
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
           String name,surname,mail,services,pincode,servicecharge,experience,city,mobile,password; 
           String email=request.getParameter("u");
           
           try{
               
            Statement st=DBConnector.getStatement();
            
            String query="Select * from registartion where email='"+email+"'";
            
            ResultSet rs=st.executeQuery(query);
            
            if(rs.next())
            {
            name= rs.getString(1);
            surname=rs.getString(2);
            services=rs.getString(3);
            city=rs.getString(4);
            pincode=rs.getString(5);
            servicecharge=rs.getString(6);
            mail=rs.getString(7);
            password=rs.getString(8);
            mobile=rs.getString(9);
            experience=rs.getString(10);
            
            
           
            %>
            <form action="adminupdated" method="post">
           <table border='0'>
           <tr><td>FIRSTNAME:</td> <td><input type="text" name="firstnm" value="<%=name%> " /></td></tr>
           <tr><td>LASTNAME:</td><td><input type="text" name="lastnm" value="<%=surname%>" /></td></tr>
           <tr><td>SERVICES:</td><td><input type="text" name="service" value="<%=services%>" /></td></tr>
           <tr><td>CITY:</td><td><input type="text" name="city" value="<%=city%>" /></td></tr>
           <tr><td>PINCODE:</td><td><input type="text" name="pincode" value="<%=pincode%>" /></td></tr>
           <tr><td>SERVICE_Charge:</td><td><input type="text" name="servicecharge" value="<%=servicecharge%>" /></td></tr>
           <tr><td>MAIL:</td><td><input type="text" name="email" value="<%=mail%>" /></td></tr>
           <tr><td>PASSWORD:</td><td><input type="text" name="password" value="<%=password%>" /></td></tr>
           <tr><td>MOBILE:</td><td><input type="text" name="number" value="<%=mobile%>" /></td></tr>
           <tr><td>EXPERIENCE:</td><td><input type="text" name="exp" value="<%=experience%>" /></td></tr>
           
            <tr><td><input type="submit" value="UPDATE" /></tr>
           </table>
           </form>
            <form action="delete" method="post">
           <table class="deleted">
               <tr>
                   <td>
                        <input type="hidden" name="email" value="<%=mail%>" /><input type="submit" value="DELETE" />
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

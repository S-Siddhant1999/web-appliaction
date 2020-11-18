<%-- 
    Document   : searchs
    Created on : Mar 28, 2019, 8:28:10 AM
    Author     : raju
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="search.css" rel="stylesheet" type="text/css" />
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
   
    <div>
     <%
         String service=request.getParameter("service");
        String city=request.getParameter("city");
        ResultSet rs=null;
        Blob image=null;
        byte[] byteArray=null;
        try
        {
            Statement st=DBConnector.getStatement();
            String query="select image from registartion where services='"+service+"' AND city='"+city+"'";
       
        
             ResultSet rs1=st.executeQuery(query);
             String imglen="";
            
             if(rs1.next())
             {
                 image=rs.getBlob(1);
               
                byteArray=image.getBytes(1,(int)image.length());
                response.setContentType("image/gif");
                OutputStream os=response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
             }
             else
             {
                 out.println("image not found");
             }
                
        
              }
            
             
     catch(Exception e)
        {
            out.println("e");
        }
         %>
    </div>
</body>
</html>

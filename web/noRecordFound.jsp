<%-- 
    Document   : noRecordFound
    Created on : Apr 7, 2019, 1:18:05 AM
    Author     : raju
--%>

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
   <body background="images/aaaa.png">
  
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
</nav>

       
  <h7><%out.write("search fail,please try again for another service or city");%></h7>
   <div id="length">
      
       <form action="search.jsp" method="post">
                                       <SELECT name=city>
			<OPTION>SELECT CITY </OPTION>
			<OPTION>Indore</OPTION>
			<OPTION>Bhopal</OPTION>
			<OPTION>Dewas</OPTION>
			<OPTION>Ujjain</OPTION>
			<OPTION>Dhar</OPTION>
		</SELECT>
          
           
                    <SELECT name=service>
			<OPTION>SELECT SERVICE</OPTION>
			<OPTION>Teacher</OPTION>
			<OPTION>Carpenter</OPTION>
			<OPTION>Painter</OPTION>
			<OPTION>Electrician</OPTION>
			<OPTION>Plumber</OPTION>
             
		</SELECT>
           <input type="submit" class="rebtn" name="button" value="Register"/> 
       </form>   
       

</div>
     
</div>
    
</div>
    
   
</div>
        
      
    </body>
</html>

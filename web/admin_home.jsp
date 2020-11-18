<%-- 
    Document   : admin_home
    Created on : 22-Apr-2020, 16:38:07
    Author     : Siddhant Mishra
--%>

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
      <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"></span></a>
       <ul class="dropdown-menu">
          
          
        </ul>
      </li>
       <li><a href="admin.html" ><span class="glyphicon glyphicon-log-out"></span> Logout</a>
       <ul class="dropdown-menu">
         
        </ul>
      </li>
    </ul>
  </div>
</nav>
   
    <div style="float:left;width:25%; margin-top: 3%;">
        <div style="margin-top:8%;margin-left: 6%;">
       <p style="font-family:Verdana;color:white;font-size:50px; "><strong>QUICK<br>RESPONSE</Strong></p>
       <p style="font-family:Verdana;margin-top: 0px;color:white;font-size:13px; ">We are providing solutions under a roof.</p>
       <br/>
        </div>
        

    </div>
         <div class="container" style="float:right;width:75%;margin-top:6%; ">
             <div style="width:34%;float:left;margin-left:20%;">
            <p style="font-family:Verdana;margin-top: 0px;color:white;font-size:35px;"><strong>For User</strong></p>
            <p style="font-family:Verdana;margin-top: 0px;color:white;font-size:15px;text-align: left; ">User search the desired service according to their area and book the service man and fulfil their need.</p>
            <a href="users.jsp" class="button"><span class="glyphicon glyphicon-user"></span><strong> Show All Users</strong></a>
            </div>
            <div style="width:30%;float:right;margin-right:5%;">
            <p style="font-family:Verdana;margin-top: 0px;color:white;font-size:35px;"><strong>For Provider</strong></p>
            <p style="font-family:Verdana;margin-top: 0px;color:white;font-size:15px;text-align: left; ">Provider book by user according to their area and give service to user and earn money.</p>
            <a href="providers.jsp" class="button"><span class="glyphicon glyphicon-user"></span><strong> Show All Providers</strong></a>
            </div>
         </div>
        

</div>
</body>
</html>

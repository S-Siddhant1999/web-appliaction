<%-- 
    Document   : user_profile
    Created on : 26-Feb-2020, 17:19:50
    Author     : Siddhant Mishra
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

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 98%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}

</style>
    </head>
    <body>
          <%
           String name,area,mobile; 
           String email=(String)session.getAttribute("email");
           String password=(String)session.getAttribute("password");
           
          
           session.setAttribute("email", email);
            session.setAttribute("password",password);
           try{
               
            Statement st=DBConnector.getStatement();
            
            String query="Select * from user where email='"+email+"' AND password='"+password+"'";
         
            ResultSet rs=st.executeQuery(query);
            
            if(rs.next())
            {
            name= rs.getString(1);
            password=rs.getString(3);
            email=rs.getString(2);
            area=rs.getString(4);
            mobile=rs.getString(5);
            
            session.setAttribute("area", area);
            session.setAttribute("mobile",mobile);
             session.setAttribute("name", name);
            
            
            
           
            %>
           <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><%=name%></a>
    </div>
    <ul class="nav navbar-nav">
         
      <li><a href="userhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                      
                        <li><a href="service.jsp?u=<%=name%>&v=<%=email%>&r=<%=password%>&s=<%=area%>&t=<%=mobile%>"><span class="glyphicon glyphicon-wrench"></span> Services</a></li>
                         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login_user.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
       
 </nav>
   <form action="user_updated" method="post" style="max-width:500px;margin:auto">
        <h3><strong>User Profile</strong></h3>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Username" name="name" value="<%=name%>">
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email" value="<%=email%>">
  </div>
  
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="password" value="<%=password%>">
  </div>
  
   <div class="input-container">
    <i class="fa fa-map-marker icon"></i>
    <input class="input-field" type="text" placeholder="Area" name="area" value="<%=area%>">
  </div>
  
   <div class="input-container">
    <i class="fa fa-phone-square icon"></i>
    <input class="input-field" type="text" placeholder="Mobile" name="mobile" value="<%=mobile%>">
  </div>
  
  
  <table WIDTH="100%" >
      <tr>
          <td WIDTH="52%">
 <p><button type="submit" class="btn" style="float:left">Update</button>
 </p></td></form>
<form action="delete_user" method="post">     <td WIDTH="52%">
        <input class="hidden" type="text" placeholder="Email" name="email" value="<%=email%>">
         <input class="hidden" type="password" placeholder="Password" name="password" value="<%=password%>">
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

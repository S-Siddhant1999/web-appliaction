<%-- 
    Document   : service
    Created on : 27-Feb-2020, 10:57:16
    Author     : Siddhant Mishra
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="model.Option"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="home.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
          #images {
    float:left;
    padding:20px;
    margin:5px;
    height:200px;
    width:30%;
    overflow:hidden;
    text-align:center;
    margin-top:2%; 

}
html
{
    
    overflow-y: hidden;
    overflow-x: hidden;
}
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 8px 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
  margin-top: 0.8%;
 
}
      </style>
    </head>
      <%
             String password=(String)session.getAttribute("password");
        String email=(String)session.getAttribute("email");
        
        String mobile=(String)session.getAttribute("mobile");
        String name=(String)session.getAttribute("name");
        String area=(String)session.getAttribute("area");
            session.setAttribute("email", email);
            session.setAttribute("password",password);
            session.setAttribute("area",area);
            session.setAttribute("mobile",mobile);
            session.setAttribute("name",name);
            
            
           
            Option o=new Option();
            String st=o.option();
            
            
        %>
        <%
                          String str=(String)session.getAttribute("str");
                          
                        %>
    <body>
        <div  class="bg">
        <nav class="navbar navbar-inverse" style="margin-bottom:0px;padding-bottom:0%; ">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="user_profile.jsp"><span class="glyphicon glyphicon-user"></span> <%=name%></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="userhome.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                      
                        
                         
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="login_user.html"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
    
        
</nav>
        
      
        <div style="float:left;margin-top:0%;margin-bottom:0%; ">
            <p style="font-family: Arial, Helvetica, sans-serif;font-size: 150%;"><u><strong>The customer's perception is our reality</strong></u></p>
        </div> 
           <div id="length" style="float:right">
      
       <form action="search.jsp" method="post">
                <SELECT name=area>
			<OPTION>SELECT AREA </OPTION>
			
                        <%out.print(st);%>
		</SELECT>
          
           
                    <SELECT name=service>
			<OPTION>SELECT SERVICE</OPTION>
			<OPTION>Teacher</OPTION>
			<OPTION>Carpenter</OPTION>
			<OPTION>Painter</OPTION>
			<OPTION>Electrician</OPTION>
                        <OPTION>Plumber</OPTION>
                    </SELECT>
           <input type="submit" class="button" name="button" value="SEARCH"/> 
       </form>   
       

</div>
        <br><br>
        <div id="images" >
            <figure>
                <img src="images/z1.jpg" alt=”Photo” width=200 height=150>
                <figcaption style="font-size:25px;"><a  href="work.jsp?u=Teacher&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Teacher</a></figcaption>
            </figure>
        </div>
        <div id="images">
            <figure>
                <img src="images/h2.jpg" alt=”Photo” width="200" height="150">
                <figcaption style="font-size:25px;"><a  href="work.jsp?u=painter&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Painter</a></figcaption>
            </figure>
        </div>
        <div id="images">
            <figure>
                <img src="images/ze.jpg" alt="Photo" width="200" height="150">
                <figcaption style="font-size:25px;"><a  href="work.jsp?u=carpenter&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Carpenter</a></figcaption>
            </figure>
        </div>
         <div id="images">
            <figure>
                <img src="images/z4.jpg" alt="Photo" width="200" height="150">
                <figcaption style="font-size:25px;"><a  href="work.jsp?u=Electrician&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Electrician</a></figcaption>
            </figure>
        </div>
         <div id="images">
            <figure>
                <img src="images/z5.jpg" alt="Photo" width="200" height="150">
                <figcaption style="font-size:25px;"><a  href="work.jsp?u=plumber&v=<%=name%>&r=<%=email%>&s=<%=password%>&t=<%=area%>&w=<%=mobile%>">Plumber</a> </figcaption>
            </figure>
        </div>
        <input type="hidden" name="name" value="<%=name%>"/>
        <input type="hidden" name="email" value="<%=email%>"/>
        <input type="hidden" name="password" value="<%=password%>"/>
         <input type="hidden" name="area" value="<%=area%>"/>
        <input type="hidden" name="mobile" value="<%=mobile%>"/>
    </div>
        </body>
</html>

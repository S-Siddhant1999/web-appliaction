<%-- 
    Document   : ss
    Created on : Apr 12, 2019, 12:38:06 AM
    Author     : raju
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String status=request.getParameter("u");
        %>    
          <h1><%=status%></h1>
               
    </body>
</html>

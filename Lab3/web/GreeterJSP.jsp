<%-- 
    Document   : GreeterJSP
    Created on : 24-Feb-2015, 11:40:10
    Author     : puser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="namedHelloBanner.html" %>
        Hello <%= request.getParameter("formName") %>
        
                
    </body>
</html>

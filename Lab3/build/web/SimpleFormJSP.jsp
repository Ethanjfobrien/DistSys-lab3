<%-- 
    Document   : SimpleFormJSP
    Created on : 24-Feb-2015, 11:28:22
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
        <form action="GreeterJSP.jsp" method="POST">
            enter name: <input type="text" name="formName">
            <input type="submit" value="submit">
        </form>
    </body>
</html>

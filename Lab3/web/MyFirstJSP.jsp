<%-- 
    Document   : MyFirstJSP
    Created on : 24-Feb-2015, 11:07:02
    Author     : puser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // get parameter names
            Enumeration<String> headers = request.getHeaderNames();
            while (headers.hasMoreElements()) {
                String header = headers.nextElement();
                out.println("<BR>Header Name: " + header + ", Value: "
                        + request.getHeader(header));
            }
        %>            
    </body>
</html>

<%-- 
    Document   : ForumHome
    Created on : 24-Feb-2015, 11:54:25
    Author     : puser
--%>

<%@page import="dataTypes.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" session="false" %>
<%@page import="java.util.ArrayList" %>
<%@page import="dataTypes.*" %>
<%@page import="javax.servlet.http.Cookie" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            private ArrayList<ForumThread> threads;
            private String userName;
            
            private Cookie getUserNameCookie(Cookie[] cookies) {
                for(Cookie cookie : cookies) {
                    if( cookie.getName().equals("userName")) {
                        return cookie;
                    }
                }
                return null;
            }
            
            private ForumThread generateSampleThread() {
                ForumThread sampleThread = new ForumThread("Blah", new String[]{"sample"});
                sampleThread.addMessage(new Message("hard coded","message1.<br>blah blah blah"));
                sampleThread.addMessage(new Message("hard coded","message2.<br>blah blah blah"));
                return sampleThread;
            }
            
            private String displayThread(ForumThread thread) {
                return "";
            }
        %>
        <h1 style="text-align: center">welcome to the forum!</h1>
        <h2>Threads</h2>
        <%
            Cookie[] cookies = request.getCookies();
            Cookie userNameCookie = getUserNameCookie(cookies);
            userNameCookie = userNameCookie != null ? userNameCookie : new Cookie("userNameCookie","default");
            userName = userNameCookie.getValue();
            threads.add(generateSampleThread());
            
            for(ForumThread thread : threads) {
                    out.write("title: " + thread.getTitle() + " keywords: " + thread.getKeywords().toString());
                    out.write("<br>");
            }
        %>
    </body>
</html>

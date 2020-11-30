
<%-- 
    Document   : index
    Created on : 30-Apr-2020, 4:00:11 AM
    Author     : HP
--%>

<%@page import="com.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Showing JDBC details!</h1>
         <%
            Connection con=ConnectionProvider.getConnection();       
        %>
        <h1><%= con %></h1>
    </body>
</html>

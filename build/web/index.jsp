

<%-- 
    Document   : index.jsp
    Created on : 28-Apr-2020, 2:48:48 PM
    Author     : Hp
--%>



<%@page import="com.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css/-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
    
    
    </head>
    <body>
        <!--navbar/-->
        <%--<%@include file="normal_navbar.jsp" %>--%>
        <div class="container-fluid p-0 m-0 ">
            <div class="jumbotron bg-dark text-white">
                <div class="container">
                <h3 class="display-3">
                    Welcome to Exam Portal
                </h3>
                    <p>Online Exam portal is the best mode to track the students’ capabilities and test them, propel them in high levels to act their best in the next attack.           </p>
                    <a href="register_jsp.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-plus"></span>Sign up</a>
                     
                     <a href="login_page.jsp"class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle"></span>Login</a>

                </div>
                
            </div>
        </div>
        
        
            <!--javascript/-->
 <script
  src="https://code.jquery.com/jquery-3.5.0.min.js"
  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
  crossorigin="anonymous"></script>
       
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="javascripts/myjavascript.js" type="text/javascript"></script>
<script>
    
    </script>
    </body>
</html>

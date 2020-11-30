<%-- 
    Document   : register_jsp
    Created on : 28-Apr-2020, 5:12:59 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
    

    </head>
    <body>
        <main class="p-5">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                          REGISTER HERE  
                        </div>
                        <h5 id="msg" class="center-align"></h5> 
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST">
  
  <div class="form-group">
    <label for="user_name">User Name</label>
    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
    
  </div>
                                
                                
                                <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password"  type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
                                
                                <div class="form-group">
    <label for="gender">Select Gender</label>
    <br>
    
    <input type="radio"  id="gender" name="gender" value="male">Male
       <input type="radio"  id="gender" name="gender" value="female">Female
  </div>
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Terms and Conditions</label>
  </div>
                                <br>

                                
  <button type="submit" class="btn btn-primary">Submit</button>
  <br>
                                    <a href="login_page.jsp">I have an account</a>
</form>
                        
                       
                        
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"
  integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
  crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>    
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="javascripts/myjavascript.js" type="text/javascript"></script>
<script>
    $(document).ready(function(){
        console.log("loaded")
        $('#reg-form').on('submit',function(event){
            event.preventDefault();
            
            let form=new FormData(this);
$.ajax({
               url:"RegisterServlet",
               type:'POST',
               data:form,
               success:function (data,textStatus,jqXHR){
                  console.log(data)
                  if(data.trim()==='done')
                  {
                      $('#msg').html("Successfully Registered")
                       $('#msg').addClass('green-text')
                  }else
                  {
                     $('#msg').html("Something went wrong on server") 
                     $('#msg').addClass('red-text')
                  }
                  
               },
               error:function (jqXHR,textStatus,errorThrown){
                   console.log(jqXHR)
                                        $('#msg').html("Something went wrong on server") 
                    $('#msg').addClass('red-text')
                   
               },
               processData: false,
               contentType: false
            });
            
        });
        
    });
    </script>
    </body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
        <%@ page language="java" import="java.sql.*" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Nagar Palika</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <script>
        $(document).ready(function(){
          //  alert();
            var sess = $("input#session").val();
            if(sess>5){
                alert("Authentication failed: Try after some time");
                $(location).attr('href',"authentication.jsp");
            }
            
            $("input#createaccount").click(function(){
               $("div#page1").hide(500); 
               $("div#page2").show(1000); 
            });
            
            $("input#password").focus(function(){
                var uname=$("input#uname").val();
                $.post("CheckUser", {queryString:uname}, function(data){
                   alert(data); 
                });
            });
        });
    </script>

</head>

<body>
    <%
HttpSession count = request.getSession();
int sess = Integer.parseInt(count.getAttribute("count").toString());  
%>
<input type="text" id="session" value="<%=sess%>" hidden="">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">नगर पालिका लॉग इन</h3>
                    </div>
                    <div class="panel-body">
                        
                        <div id="page1">
                        <form action="LoginVerify" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Username" id="username" name="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
                                <input type="button" id="createaccount" class="btn btn-lg btn-warning btn-block" value="Create Account">
                            </fieldset>
                        </form>
                            </div>
                        
                        <!-- login form -->  <!-- login form -->  <!-- login form -->  <!-- login form -->  
                        
                        
                        <div id="page2" hidden="">
                         <form action="" method="post">
   
    <div>
        <input class="form-control" type="text" name="name" id="name" placeholder="Enter full name">
    </div>
                             <br>
    <div>
        <input class="form-control" type="text" name="uname" id="uname" placeholder="Choose a username">
    </div>
                             <br>
    <div>
        <input class="form-control" type="text" name="password" id="password" placeholder="Enter Password">
    </div>
                             <br>
    <div>
        <input class="form-control" type="text" name="confirmpassword" id="confirmpassword" placeholder="Confirm Password">
    </div>
                             <br>
    <div>
       <select class="form-control" name="gender" id="gender"><option>Male<option>Female</select>
    </div>
                             <br>
    <div>
        <input class="form-control" type="text" name="phone" id="phone" placeholder="Enter Phone ">
    </div>
                             <br>
    <div>
        <input class="form-control" type="textarea" name="address" id="address" placeholder="Enter Address">
    </div>
                             <br>
    <div>
        <input class="form-control" type="file" name="photo" id="photo" placeholder="Upload Photo" value="Upload Photo">
    </div>
                             <br>
    <div>
        <input class="form-control" type="file" name="photoid" id="photoid" placeholder="Upload Photo" value="Upload Photo">
    </div>
<br>             
                                <input type="button" class="btn btn-lg btn-info btn-block" value="Submit">

             </form>

        </div>
    
                    </div>
                </div>
            </div>
        </div>
        </div>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
</body>

</html>

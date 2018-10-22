<!DOCTYPE HTML>
<html>
 <head>
        <%@ page import = "java.sql.*" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
try
{ 

HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString();   
String title=nagarpalika.getAttribute("title").toString();   

request.setCharacterEncoding("UTF-8");


%>

        <title><%=title%></title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


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
<style>
.shadow
{
    box-shadow: 10px 10px 10px #888888;
}
footer {
   position: static;
   bottom:0;
   width:100%;
}
#hidein
{
display:none;

}

</style>

    <script>
        $(document).ready(function(){
            $("div#one").mouseover(function(){
              $(this).addClass("shadow");
      
   });
            $("div#one").mouseout(function(){
              $(this).removeClass("shadow");
      
   });
            $("#showout").click(function(){
    $("#hidein").slideDown("slow");
  });
            $("#hidein").click(function(){
    $("#hidein").slideUp("slow");
  });
            $("#page-wrapper1").click(function(){
    $("#hidein").slideUp("slow");
  });
});
        
    </script>

</head>

<body>
    <form name="form" action="marriageedit1.jsp" method="post" target="mainframe">
      
    <table>
              <tr>
                  <td width="30%"><font color="black">Edit Certificate<br> Enter Registration Number</font></td>
                  <td><input class="form-control" type="text" name="regno" id="regno"></td>
                
              </tr>
             
              <tr>
                  <td><input type="submit" name="Submit" value="Submit"></td>
                  <td><input type="reset" name="Reset" value="Reset">   </td>
              </tr>
                      
          </table>
    </form>
    
        <iframe name="select" id="select" width="100%" height="720px" scrolling="yes" style="left: -100px;"></iframe>
   <%

}
catch(Exception e)
        {
out.print(e);
}
%>  
</body>
</html>

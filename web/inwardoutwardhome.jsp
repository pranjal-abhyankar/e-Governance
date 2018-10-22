<!doctype html>
<html>
    <head>
        <%@ page language="java" import="java.sql.*" %>
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
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;
     request.setCharacterEncoding("UTF-8");

Statement statement = connection.createStatement();
String title=null;
String info = "select * from master";
rs = statement.executeQuery(info);
while(rs.next())
       {
title = rs.getString("namehin");
}
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

    <div id="wrapper">
<div class="navbar-default sidebar" role="navigation" id="hidein">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="inward.jsp" target="mainframe"><i class="fa fa-dashboard fa-fw"></i><b>New Inward</b></a>
                        </li>
                        <li>
                            <a href="datatableinward.jsp" target="mainframe"><i class="fa fa-bar-chart-o fa-fw"></i><b>View Inward</b></a>
                            
                        </li>
                        <li>
                            <a href="outward.jsp" target="mainframe"><i class="fa fa-table fa-fw"></i><b>New Outward</b></a>
                        </li>
                        <li>
                            <a href="datatableoutward.jsp" target="mainframe"><i class="fa fa-edit fa-fw"></i><b>View Outward</b></a>
                        </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </div>
                <!-- /.sidebar-collapse -->
            </div>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            &nbsp;<button type="button" class="btn btn-primary btn-circle btn-lg" id="showout"><i class="fa fa-list"></i>
                            </button>
            
           
  <ul class="nav navbar-top-links navbar-right">
<%=emp_name%>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
        </nav>
        <div id="view">        <!-- /.navbar-header -->
    <div id="page-wrapper1">
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <%=title%>
                        </h1>
                        
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="home.jsp">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> विवाह प्रमाण पत्र
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
               <!-- /.col-lg-3 -->
            </div>
    

<iframe id="mainframe" name="mainframe" style="margin:0; width:100%; height:150px; border:none; overflow:hidden;" scrolling="no" onload="AdjustIframeHeightOnLoad()"></iframe>

<script type="text/javascript">
function AdjustIframeHeightOnLoad() { document.getElementById("mainframe").style.height = document.getElementById("mainframe").contentWindow.document.body.scrollHeight + "px"; }
function AdjustIframeHeight(i) { document.getElementById("mainframe").style.height = parseInt(i) + "px"; }
</script>


    
            <!-- /.row -->
            <%
}
catch(Exception e){
    out.print(e);
response.sendRedirect("authentication.jsp");}
%>
<footer>
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <ul class="nav navbar-top-links navbar-center">
                <center><b>&COPY;2014 Web Development Team - Innovative Infosoft</b>
                <br>
                                <a class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
                                <a class="btn btn-social-icon btn-google-plus"><i class="fa fa-google-plus"></i></a>
                                <a class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
                                <a class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
</center>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
        </nav>
            <!-- /#wrapper -->
</footer>
    </div>     </div>
   <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

</body>

</html>

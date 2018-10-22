<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Birth Certificate</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
  <script src="js/jquery-1.11.0.js"></script>
  <script src="js/jquery-1.6.1.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>
                  <table>
             
                  
          
     <form name="form" target="_blank" action="birthprinthindi.jsp" method="post">
                      
              <tr>
                  <td width="30%"><font color="black">Print Hindi Certificate</font></td>
                  <td><input class="form-control"type="text" name="birthhindi" id="birthhindi"></td>
                
              </tr>
             <tr><td>&nbsp;</td></tr>
              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
              </tr>
    </form>
                           <tr><td>&nbsp;</td></tr>
        
<form name="form" target="_blank" action="birthprinteng.jsp" method="post">
                      
              <tr>
                  <td width="30%"><font color="black">Print English Certificate</font></td>
                  <td><input class="form-control"type="text" name="birthenglish" id="birthenglish"></td>
                  
              </tr>
                          <tr><td>&nbsp;</td></tr>

              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
                 <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
              </tr>
    </form>
             <tr><td>&nbsp;</td></tr>

    <td><form action="datatablebirth.jsp" method="post" target="select"><input class="btn btn-outline btn-primary" type="submit" name="Search" value="Search"></form></td>

</tr>
          </table>
                <iframe name="select" id="select" width="100%" height="720px" scrolling="yes" style="left: -100px;"></iframe>

</body>
</html>

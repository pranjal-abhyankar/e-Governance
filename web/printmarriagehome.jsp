<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Marriage Certificate</title>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<%
HttpSession nagarpalika=request.getSession();
String title=nagarpalika.getAttribute("title").toString();
%>
    <title><%=title%></title>

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
     <form name="form" target="_blank" action="printmarriage.jsp" method="post">
    
    <table>
             
                  
          
                      
              <tr>
                  <td width="30%"><font color="black">Print Certificate &nbsp;&nbsp;</font></td>
                  <td><input class="form-control" type="text" name="marriage" id="marriage"></td>
                
              </tr>
             <tr><td>&nbsp;</td></tr>
              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
              </tr>
                      

          </table>
    </form>
                <iframe class="form-control" name="select" id="select" width="100%" height="720px" scrolling="yes" style="left: -100px;"></iframe>

</body>
</html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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

     <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>
    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>

   
    
            <%
try
               {

    
    HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();



 
%>
                               
          
     <form name="form" target="mainframe" action="Propertyreceipt2" method="post">
                      
        <table>
              <tr>
                  <td><font color="black">Receipt Date</font></td><td><input class="form-control" type="date" name="date" id="date"/>
                  <td><font color="black">Zone</font></td><td><select class="form-control" id="zone" name="zone"><option selected>Select Zone</option>

                          <%String zones = "select zonename from zonename"; 
                          rs = statement.executeQuery(zones); while(rs.next()) 
                            { %><option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option><% } %>
  <%
rs.close();
connection.close();
}
catch(Exception e)
        {
out.print(e);
}
  
%>
</select>
                                        <td><font color="black">Year</font></td>
                                        <td>
                                            <select class="form-control" name="year" id="year">
                                                <option>2012-2013</option>
                                                <option>2013-2014</option>
                                                <option selected="">2014-2015</option>
                                                <option>2015-2016</option>
                                            </select>

              </tr>
              
              <tr>
                  <td><font color="black">Receipt Book No.</font></td><td><input class="form-control" type="text" name="receiptno" id="receiptno"></td>
                  <td><font color="black">Starting No.</font></td><td><input class="form-control" type="text" name="startingno" id="startingno"></td>
              </tr>
 0             <tr>
                  <td></td>        

                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
           
       
        
        
    <td><input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
 </tr>
          </table>
</form>

</body>
</html>

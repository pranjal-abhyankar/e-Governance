<%-- 
    Document   : button1
    Created on : Sep 8, 2013, 5:12:52 PM
    Author     : Ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <title></title>
    </head>
    <body>
         <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>
<%String s1;
HttpSession session1;
session1=request.getSession();
s1=session1.getAttribute("uname").toString();
%>
  <%        
  String serviceno = request.getParameter("serviceno");
  String regno = serviceno.substring((serviceno.lastIndexOf('/'))+1);
  String prefix = serviceno.substring(0, (serviceno.lastIndexOf('/'))+1);
 String father = null;
 String owner = null;
 String address = null;
 String house_no = null;
         out.print(prefix); out.print(regno);
  try 
{
    HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();  
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();

String view = "select * from watermaster where prefix = '"+prefix+"' and regno = '"+regno+"'";
rs = statement.executeQuery(view);
while(rs.next())
       {
            owner = rs.getString("namehin");
            father = rs.getString("fatherhin");
            address = rs.getString("colonyhin");
            house_no = rs.getString("house_no");
        }
   // String temp = "update temp1_"+s1+" set receiptno = receiptno-1";
  //statement.executeUpdate(temp);
    //statement.close(); 
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font style="color: white"> <strong>
        <%
%>
        &nbsp; 
        <%
out.print(owner);%>
       ~~~ &nbsp; 
&nbsp;       &nbsp;
        <%
%>
&nbsp;        <%
out.print(father);%>
&nbsp; ~~~       <%
%>
&nbsp;        <%
out.print(house_no);%>
&nbsp;&nbsp; ~~~    &nbsp;
       <%
%>
&nbsp;        
        <%
out.print(address);
        %></strong></font>
        <%
connection.close(); } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 
 response.sendRedirect("enterreceiptwater.jsp");

} 
%>
    </body>
</html>

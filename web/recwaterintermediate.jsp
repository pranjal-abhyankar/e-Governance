<%-- 
    Document   : button1
    Created on : Sep 8, 2013, 5:12:52 PM
    Author     : Ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script language="JavaScript" src="js/htmlDatePicker.js" type="text/javascript"></script>
        <link href="css/htmlDatePicker.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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
  String receiptdate = request.getParameter("Date");
  String zone = request.getParameter("zone");
  String bookno = request.getParameter("receiptno");
  String receiptno = request.getParameter("startingno");
  
  out.print(receiptdate);out.print(zone);out.print(bookno);out.print(receiptno);
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
{
String delete = "delete from temp1water_"+s1+" where operator = '"+s1+"'";
out.print(delete);
 statement.executeUpdate(delete);
String delete1 = "delete from receiptwater_"+s1+" where verify = 'No'";
 statement.executeUpdate(delete1);
if(receiptdate!=null){
  String sql = "insert into temp1water_"+s1+" (receiptdate, zone, no, operator) values ('"+receiptdate+"' , '"+zone+"' , '"+bookno+"/"+receiptno+"' , '"+s1+"')";
 out.print(sql);
 statement.executeUpdate(sql);
    String sql1 = "insert into receiptwater_"+s1+" (receiptdate, zone, receiptno, operator) values ('"+receiptdate+"' , '"+zone+"' , '"+bookno+"/"+receiptno+"' , '"+s1+"')";
 out.print(sql1);
 statement.executeUpdate(sql1);
 statement.executeUpdate(sql);}}
response.sendRedirect("enterreceiptwater.jsp");
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

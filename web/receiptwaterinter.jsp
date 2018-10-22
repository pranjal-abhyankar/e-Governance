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
        <title>JSP Page</title>
    </head>
    <body>
        <%
String zone = request.getParameter("zone");
  %>
  <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>
<%

String s1;
HttpSession session1;
session1=request.getSession();
s1=session1.getAttribute("uname").toString();
  String bookno = null;
  String receiptno =null;
  
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
ResultSet rs1 = null;
statement = connection.createStatement();
String v1 = null;
String previous = "Select * from temp1water_"+s1+" where operator = '"+s1+"'";
rs = statement.executeQuery(previous);
while(rs.next()){ zone= rs.getString(2); receiptno=rs.getString(4);}
String verify = "select verify from receiptwater_"+s1+" where operator = '"+s1+"' and receiptno = '"+receiptno+"'";
rs1 = statement.executeQuery(verify);
while(rs1.next())
       {v1 = rs1.getString(1);}
  
String waterbal = request.getParameter("waterbal");
String watercurrent = request.getParameter("watercurrent");
String surchargebal = request.getParameter("surchargebal");
String surchargecurrent = request.getParameter("surchargecurrent");
String ward = request.getParameter("ward");
String serviceno = request.getParameter("service");
String property_holder = request.getParameter("propertyholder");
String father = request.getParameter("father");
String payment = request.getParameter("payment");
String remarks = request.getParameter("remarks");
String receipt = receiptno.substring(receiptno.indexOf('/')+1);
String book = receiptno.substring(0, receiptno.indexOf('/'));
String receiptdate = request.getParameter("date");
String prefix_year= request.getParameter("prefix_year");
int a = Integer.parseInt(receipt);
int c = a+1;
int b = a; 
String update = "UPDATE receiptwater_"+s1+" SET receiptdate = '"+receiptdate+"', serviceno = '"+serviceno+"', property_holder = '"+property_holder+"', father = '"+father+"', ward_no = '"+ward+"', water_bal = '"+waterbal+"', surcharge_bal = '"+surchargebal+"', water_current = '"+watercurrent+"' , surcharge_current = '"+surchargecurrent+"', payment = '"+payment+"', remarks = '"+remarks+"', operator = '"+s1+"', verify = 'YES' WHERE receiptno = '"+book+"/"+b+"'";
statement.executeUpdate(update);
String total = "update receiptwater_"+s1+" set total = water_bal + water_current + surcharge_bal + surcharge_current";
statement.executeUpdate(total);
String up = "Update temp1water_"+s1+" set no = '"+book+"/"+c+"', receiptdate = '"+receiptdate+"'";
statement.executeUpdate(up);
{

String sql1 = "insert into receiptwater_"+s1+" (receiptdate, zone, receiptno, operator) values ('"+receiptdate+"' , '"+zone+"' , '"+book+"/"+c+"' , '"+s1+"')";
statement.executeUpdate(sql1);
}
response.sendRedirect("enterreceiptwater.jsp");
statement.close(); 
connection.close(); } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aalogin_pithampur","aalogin_npp","Ajk110292");
Statement statement = null; 
ResultSet rs = null; 
ResultSet rs1 = null;
statement = connection.createStatement();
String previous = "Select * from temp1water_"+s1+" where operator = '"+s1+"'";
rs = statement.executeQuery(previous);
while(rs.next()){ zone= rs.getString(2); receiptno=rs.getString(4);}
String receiptdate = request.getParameter("date");
String waterbal = request.getParameter("waterbal");
String watercurrent = request.getParameter("watercurrent");
String surchargebal = request.getParameter("surchargebal");
String surchargecurrent = request.getParameter("surchargecurrent");
String ward = request.getParameter("ward");
String serviceno = request.getParameter("service");
String property_holder = request.getParameter("propertyholder");
String father = request.getParameter("father");
String payment = request.getParameter("payment");
String remarks = request.getParameter("remarks");
String receipt = receiptno.substring(receiptno.indexOf('/')+1);
String book = receiptno.substring(0, receiptno.indexOf('/'));
String prefix_year= request.getParameter("prefix_year");

out.print(book);
int a = Integer.parseInt(receipt);
int c = a+1;
int b = a; 

String update = "UPDATE receiptwater_"+s1+" SET receiptdate = '"+receiptdate+"', serviceno = '"+serviceno+"', property_holder = '"+property_holder+"', father = '"+father+"', ward_no = '"+ward+"', water_bal = '"+waterbal+"', surcharge_bal = '"+surchargebal+"', water_current = '"+watercurrent+"' , surcharge_current = '"+surchargecurrent+"', payment = '"+payment+"', remarks = '"+remarks+"', operator = '"+s1+"', verify = 'YES', prefix_year = '"+prefix_year+"' WHERE receiptno = '"+book+"/"+b+"'";
statement.executeUpdate(update);
String total = "update receiptwater_"+s1+" set total = water_bal + water_current + surcharge_bal + surcharge_current";
statement.executeUpdate(total);
String up = "Update temp1water_"+s1+" set no = '"+book+"/"+c+"', receiptdate = '"+receiptdate+"'";
statement.executeUpdate(up);
{

String sql1 = "insert into receiptwater_"+s1+" (receiptdate, zone, receiptno, operator) values ('"+receiptdate+"' , '"+zone+"' , '"+book+"/"+c+"' , '"+s1+"')";
statement.executeUpdate(sql1);
}
response.sendRedirect("enterreceiptwater.jsp");
} 
%> 
    </body>
</html>

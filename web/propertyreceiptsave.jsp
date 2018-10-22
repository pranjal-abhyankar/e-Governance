<%-- 
    Document   : button1
    Created on : Sep 8 ,  2013 ,  5:12:52 PM
    Author     : Ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/htmlDatePicker.css" rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    </head>
    <body>
  <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>
<%
String s1;
HttpSession session1;
session1=request.getSession();
s1=session1.getAttribute("uname").toString();
  String bookno = session1.getAttribute("bookno").toString();
  String receiptno =session1.getAttribute("receiptno").toString();
  String zone =session1.getAttribute("zone").toString();
  String year =session1.getAttribute("year").toString();
  
  
  try 
{
      
      
                    HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
/* Create string of connection url within specified format with machinename ,  port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();
  
String propertybal = request.getParameter("propertybal");
String propertycurrent = request.getParameter("propertycurrent");
String consolidatebal = request.getParameter("consolidatebal");
String consolidatecurrent = request.getParameter("consolidatecurrent");
String urbanbal = request.getParameter("urbanbal");
String urbancurrent = request.getParameter("urbancurrent");
String educationbal = request.getParameter("educationbal");
String educationcurrent = request.getParameter("educationcurrent");
String otherbal = request.getParameter("otherbal");
String othercurrent = request.getParameter("othercurrent");
String surchargebal = request.getParameter("surchargebal");
String surchargecurrent = request.getParameter("surchargecurrent");
String ward = request.getParameter("ward");
String serviceno = request.getParameter("serviceno");
String property_holder = null;
String father = null;
String payment = request.getParameter("payment");
String remarks = request.getParameter("remarks");
String receiptdate = request.getParameter("date");
String verify = "yes";
String operator = s1;
String prefix = serviceno.substring(0, serviceno.lastIndexOf('/'));
String regno = serviceno.substring(serviceno.lastIndexOf('/')+1);

String ph = "select property_holder, father_husband, ward_name from pro where prefix = '"+prefix+"' and regno = '"+regno+"'";
rs = statement.executeQuery(ph);
while(rs.next())
       {
property_holder = rs.getString(1);
father = rs.getString(2);
ward = rs.getString(3);

}
out.print(father);
out.print(property_holder);

String receipt = "INSERT INTO property_receipt (receiptdate,zone,bookno,receiptno,serviceno,property_holder,father,ward_no,property_bal,consolidate_bal,education_bal,urban_bal,other_bal,surcharge_bal,property_current,consolidate_current,education_current,urban_current,other_current,surcharge_current,payment,remarks,operator,verify,year) VALUES ('"+receiptdate+"','"+zone+"','"+bookno+"','"+receiptno+"','"+serviceno+"','"+property_holder+"','"+father+"','"+ward+"','"+propertybal+"','"+consolidatebal+"','"+educationbal+"','"+urbanbal+"','"+otherbal+"','"+surchargebal+"','"+propertycurrent+"','"+consolidatecurrent+"','"+educationcurrent+"','"+urbancurrent+"','"+othercurrent+"','"+surchargecurrent+"','"+payment+"','"+remarks+"','"+operator+"','"+verify+"','"+year+"')";
statement.executeUpdate(receipt);

out.print(receipt);

session1.setAttribute("receiptno", Integer.parseInt(receiptno)+1);
response.sendRedirect("enterreceipt.jsp");
statement.close(); 
connection.close(); } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 

out.print(ex);
}
%> 
    </body>
</html>

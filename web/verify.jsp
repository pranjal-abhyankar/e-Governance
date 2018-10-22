<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
  String regno = str.substring((str.lastIndexOf('/'))+1);
  String prefix = str.substring(0, (str.lastIndexOf('/')));

try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aalogin_pithampur", "root", "root"); 
//Add the data into the database
String sql = "select property_holder_hin, father_husband_hin, address, house_no from pro where prefix = '"+prefix+"' and regno = '"+regno+"'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
//out.print("<select name = \"zone\" id=\"zone\"  onblur=\"lookup2(this.value);\">");
while (rs.next ()){
out.print("Property Holder:   ");
out.println(rs.getString(1));
out.print("Father Name:   ");
out.println(rs.getString(2));
out.print("Address:   ");
out.println(rs.getString(3));
out.print("House No:   ");
out.println(rs.getString(4));
}
//out.print("</select>");
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
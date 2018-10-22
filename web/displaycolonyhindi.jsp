<meta http-equiv="content-type" content="text/html; charset=utf-8; charset=UTF-8">
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@ page import = "java.util.*" %>

<%@ page import = "java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
try {
     HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+""); 
//Add the data into the database
String sql = "SELECT hcolonyname FROM colonyname WHERE colonyname LIKE '"+str+"%'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
//out.print("<select name = \"ward\" id=\"ward\">");
while (rs.next ()){
out.println("<option>"+rs.getString(1)+"</option>");
}
//out.print("</select>");
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
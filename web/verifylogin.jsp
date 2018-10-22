<%@ page language="java" import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.setContentType("text/html");%>
<%
     request.setCharacterEncoding("UTF-8");

String emp_name=request.getParameter("username");
String emp_pass=request.getParameter("password");
String username=null;
String password=null;
String database=null;
String host=null;
try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/municipal_master", "root", "root"); 
//Add the data into the database
String sql = "SELECT * FROM master WHERE name = 'Nagar Palika Pithampur'";
Statement stm = con.createStatement();
stm.executeQuery(sql);
String url=null;
String title = null;
ResultSet rs= stm.getResultSet();
//out.print("<select name = \"ward\" id=\"ward\">");
while (rs.next ()){
username = rs.getString("username");
password = rs.getString("password");
database = rs.getString("database");
title=rs.getString("namehin");
host=rs.getString("host");

}
con = DriverManager.getConnection("jdbc:mysql://"+host+":3306/"+database+"", ""+username+"", ""+password+""); 
stm = con.createStatement();
int flag = 0; 
String check="select * from employee where username = '"+emp_name+"' and password = '"+emp_pass+"'";
rs = stm.executeQuery(check);
while(rs.next())
       {
            flag=1;

        }
int ct=0;
if(flag==0)
{
    HttpSession count = request.getSession();
    ct = Integer.parseInt(count.getAttribute("count").toString());
    ct++;
    count.setAttribute("count", ct);
    out.print(ct);
    response.sendRedirect("login.jsp");

}
else
{
    HttpSession nagarpalika = request.getSession();
    nagarpalika.setAttribute("emp_name", emp_name);
    nagarpalika.setAttribute("username", username);
    nagarpalika.setAttribute("password", password);
    nagarpalika.setAttribute("database", database);
    nagarpalika.setAttribute("title", title);
    nagarpalika.setAttribute("host", host);

response.sendRedirect("home.jsp");
}
//out.print("</select>");
}catch(Exception e){
response.sendRedirect("authentication.jsp");}
%>
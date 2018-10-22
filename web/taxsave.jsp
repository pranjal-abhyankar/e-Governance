<%@ page language="java" import="java.sql.*" %>

<% response.setContentType("text/html");%>
<%
 String voucherno=request.getParameter("voucherno");
 String head=request.getParameter("head");
 String per=request.getParameter("per");
 String dedamt=request.getParameter("dedamt");
 String chequeno=request.getParameter("chequeno");
 String partyname=request.getParameter("partyname");
 String acchead=request.getParameter("acchead");
 String through=request.getParameter("through");
 String chequedate=request.getParameter("chequedate");
//String category_id = str.substring(0, str.indexOf("."));
try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur", "root", "root"); 
//Add the data into the database
String sql = "insert into tax (taxtype,taxpercentage,accounthead,partyname,chequeno,chequedate,chequebank,taxamount,voucherno) values ('"+head+"','"+per+"','"+acchead+"','"+partyname+"','"+chequeno+"','"+chequedate+"','"+through+"','"+dedamt+"','"+voucherno+"')";
out.print(sql);
Statement stm = con.createStatement();
stm.executeUpdate(sql);
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>

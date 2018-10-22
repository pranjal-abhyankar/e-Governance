<%-- 
    Document   : asd
    Created on : Sep 1, 2014, 10:14:05 PM
    Author     : Nivedita
--%>
                        <%@ page import = "java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
try
{
     String voucherno=request.getParameter("paymentvoucherno");
     String voucherdate=request.getParameter("voucherdate");
 String chequebank=request.getParameter("chequebank");
 String chequeamount=request.getParameter("chequeamount");
 String chequeno=request.getParameter("chequeno");
 String partyname=request.getParameter("partyname");
 String acchead=request.getParameter("acchead");
 String totalamount=request.getParameter("totalamount");
 String totaladded=request.getParameter("totaladded");
 String totaldeducted=request.getParameter("totaldeducted");
 String chequedate=request.getParameter("chequedate");
 String paymentmode=request.getParameter("paymentmode");
 String narration=request.getParameter("narration");

 Class.forName("com.mysql.jdbc.Driver");
 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur", "root", "root");

ResultSet rs = null;
Statement statement = connection.createStatement();
String partysave = "insert into payment values ('"+voucherno+"','"+voucherdate+"','"+partyname+"','"+acchead+"','"+narration+"','"+paymentmode+"','"+totalamount+"','"+chequeamount+"','"+totaldeducted+"','"+totaladded+"','"+chequeno+"','"+chequebank+"','"+chequedate+"')";
statement.executeUpdate(partysave);  
}
catch(Exception e){out.print(e);}
response.sendRedirect("payment1.jsp");
%> 
    </body>
</html>

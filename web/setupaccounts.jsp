<%-- 
    Document   : setupaccount
    Created on : Aug 24, 2014, 4:18:04 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ page language="java" import="java.sql.*" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <script src="js/jquery-1.6.1.min.js"></script>
    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   
    
        <script>
            $(document).ready(function(){
                $("input#addbank").click(function(){
                    $("td#abank").toggle(500);
                });
                
                $("input#addtax").click(function(){
                    $("td#atax").toggle(500);
                });
                
                $("input#addaccounthead").click(function(){
                    $("td#aaccounthead").toggle(500);
                });
                
                $("input#removebank").click(function(){
                    $("td#rbank").toggle(500);
                });
                
                $("input#removetax").click(function(){
                    $("td#rtax").toggle(500);
                });
                
                $("input#removeaccounthead").click(function(){
                    $("td#raccounthead").toggle(500);
                });
            });
        </script>
    </head>
    <body><font color="black">
      <div  class="container">
        <form action="setupaccounts.jsp" method="post">
        <table>
            <tr>
                <th>Bank</th>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>Add :</td>
                <td><input type="button"  class="btn btn-outline btn-primary" id="addbank" name="addbank" value="add"></td>
            <div hidden="hidden" id="abank">
                <td hidden="hidden" id="abank"><input  class = "form-control" type="text" id="abankname" name="abankname" placeholder="Enter bank name..."></td>
                <td hidden="hidden" id="abank"><input  class = "form-control" type="text" id="abankcode" name="abankcode" placeholder="Enter bank code..."></td>
            </div>
                <td>Remove :</td>
                <td><input  class="btn btn-outline btn-primary" type="button" id="removebank" name="removebank" value="remove"></td>
        <div hidden="hidden" id="rbank">
                <td hidden="hidden" id="rbank"><input  class = "form-control" type="text" id="rbankname" name="rbankname" placeholder="Enter bank name..."></td>
                <td hidden="hidden" id="rbank"><input  class = "form-control" type="text" id="rbankcode" name="rbankcode" placeholder="Enter bank code..."></td>
            </div>    
        </tr>
            <tr>
                
                
            </tr>
        </table>
<hr>        
        
        <table>
            <tr>
                <th>Tax</th>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>Add :</td>
                <td><input  class="btn btn-outline btn-primary" type="button" id="addtax" name="addtax" value="add"></td>
                <div hidden="hidden" id="atax">
                <td hidden="hidden" id="atax"><input  class = "form-control" type="text" id="ataxname" name="ataxname" placeholder="Enter bank name..."></td>
            </div>
                <td>Remove :</td>
                <td><input  class="btn btn-outline btn-primary" type="button" id="removetax" name="removetax" value="remove"></td>
        <div hidden="hidden" id="rtax">
                <td hidden="hidden" id="rtax"><input  class = "form-control" type="text" id="rtaxname" name="rtaxname" placeholder="Enter bank name..."></td>
                </div>    
        </tr>
        </table>
   <hr>     
        
   <table hidden="">
            <tr>
                <th>Account Head</th>
            </tr>    
            <tr><td>&nbsp;</td></tr>
        </table>
   <table hidden="">
            <tr>
                <td>Add :</td>
                <td><input class="btn btn-outline btn-primary" type="button" id="addaccounthead" name="addaccounthead" value="add"></td>
                <div hidden="hidden" id="aaccounthead">
                <td hidden="hidden" id="aaccounthead"><input  class = "form-control" type="text" id="aaccountheadname" name="aaccountheadname" placeholder="Enter bank name..."></td>
            </div>
            <td>Remove :</td>
                <td><input class="btn btn-outline btn-primary" type="button" id="removeaccounthead" name="removeaccounthead" value="remove"></td>
            <div hidden="hidden" id="raccounthead">
                <td hidden="hidden" id="raccounthead"><input  class = "form-control" type="text" id="raccountheadname" name="raccountheadname" placeholder="Enter bank name..."></td>
            </div>
        </tr>
        </table>
   
   <hr>
   <input class="btn btn-outline btn-primary" type="submit" name="submit" id="submit">
            </form>
           <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>

       <%
try
               {

                   
                    HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
                   
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"?useUnicode=true&characterEncoding=UTF-8", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();

String abankname= request.getParameter("abankname");
String abankcode= request.getParameter("abankcode");
String rbankname= request.getParameter("rbankname");
String rbankcode= request.getParameter("rbankcode");
String aaccountheadname= request.getParameter("aaccountheadname");
String raccountheadname= request.getParameter("raccountheadname");
String atax= request.getParameter("ataxname");
String rtax= request.getParameter("rtaxname");

if(abankname.isEmpty()==false)
{
    String addbank = "insert into bank (bank_name) values ('"+abankname+"')";
    statement.executeUpdate(addbank);
    
}
/*if(aaccountheadname!=null)
{
    String addbank = "insert into accheadpay values ('"+abankname+"')";
    statement.executeUpdate(addbank);
}*/
if(atax.isEmpty()==false)
{
    String addbank = "insert into tax_info (taxtype) values ('"+atax+"')";
    statement.executeUpdate(addbank);
    out.print(addbank);
}

if(rbankname.isEmpty()==false)
{
    String addbank = "delete from bank where bank_name = '"+rbankname+"'";
    statement.executeUpdate(addbank);
}
/*if(aaccountheadname!=null)
{
    String addbank = "insert into accheadpay values ('"+abankname+"')";
    statement.executeUpdate(addbank);
}*/
if(rtax.isEmpty()==false)
{
    String addbank = "delete from tax_info where taxtype = '"+rtax+"'";
    statement.executeUpdate(addbank);
}


rs.close();
connection.close();
}
catch(Exception e)
        {
//out.print(e);
}
  
%>
</div>
   </font></body>
</html>

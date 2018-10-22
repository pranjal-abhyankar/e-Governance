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
    
    <%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%
    String title=null;
    try{
HttpSession nagarpalika=request.getSession();
title=nagarpalika.getAttribute("title").toString();


                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
                   
 Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;

Statement statement = connection.createStatement();

String sql="select zonename from zonename";

%>
    <title><%=title%></title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form method="post" action="RecWaterIntermediate">
        <table>
              <tr>
                  <td><font color="black">Receipt Date</font></td><td><input class="form-control" type="date" name="Date" id="Date">
                  <td><font color="black">Zone</font></td>
                  <td><select class="form-control" name="zone" id="zone">
                          <%
                          rs=statement.executeQuery(sql);
                        while(rs.next())
                            {
                          %>
                          <option><%=rs.getString(1)%></option>
                          <%
                            }
    }
                          catch(Exception e){}
                          
}%>
      </select>
                  <td><font color="black">Zone</font></td><td><select class="form-control" name="prefix_year" id="prefix_year"><option>2012-2013</option>
        <option selected>2013-2014</option>
        <option>2014-2015</option>
        <option>2015-2016</option>
              </tr>
              
              <tr>
                  <td><font color="black">Receipt Book No.</font></td><td><input class="form-control" type="text" name="receiptno" id="receiptno"></td>
                  <td><font color="black">Starting No.</font></td><td><input class="form-control" type="text" name="startingno" id="startingno"></td>
              </tr>
              <tr>
                  <td></td>        

                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
           
       
        
        
    <td><input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit" onclick="return validate()"></td>
 </tr>
          </table>
</form>   
                 
        <script language="javascript">
function validate()
{
    var v1,v2,v3,v4;
    v1=document.getElementById("Date").value;
    v2=document.getElementById("zone").value;
    v3=document.getElementById("receiptno").value;
    v4=document.getElementById("startingno").value;
    
if(v1=="")
        {
            alert("please insert date");
            return false;
        }
 if(v2=="")
        {
            alert("please insert zone");
            return false;
        }
       

        if(v3=="")
        {
            alert("please insert receipt number");
            return false;
        }
        if(v4=="")
        {
            alert("please insert startng number"); 
            return false;
        }
        
}
</script> 
        
    </body>
</html>

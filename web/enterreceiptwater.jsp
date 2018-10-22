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

   

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
  String receiptdate = null;
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
String z1 = null;
String previous = "Select * from temp1water_"+s1+" where operator = '"+s1+"'";
rs = statement.executeQuery(previous);
while(rs.next()){zone= rs.getString(2); receiptno=rs.getString(4);}
String verify = "select verify, zone from receiptwater_"+s1+" where operator = '"+s1+"' and receiptno = '"+receiptno+"'";
rs1 = statement.executeQuery(verify);
while(rs1.next())
       {v1 = rs1.getString(1);
        z1 = rs1.getString(2);}
   if(z1.equalsIgnoreCase("Dhannad Zone")){z1="DHK/WTR/";}
   if(z1.equalsIgnoreCase("Kheda Zone")){z1="KHD/WTR/";}
   if(z1.equalsIgnoreCase("Bagdun Zone")){z1="BAG/WTR/";}
   if(z1.equalsIgnoreCase("Hausing Zone")){z1="HBC/WTR/";}
   if(z1.equalsIgnoreCase("Sagore Zone")){z1="SGR/WTR/";}
   if(z1.equalsIgnoreCase("Pithampur Zone")){z1="PTP/WTR/";}
%>
    <form action="verifywater.jsp" method="post" target="verify">
        <table>
<td><font color="black">Service No</font></td><td><input class="form-control"  type="text" name="serviceno" id="serviceno" value="<%=z1%>" onblur="return getvalue()"><img id="myImage" src="images/wrong.jpg">
                  <td><input class="btn btn-outline btn-primary" type="submit" name="verify" value="Verify"><input class="btn btn-outline btn-primary" type="submit" name="confirm" value="Confirm" onclick="return changeSrc()"></td>       
</table>
</form>
                  <table>
             
              <tr>
                  
          
                  <form name="form" target="button" action="receiptwaterinter.jsp" method="post">
                      
<%previous = "Select * from temp1water_"+s1+" where operator = '"+s1+"'";
rs = statement.executeQuery(previous);
while(rs.next()){%>
                   <td><font color="black">Receipt date</font></td><td><input class="form-control" type="text" name="date" id="date" readonly onClick="GetDate(this);" value="<%=rs.getString(1)%>"><% } %>
                   <td><input class="form-control" type="text" name="service" id="service" hidden=""></td>
              </tr>
               <tr>
                  <td><font color="black">Payment Mode</font></td><td><select class="form-control" name="payment" id="payment"><option>Cash</option><option>Cheque</option></select>
                  <td><font color="black">Remarks</font></td><td><input class="form-control" type="text" name="remarks" id="remarks">
</tr>
          </table>
<table>
    <tr>
        <th></th><th><font color="black">Balance</font></th><th></th><th><font color="black">Current</font></th><th><font color="black">
            Receipt No--- </th><th> <font color="black">  <%out.print(receiptno);
  %></font></th>
        </font>
    </tr>
              <tr>
                  <td width="30%"><font color="black">Water Tax</font></td><td><input class="form-control" type="text" onFocus="if(this.value=='0'){this.value=''}" value="0" onblur="return sum()"  name="waterbal" id="waterbal"></td>
                  <td><font color="black"></font></td><td><input class="form-control" type="text" onFocus="if(this.value=='0'){this.value=''}" value="0" onblur="return sum()" name="watercurrent" id="watercurrent"></td>
              </tr>
               <tr>
                  <td width="30%"><font color="black">Surcharge</font></td><td><input class="form-control" type="text" onFocus="if(this.value=='0'){this.value=''}" value="0" onblur="return sum()"  name="surchargebal" id="surchargebal"></td>
                  <td><font color="black"></font></td><td><input class="form-control" type="text" onFocus="if(this.value=='0'){this.value=''}" value="0" onblur="return sum()"  name="surchargecurrent" id="surchargecurrent"></td>
                  <td><font color="black"><div align="right">Total</div></font></td>

                  <td><input class="form-control" type="text" name="surchargecurrent" id="surchargetotal" readonly=""></td>
              </tr>
             
              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit" onclick="return validate()"></td>
    <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
    </form>

    <td><form action="waterdatatable.jsp" method="post" target="select"><input class="btn btn-outline btn-primary" type="submit" name="Search" value="Search"></form></td>

    <td><form action="viewwater.jsp" method="post" target="select"><input class="btn btn-outline btn-primary" type="submit" name="View" value="View"></form></td>
<td><form action="receiptwater.jsp" method="post" target="button"><input class="btn btn-outline btn-primary" type="submit" name="Back" value="Back"></form></td>    
</tr>
          </table>
        <script language="javascript">
            function getvalue()
            {
                       var serviceno = document.getElementById('serviceno').value;
                       document.getElementById('service').value = serviceno;

            }
            
            
        </script>
            <script language="javascript">
                function sum() {
       var waterbal = document.getElementById('waterbal').value;
       var watercurrent = document.getElementById('watercurrent').value;
       if (waterbal == "")
           waterbal = 0;
       if (watercurrent == "")
           watercurrent = 0;
       var surchargebal = document.getElementById('surchargebal').value;
       var surchargecurrent = document.getElementById('surchargecurrent').value;
       if (surchargebal == "")
           surchargebal = 0;
       if (surchargecurrent == "")
           surchargecurrent = 0;

       var result = parseInt(surchargebal) + parseInt(surchargecurrent) + parseInt(waterbal) + parseInt(watercurrent);
       if (!isNaN(result)) {
           document.getElementById('surchargetotal').value = result;
       }
                }
      
            </script>
            <script>
function changeSrc()
  {
  document.getElementById("myImage").src="images/right.jpg";
  }
</script>

    <script language="javascript">
function validate()
{
  alert("Receipt of " + document.forms["form"]["surchargetotal"].value + " amount submitted succesfully!!")
       
}
</script> 
<%


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

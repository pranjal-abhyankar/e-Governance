<%-- 
    Document   : propertydomnew
    Created on : Jan 13, 2014, 12:40:15 PM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="style11.css" />
<link rel="stylesheet" type="text/css" href="prettify.css" />
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<script type="text/javascript" src="prettify.js"></script>
<script type="text/javascript" src="jquery.multiselect.js"></script>

        <script type="text/javascript">
$(function(){
	$("selects").multiselect();
});
</script>

    </head>
    <body>
       <%
       try 
{
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur?useUnicode=true&characterEncoding=UTF-8", "root", "root");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();
String sql1 = null;
               request.setCharacterEncoding("UTF-8");

String mainroad = request.getParameter("mainroad");
		  String govt = request.getParameter("govt");
		  String holder = request.getParameter("holder");
                  String usableroom = request.getParameter("usableroom");
                  String totalfamily = request.getParameter("totalfamily");
                  String rentaddress = request.getParameter("rentaddress");
                  String rentarea = request.getParameter("rentarea");
                  String rentrate = request.getParameter("rentrate");
                  String waterrecharging = request.getParameter("waterrec");
                  String waterconnectionno = request.getParameter("connectionno");
                  String waterconnectiontype = request.getParameter("connectiontype");
                  String waterconnection = request.getParameter("connection");
                  String firmname = request.getParameter("firmname");
                  String firmowner = request.getParameter("firmowner");
                  String license = request.getParameter("license");
                  String bhavan = request.getParameter("bhavan");
                  String firmtenant = request.getParameter("firmtenant");
                  String firmfamily = request.getParameter("firmfamily");
                  String child = request.getParameter("childfamily");
                  String adult = request.getParameter("adultfamily");
                  String ration = request.getParameter("ration");
                  String pension = request.getParameter("pension");
                  String arearoom = request.getParameter("arearoom");
                  HttpSession propertysession = request.getSession();
                  String regno = propertysession.getAttribute("regno").toString();
                  String prefix = propertysession.getAttribute("prefix").toString();
               //String sql = "insert into property (regdate,prefix,regno) values ('"+regdate+"','"+prefix+"','"+regno+"')";
{
String sql = "update property set main_road = '"+mainroad+"' , govt_property = '"+govt+"', holder_type = '"+holder+"', no_of_rooms = '"+usableroom+"', family_members = '"+totalfamily+"', rentaddress = '"+rentaddress+"', rentarea = '"+rentarea+"', rentrate = '"+rentrate+"', waterrecharging = '"+waterrecharging+"', waterconnectionno = '"+waterconnectionno+"', waterconnectiontype = '"+waterconnectiontype+"', waterconnection = '"+waterconnection+"', firmname = '"+firmname+"', firmownername = '"+firmowner+"', license = '"+license+"', bhavan = '"+bhavan+"', firmtenant = '"+firmtenant+"', firmfamily = '"+firmfamily+"', family_child = '"+child+"', family_adult = '"+adult+"', rationcard = '"+ration+"', pension = '"+pension+"', roomarea = '"+bhavan+"' where regno = '"+regno+"' and prefix = '"+prefix+"'";
out.print(sql); 
 statement.executeUpdate(sql);}
                                        //    response.sendRedirect("propertydomnew.jsp");
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

          <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>

                         <%
                  
                try 
{
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_pithampur","aklkarni_root","ajk_root");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();
//String sql = "insert into property (regdate,prefix,regno) values ('"+regdate+"','"+prefix+"','"+regno+"')";
    statement.close(); 
connection.close(); } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 
 out.print(ex);
} 
%></form>
         
         
    </div>
     </body>
</html>

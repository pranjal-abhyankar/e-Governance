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
        <link rel="stylesheet" type="text/css" href="jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="style11.css" />
<link rel="stylesheet" type="text/css" href="prettify.css" />
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<script type="text/javascript" src="prettify.js"></script>
<script type="text/javascript" src="jquery.multiselect.js"></script>

        <script type="text/javascript">
/* $(function(){
	$("selects").multiselect();
}); */
</script>


          <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>

    </head>
    <body>
       <%
       try 
    {
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aalogin_pithampur?useUnicode=true&characterEncoding=UTF-8", "aalogin_npp", "Ajk110292");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();
String sql1 = null;
               request.setCharacterEncoding("UTF-8");
               
               
                  String regno = request.getParameter("regno");
		  String city = request.getParameter("city");
		  String zone = request.getParameter("zone");
		  String proptype = request.getParameter("proptype");
		  String society = request.getParameter("colony");
                  String regdate = request.getParameter("regdate");
                  String basis_owner = request.getParameter("ownerbasis");
                  String property_holder = request.getParameter("ownername");
                  String father_husband = request.getParameter("fathername");
                  String property_holderhin = request.getParameter("ownernamehin");
                  String father_husbandhin = request.getParameter("fathernamehin");
                  String ward_no = request.getParameter("ward");
                  String tenant_name = request.getParameter("tenantname");
                  String tenant_namehin = request.getParameter("tenantnamehin");
                  String area = request.getParameter("area");
                  String house_no = request.getParameter("houseno");
                  String house_name = request.getParameter("propertyname");
                  String road_no = request.getParameter("roadno");
                  String contact = request.getParameter("contact");
                  String propertyuse = request.getParameter("propertyuse");
                  

                  String level1open = request.getParameter("level1open");
                  String level1position = request.getParameter("level1position");
                  String level1use = request.getParameter("level1use");
                  String level1useby = request.getParameter("level1useby");
                  String level1contype = request.getParameter("level1contype");
                  String level1room = request.getParameter("level1room");
                  String level1area = request.getParameter("level1area");
                  String level2open = request.getParameter("level2open");
                  String level2position = request.getParameter("level2position");
                  String level2use = request.getParameter("level2use");
                  String level2useby = request.getParameter("level2useby");
                  String level2contype = request.getParameter("level2contype");
                  String level2room = request.getParameter("level2room");
                  String level2area = request.getParameter("level2area");
                  String level3open = request.getParameter("level3open");
                  String level3position = request.getParameter("level3position");
                  String level3use = request.getParameter("level3use");
                  String level3useby = request.getParameter("level3useby");
                  String level3contype = request.getParameter("level3contype");
                  String level3room = request.getParameter("level3room");
                  String level3area = request.getParameter("level3area");
                  String level4open = request.getParameter("level4open");
                  String level4position = request.getParameter("level4position");
                  String level4use = request.getParameter("level4use");
                  String level4useby = request.getParameter("level4useby");
                  String level4contype = request.getParameter("level4contype");
                  String level4room = request.getParameter("level4room");
                  String level4area = request.getParameter("level4area");
                  String level5open = request.getParameter("level5open");
                  String level5position = request.getParameter("level5position");
                  String level5use = request.getParameter("level5use");
                  String level5useby = request.getParameter("level5useby");
                  String level5contype = request.getParameter("level5contype");
                  String level5room = request.getParameter("level5room");
                  String level5area = request.getParameter("level5area");
                  String level6open = request.getParameter("level6open");
                  String level6position = request.getParameter("level6position");
                  String level6use = request.getParameter("level6use");
                  String level6useby = request.getParameter("level6useby");
                  String level6contype = request.getParameter("level6contype");
                  String level6room = request.getParameter("level6room");
                  String level6area = request.getParameter("level6area");
                  String level7open = request.getParameter("level7open");
                  String level7position = request.getParameter("level7position");
                  String level7use = request.getParameter("level7use");
                  String level7useby = request.getParameter("level7useby");
                  String level7contype = request.getParameter("level7contype");
                  String level7room = request.getParameter("level7room");
                  String level7area = request.getParameter("level7area");
                  String level8open = request.getParameter("level8open");
                  String level8position = request.getParameter("level8position");
                  String level8use = request.getParameter("level8use");
                  String level8useby = request.getParameter("level8useby");
                  String level8contype = request.getParameter("level8contype");
                  String level8room = request.getParameter("level8room");
                  String level8area = request.getParameter("level8area");
                  String level9open = request.getParameter("level9open");
                  String level9position = request.getParameter("level9position");
                  String level9use = request.getParameter("level9use");
                  String level9useby = request.getParameter("level9useby");
                  String level9contype = request.getParameter("level9contype");
                  String level9room = request.getParameter("level9room");
                  String level9area = request.getParameter("level9area");
                  String level10open = request.getParameter("level10open");
                  String level10position = request.getParameter("level10position");
                  String level10use = request.getParameter("level10use");
                  String level10useby = request.getParameter("level10useby");
                  String level10contype = request.getParameter("level10contype");
                  String level10room = request.getParameter("level10room");
                  String level10area = request.getParameter("level10area");

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
                  String prefix = propertysession.getAttribute("prefix").toString();
               //String sql = "insert into property (regdate,prefix,regno) values ('"+regdate+"','"+prefix+"','"+regno+"')";

    
String sql = "insert into property (regdate, prefix, regno, ward_no, property_holder, father, tenant_name,property_holderhin, fatherhin, tenant_namehin, house_no, road_no, house_name, society, area, city, basis_owner, contact, propertyuse) values ('"+regdate+"', '"+prefix+"', '"+regno+"', '"+ward_no+"', '"+property_holder+"', '"+father_husband+"', '"+tenant_name+"', '"+property_holderhin+"', '"+father_husbandhin+"', '"+tenant_namehin+"', '"+house_no+"', '"+road_no+"', '"+house_name+"', '"+society+"', '"+area+"', '"+city+"', '"+basis_owner+"', '"+contact+"' , '"+propertyuse+"') on duplicate key update property_holder = '"+property_holder+"'";
out.print(sql); 
 statement.executeUpdate(sql);

String sql2 = "insert into propertydetails values ('"+prefix+"' ,'"+regno+"', '"+level1open+"' , '"+level1position+"' , '"+level1use+"' , '"+level1useby+"' , '"+level1contype+"' , '"+level1room+"' , '"+level1area+"' , '"+level2open+"' , '"+level2position+"' , '"+level2use+"' , '"+level2useby+"' , '"+level2contype+"' , '"+level2room+"' , '"+level2area+"' , '"+level3open+"' , '"+level3position+"' , '"+level3use+"' , '"+level3useby+"' , '"+level3contype+"' , '"+level3room+"' , '"+level3area+"' , '"+level4open+"' , '"+level4position+"' , '"+level4use+"' , '"+level4useby+"' , '"+level4contype+"' , '"+level4room+"' , '"+level4area+"' , '"+level5open+"' , '"+level5position+"' , '"+level5use+"' , '"+level5useby+"' , '"+level5contype+"' , '"+level5room+"' , '"+level5area+"' , '"+level6open+"' , '"+level6position+"' , '"+level6use+"' , '"+level6useby+"' , '"+level6contype+"' , '"+level6room+"' , '"+level6area+"' , '"+level7open+"' , '"+level7position+"' , '"+level7use+"' , '"+level7useby+"' , '"+level7contype+"' , '"+level7room+"' , '"+level8area+"' , '"+level8open+"' , '"+level8position+"' , '"+level8use+"' , '"+level8useby+"' , '"+level8contype+"' , '"+level8room+"' , '"+level8area+"' , '"+level9open+"' , '"+level9position+"' , '"+level9use+"' , '"+level9useby+"' , '"+level9contype+"' , '"+level9room+"' , '"+level9area+"' , '"+level10open+"' , '"+level10position+"' , '"+level10use+"' , '"+level10useby+"' , '"+level10contype+"' , '"+level10room+"' , '"+level10area+"' )";
out.print(sql2); 
statement.executeUpdate(sql2);           



String sql3 = "update property set main_road = '"+mainroad+"' , govt_property = '"+govt+"', holder_type = '"+holder+"', no_of_rooms = '"+usableroom+"', family_members = '"+totalfamily+"', rentaddress = '"+rentaddress+"', rentarea = '"+rentarea+"', rentrate = '"+rentrate+"', waterrecharging = '"+waterrecharging+"', waterconnectionno = '"+waterconnectionno+"', waterconnectiontype = '"+waterconnectiontype+"', waterconnection = '"+waterconnection+"', firmname = '"+firmname+"', firmownername = '"+firmowner+"', license = '"+license+"', bhavan = '"+bhavan+"', firmtenant = '"+firmtenant+"', firmfamily = '"+firmfamily+"', family_child = '"+child+"', family_adult = '"+adult+"', rationcard = '"+ration+"', pension = '"+pension+"', roomarea = '"+bhavan+"' where regno = '"+regno+"' and prefix = '"+prefix+"'";
out.print(sql3); 
 statement.executeUpdate(sql3);


%> 
<b><font size="+3" color="red"></b> </font>
<% 
 } 
catch (Exception ex) 
{ 
 out.print(ex);
} 

 response.sendRedirect("propertydomnew.jsp");
%>         

 


         
         
    </div>
     </body>
</html>

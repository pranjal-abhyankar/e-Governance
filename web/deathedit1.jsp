<!DOCTYPE HTML PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN">
<html>
<head>
<title>Birth Certificate</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
  <script src="js/jquery-1.11.0.js"></script>
  <script src="js/jquery-1.6.1.min.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
                        <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    

 <%
try
               {

    HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString(); 

String deathprefix= null;
String cityhin= null;
String city= null;
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String regno = request.getParameter("regno");

String pre="select deathprefix,city,cityhin from master";
rs=statement.executeQuery(pre);
while(rs.next()){
    deathprefix=rs.getString(1);
    city=rs.getString(2);
    cityhin=rs.getString(3);
}

{
 String sql = ("SELECT * FROM deathcertificate where prefix = '"+deathprefix+"' and RegistrationNo = '"+regno+"'");
rs = statement.executeQuery(sql);
while(rs.next())
       {
regno = rs.getString(1);

 
int a = Integer.parseInt(regno);
int c = a;


%>
<script>
   $(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
});    


</script>

<form method="post" action="Deathedit2" name="trans">    
    
    
<div id="table1" style="position:absolute; overflow:hidden; left:40px; top:20px; width:1150px; height:890px; z-index:0">
<div>
<div align=right style="line-height:2.00;">
    <TABLE style=" width: 100%; color: black"> 
<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Prefix</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="prefix" value="NPP/DEATH/2014/" type="text" id="prefix" onBlur="if(this.value==''){this.value='NPP/DEATH/'}">
                            </div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">Registration Number</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="registrationnumber" type="text" id="registrationnumber" value="<%=regno%>">
                            </div>
                        </div>
                    </TD>
   
<TD width=200><div>
<div align=right><font face="Arial">Registration Date</font></div>
</div>
</TD>
<TD width=200>
    <div>
        <div align="center"><input class="form-control" type="date" name="registrationdate" id="registrationdate" value="<%=rs.getString("RegistrationDate")%>">

        </div>
    </div>
</TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Death Date</font></div>
</div>
</TD>
<TD width=200>
    <div>
        <div align="center"><input class="form-control" type="date" name="deathdate" id="deathdate" value="<%=rs.getString("DeathDate")%>">
</div>
    </div>
</TD>
<TD width=200><div>
<div align=right><font face="Arial">Age</font></div>
</div>
</TD>
<TD width=200>
    <div>
        <div align="center">
            <input class="form-control" size="26" name="age" type="text" id="age" value="<%=rs.getString("age")%>">
        </div>
    </div>
</TD>
<TD width=200><div>
<div align=right><font face="Arial">Informed Date</font></div>
</div>
</TD>

<TD width=200>
                        <div>
                            <div align="center"><input class="form-control" type="date" name="informeddate" id="informeddate" value="<%=rs.getString("informeddate")%>">

                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">&#2357;&#2381;&#2351;&#2325;&#2381;&#2340;&#2367; &#2325;&#2366; &#2344;&#2366;&#2350;</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="name1" type="text" id="name1" value="<%=rs.getString("namehindi")%>" onKeyPress="return AllowAlphabet1()">
                            </div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">&#2346;&#2340;&#2367;/&#2346;&#2367;&#2340;&#2366; &#2325;&#2366; &#2344;&#2366;&#2350;</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="fatherhusbandname1" type="text" id="fatherhusbandname1" value="<%=rs.getString("fatherhusbandnamehindi")%>" onKeyPress="return AllowAlphabet2()">
                            </div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">Mobile No. </font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="mobilenumber" type="text" id="mobilenumber" value="<%=rs.getString("mobileno")%>">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>

<TD width=200><div>
<div align=right><font face="Arial">Person Name </font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="name" type="text" id="name" value="<%=rs.getString("name")%>">
                            </div>
                        </div>
                    </TD>

                    <TD width=200><div>
<div align=right><font face="Arial">Father's/Husband's Name </font></div>
</div>
</TD>
                    <TD width=200>
                        <div>
                            <div align="center">
                              <input class="form-control" size="26" name="fatherhusbandname" type="text" id="fatherhusbandname"  value="<%=rs.getString("fatherhusbandname")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">Email Id</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="emailid" type="text" id="emailid" value="<%=rs.getString("emailid")%>">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR rowspan="2" valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Address</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="address1" id="address1"  onkeypress="return AllowAlphabet3()"  value=""><%=rs.getString("addresshindi")%></textarea></div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="address" id="address" value="" ><%=rs.getString("address")%></textarea></div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">Informer Name, Address</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="informerdetail1" id="informerdetail1"  onkeypress="return AllowAlphabet4()" value=""><%=rs.getString("InformerDetailHindi")%></textarea></div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="informerdetail" id="informerdetail" value="" ><%=rs.getString("informerdetail")%></textarea></div>
                        </div>
                    </TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
    <TD width=200><div>
<div align=right><font face="Arial">Gender</font></div>
</div>
</TD>

<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="gender1" type="text" id="gender1" value="<%=rs.getString("genderhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="gender" type="text" id="gender" value="<%=rs.getString("gender")%>">                            </div>
                        </div>
                    </TD>
                    <TD width=200><div>
<div align=right><font face="Arial">Age Status</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="agestatus1" type="text" id="agestatus1" value="<%=rs.getString("agestatushindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="agestatus" type="text" id="agestatus" value="<%=rs.getString("agestatus")%>">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Death Place</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="deathplace1" type="text" id="deathplace1" onKeyPress="return AllowAlphabet5()" value="<%=rs.getString("deathplacehindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="deathplace" type="text" id="deathplace" value="<%=rs.getString("deathplace")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200><div>
<div align=right><font face="Arial">Death Place Address</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="deathplaceaddress1" id="deathplaceaddress1" onKeyPress="return AllowAlphabet6()" ><%=rs.getString("placenamehindi")%></textarea></div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center"><textarea  class="form-control" name="deathplaceaddress" id="placename" ><%=rs.getString("placename")%></textarea></div>
                        </div>
                    </TD>

</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Family Religion</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="familyreligion1" type="text" id="familyreligion1" value="<%=rs.getString("familyreligionhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="familyreligion" type="text" id="familyreligion" value="<%=rs.getString("familyreligion")%>">
                            </div>
                        </div>
                    </TD>

                    <TD width=200><div>
<div align=right><font face="Arial">Occupation</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="occupation1" type="text" id="occupation1" value="<%=rs.getString("occupationhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="occupation" type="text" id="occupation" value="<%=rs.getString("occupation")%>">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Medical Treatment Before Death</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="medicaltreatment1" type="text" id="medicaltreatment1" value="<%=rs.getString("medicaltreatmentbeforedeathhindi")%>">
                            </div>
                        </div>
                    </TD>    
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="medicaltreatment" type="text" id="medicaltreatment" value="<%=rs.getString("medicaltreatmentbeforedeath")%>">
                            </div>
                        </div>
                    </TD>

                    <TD width=200><div>
<div align=right><font face="Arial">Death Reason By Dr.</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="deathreason1" type="text" id="deathreason1" onKeyPress="return AllowAlphabet7()" value="<%=rs.getString("deathreasonbydrhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="deathreason" type="text" id="deathreason" value="<%=rs.getString("deathreasonbydr")%>">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Informer Relation</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="informerrelation1" type="text" id="informerrelation1" onKeyPress="return AllowAlphabet8()" value="<%=rs.getString("informerrelationhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="informerrelation" type="text" id="informerrelation" value="<%=rs.getString("informerrelation")%>">
                            </div>
                        </div>
                    </TD>
                    <TD width=200><div>
<div align=right><font face="Arial">City</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                              <input class="form-control" name="city1" type="text" id="city1" value="<%=cityhin%>" size="26">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" name="city" type="text" id="city" value="<%=city%>" size="26">
                            </div>
                        </div>
                    </TD>

</TR>
<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>

<TD width=200><div>
<div align=right><font face="Arial">State</font></div>
</div>
</TD>

<TD width=200>
                        <div>
                            <div align="center">
                                <select  class="form-control" name="state1" id="state1">
                                     <option>&#2346;&#2381;&#2352;&#2342;&#2375;&#2358; &#2330;&#2351;&#2344; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </option>
               	        <option>&#2310;&#2306;&#2343;&#2381;&#2352; &#2346;&#2381;&#2352;&#2342;&#2375;&#2358;&nbsp;</option>
               	        <option>&#2309;&#2352;&#2369;&#2339;&#2366;&#2330;&#2354; &#2346;&#2381;&#2352;&#2342;&#2375;&#2358;&nbsp;</option>
               	        <option>&#2309;&#2360;&#2350;&nbsp;</option>
               	        <option>&#2348;&#2367;&#2361;&#2366;&#2352;</option>
               	        <option selected>&#2350;&#2343;&#2381;&#2351; &#2346;&#2381;&#2352;&#2342;&#2375;&#2358;</option>
               	        <option>&#2350;&#2361;&#2366;&#2352;&#2366;&#2359;&#2381;&#2335;&#2381;&#2352;</option>
               	        <option>&#2350;&#2375;&#2328;&#2366;&#2354;&#2351;</option>
               	        <option>&#2350;&#2367;&#2332;&#2379;&#2352;&#2350;</option>
               	        <option>&#2340;&#2350;&#2367;&#2354;&#2344;&#2366;&#2337;&#2370;</option>
               	        <option>&#2325;&#2375;&#2352;&#2354;</option>
               	        <option>&#2325;&#2352;&#2381;&#2344;&#2366;&#2335;&#2325;</option>
               	        <option>&#2327;&#2379;&#2357;&#2366;</option>
               	        <option>&#2360;&#2367;&#2325;&#2381;&#2325;&#2367;&#2350;</option>
               	        <option>&#2346;&#2306;&#2332;&#2366;&#2348;</option>
               	        <option>&#2361;&#2367;&#2350;&#2366;&#2330;&#2354; &#2346;&#2381;&#2352;&#2342;&#2375;&#2358;</option>
               	        <option>&#2327;&#2369;&#2332;&#2352;&#2366;&#2340;</option>
               	        <option>&#2332;&#2350;&#2381;&#2350;&#2370; &amp; &#2325;&#2358;&#2381;&#2350;&#2368;&#2352;</option>
               	        <option>&#2331;&#2340;&#2381;&#2340;&#2368;&#2360;&#2327;&#2397;</option>
               	        <option>&#2313;&#2340;&#2381;&#2340;&#2352; &#2346;&#2381;&#2352;&#2342;&#2375;&#2358;</option>
               	        <option>&#2313;&#2340;&#2381;&#2340;&#2352;&#2366;&#2305;&#2330;&#2354;</option>
               	        <option>&#2342;&#2367;&#2354;&#2381;&#2354;&#2368;</option>
               	        <option>&#2346;&#2358;&#2381;&#2330;&#2367;&#2350; &#2348;&#2306;&#2327;&#2366;&#2354;</option>
               	        <option>&#2352;&#2366;&#2332;&#2360;&#2381;&#2341;&#2366;&#2344;</option>
               	        <option>&#2344;&#2366;&#2327;&#2366;&#2354;&#2376;&#2306;&#2337;</option>
               	        <option>&#2313;&#2396;&#2368;&#2360;&#2366;</option>
               	        <option>&#2361;&#2352;&#2351;&#2366;&#2339;&#2366;</option>
               	        <option>&#2333;&#2366;&#2352;&#2326;&#2339;&#2381;&#2337;</option>
               	        <option>&#2350;&#2339;&#2367;&#2346;&#2369;&#2352;</option>           	          
                                </select>
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <select  class="form-control" name="state" id="state">
                                     <option>SELECT STATE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
               	        <option>ANDHRA PRADESH</option>
               	        <option>ARUNACHAL PRADESH</option>
               	        <option>ASSAM</option>
               	        <option>BIHAR</option>
               	        <option selected>MADHYA PRADESH</option>
               	        <option>MAHARASHTRA</option>
               	        <option>MEGHALAYA</option>
               	        <option>MIZORAM</option>
               	        <option>TAMIL NADU</option>
               	        <option>KERELA</option>
               	        <option>KARNATAKA</option>
               	        <option>GOA</option>
               	        <option>SIKKIM</option>
               	        <option>PUNJAB</option>
               	        <option>HIMACHAL PRADESH</option>
               	        <option>GUJARAT</option>
               	        <option>JAMMU AND KASHMIR</option>
               	        <option>CHHATTISGARH</option>
               	        <option>UTTAR PRADESH</option>
               	        <option>UTTARANCHAL</option>
               	        <option>DELHI</option>
               	        <option>WEST BENGAL</option>
               	        <option>RAJASTHAN</option>
               	        <option>NAGALAND</option>
               	        <option>ORISSA</option>
               	        <option>HARYANA</option>
               	        <option>JHARKHAND</option>
               	        <option>MANIPUR</option>           	          
                                </select>
                            </div>
                        </div>
                    </TD>
                    <TD width=200><div>
<div align=right><font face="Arial">Ward Name</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="wardname1" type="text" id="wardname1" onKeyPress="return AllowAlphabet9()" value="<%=rs.getString("wardnamehindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="wardname" type="text" id="wardname" value="<%=rs.getString("wardname")%>">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial">Registrar</font></div>
</div>
</TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="registrar1" type="text" id="registrar1" onKeyPress="return AllowAlphabet10()" value="<%=rs.getString("registrarhindi")%>">
                            </div>
                        </div>
                    </TD>
<TD width=200>
                        <div>
                            <div align="center">
                                <input class="form-control" size="26" name="registrar" type="text" id="registrar" value="<%=rs.getString("registrar")%>">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><TD width=200><div>
            <div align=right><font face="Arial"></font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<TD width=200><div>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200><div>
        <div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<td width=200>
    <div>
        <div align="center">
            <input class="form-control" size="26" type="submit" name="Submit" value="SUBMIT" onClick="return validate()">
        </div>
    </div>
</td>
<TD width=200><div>
<div align=right><input class="form-control" size="26" type="reset" name="reset" value="RESET"></div>
    </div>
</TD>
<TD width=200><div>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200><div>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
</TR>
</TABLE>
</div>
</div></div>
</form>

       <%@ page import = "java.sql.*" %>
         <%
                    
                                       }}
rs.close();
connection.close();
}

catch(Exception e)
        {
out.print(e);
}
%>            
            
<!-- <Script language="javascript">
function validate()
{
    var v1,v2,v3,v4,v5,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v33,v35,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46;
    v1=document.getElementById("prefix").value;
    v2=document.getElementById("registrationnumber").value;
    v3=document.getElementById("registrationdate").value;
    v4=document.getElementById("deathdate").value;
    v5=document.getElementById("age").value;
    v7=document.getElementById("name").value;
    v8=document.getElementById("name1").value;
    v9=document.getElementById("fatherhusbandname").value;
    v10=document.getElementById("fatherhusbandname1").value;
    v11=document.getElementById("address").value;
    v12=document.getElementById("address1").value;
    v13=document.getElementById("informerdetail").value;
    v14=document.getElementById("informerdetail1").value;
    v15=document.getElementById("gender").value;
    v16=document.getElementById("gender1").value;
    v17=document.getElementById("agestatus").value;
    v18=document.getElementById("agestatus1").value;
    v19=document.getElementById("deathplace").value;
    v20=document.getElementById("deathplace1").value;
    v21=document.getElementById("deathplaceaddress").value;
    v22=document.getElementById("deathplaceaddress1").value;
    v23=document.getElementById("familyreligion").value;
    v24=document.getElementById("familyreligion1").value;
    v25=document.getElementById("occupation").value;
    v26=document.getElementById("occupation1").value;
    v27=document.getElementById("medicaltreatment").value;
    v28=document.getElementById("medicaltreatment1").value;
    v29=document.getElementById("deathreason").value;
    v30=document.getElementById("deathreason1").value;
    v31=document.getElementById("mobilenumber").value;
    
    v33=document.getElementById("emailid").value;
    
    v35=document.getElementById("informeddate").value;
    
    v37=document.getElementById("informerrelation").value;
    v38=document.getElementById("informerrelation1").value;
    v39=document.getElementById("city").value;
    v40=document.getElementById("city1").value;
    v41=document.getElementById("state").value;
    v42=document.getElementById("state1").value;
    v43=document.getElementById("wardname").value;
    v44=document.getElementById("wardname1").value;
    v45=document.getElementById("registrar").value;
    v46=document.getElementById("registrar1").value;
        
       
        if(v1=="NPP/DEATH/")
        {
            alert("Prefix cannot be blank");
            return false;
        }
        if(v2=="")
        {
            alert("Registration Number cannot be blank");
            return false;
        }
        if(v3=="yyyy-mm-dd")
        {
            alert("Registration Date cannot be blank");
            return false;
        }
         if(v4=="yyyy-mm-dd")
        {
            alert("Death Date cannot be blank");
            return false;
        }
        if(v5=="")
        {
            alert("Age cannot be blank");
            return false;
        }
        if(v7==""||v8=="")
        {
            alert("Person's Name cannot be blank");
            return false;
        }
        if(v9==""||v10=="")
        {
            alert("Father's/Husband's Name cannot be blank");
            return false;
        }
        if(v11==""||v12=="")
        {
            alert("Address cannot be blank");
            return false;
        }
        if(v13==""||v14=="")
        {
            alert("Informer Name, Address cannot be blank");
            return false;
        }
        if(v15=="SELECT GENDER"||v16=="&#2354;&#2367;&#2306;&#2327; &#2330;&#2351;&#2344;")
        {
            alert("Gender cannot be blank");
            return false;
        }
        if(v17=="SELECT STATUS"||v18=="&#2360;&#2381;&#2340;&#2367;&#2341;&#2367; &#2330;&#2351;&#2344;")
        {
            alert("age Status cannot be blank");
            return false;
        }     
        if(v19==""||v20=="")
        {
            alert("Death Place cannot be blank");
            return false;
        }    
        if(v21==""||v22=="")
        {
            alert("Death Place Address cannot be blank");
            return false;
        }
        if(v23=="SELECT RELIGION"||v24=="")
        {
            alert("Family Religion cannot be blank");
            return false;
        }
        if(v25=="SELECT OCCUPATION"||v26=="")
        {
            alert("Occupation cannot be blank");
            return false;
        }
        if(v27=="SELECT OPTION"||v28=="")
        {
            alert("Medical Treatment cannot be blank");
            return false;
        }
        if(v29==""||v30=="")
        {
            alert("Death Reason cannot be blank");
            return false;
        }
        if(v35=="")
        {
            alert("Informed Date cannot be blank");
            return false;
        }
        if(v37==""||v38=="")
        {
            alert("Informer Relation cannot be blank");
            return false;
        }
        if(v39==""||v40=="")
        {
            alert("City cannot be blank");
            return false;
        }
        if(v41=="SELECT STATE"||v42=="")
        {
            alert("State cannot be blank");
            return false;
        }
        if(v43==""||v44=="")
        {
            alert("Ward Name cannot be blank");
            return false;
        }
        }
</Script> -->
            <script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
          // Load the Google Transliteration API
          google.load("elements", "1", {
                packages: "transliteration"
              });
          function onLoad() {
            var options = {
              sourceLanguage: 'en',
              destinationLanguage: ['hi'],
              shortcutKey: 'ctrl+g',
              transliterationEnabled: true
              
              
            };
            // Create an instance on TransliterationControl with the required
            // options.
            var control = new google.elements.transliteration.TransliterationControl(options);
            // Enable transliteration in the textfields with the given ids.
            var ids = [ "name1" , "fatherhusbandname1" , "informerdetail1" , "address1" , "deathplace1" , "deathplaceaddress1" , "wardname1" , "deathreason1" , "informerrelation1" , "mothername1"];
            control.makeTransliteratable(ids);
            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
          }
          google.setOnLoadCallback(onLoad);
        </script>
<script type="text/javascript">
function AllowAlphabet1()
{
               if (!trans.name1.value.match(/^[A-Za-z0-9]+$/) && trans.name1.value !="")
               {
                    var name = document.getElementById('name').value; 
                    var name1 = document.getElementById('name1').value;
                    document.getElementById('name').value = name+name1.charAt((name1.length)-1);  

               }
               else
               {
                   var name1 = document.getElementById('name1').value;
                   document.getElementById('name').value = name1;
               }
}
function AllowAlphabet2()
{
                if (!trans.fatherhusbandname1.value.match(/^[A-Za-z0-9]+$/) && trans.fatherhusbandname1.value !="")
               {
                    var fatherhusbandname = document.getElementById('fatherhusbandname').value; 
                    var fatherhusbandname1 = document.getElementById('fatherhusbandname1').value;
                    document.getElementById('fatherhusbandname').value = fatherhusbandname+fatherhusbandname1.charAt((fatherhusbandname1.length)-1);  

               }
               else
               {
                   var fatherhusbandname1 = document.getElementById('fatherhusbandname1').value;
                   document.getElementById('fatherhusbandname').value = fatherhusbandname1;
               }
}
function AllowAlphabet4()
{
                if (!trans.informerdetail1.value.match(/^[A-Za-z0-9]+$/) && trans.informerdetail1.value !="")
               {
                    var informerdetail = document.getElementById('informerdetail').value; 
                    var informerdetail1 = document.getElementById('informerdetail1').value;
                    document.getElementById('informerdetail').value = informerdetail+informerdetail1.charAt((informerdetail1.length)-1);  

               }
               else
               {
                   var informerdetail1 = document.getElementById('informerdetail1').value;
                   document.getElementById('informerdetail').value = informerdetail1;
               }
}      
function AllowAlphabet3()
{
               if (!trans.address1.value.match(/^[A-Za-z0-9]+$/) && trans.address1.value !="")
               {
                    var address = document.getElementById('address').value; 
                    var address1 = document.getElementById('address1').value;
                    document.getElementById('address').value = address+address1.charAt((address1.length)-1);  

               }
               else
               {
                   var address1 = document.getElementById('address1').value;
                   document.getElementById('address').value = address1;
               }
}
function AllowAlphabet5()
{
                if (!trans.deathplace1.value.match(/^[A-Za-z0-9]+$/) && trans.deathplace1.value !="")
               {
                    var deathplace = document.getElementById('deathplace').value; 
                    var deathplace1 = document.getElementById('deathplace1').value;
                    document.getElementById('deathplace').value = deathplace+deathplace1.charAt((deathplace1.length)-1);  

               }
               else
               {
                   var deathplace1 = document.getElementById('deathplace1').value;
                   document.getElementById('deathplace').value = deathplace1;
               }
}
function AllowAlphabet6()
{
                if (!trans.deathplaceaddress1.value.match(/^[A-Za-z0-9]+$/) && trans.deathplaceaddress1.value !="")
               {
                    var deathplaceaddress = document.getElementById('deathplaceaddress').value; 
                    var deathplaceaddress1 = document.getElementById('deathplaceaddress1').value;
                    document.getElementById('deathplaceaddress').value = deathplaceaddress+deathplaceaddress1.charAt((deathplaceaddress1.length)-1);  

               }
               else
               {
                   var deathplaceaddress1 = document.getElementById('deathplaceaddress1').value;
                   document.getElementById('deathplaceaddress').value = deathplaceaddress1;
               }
}      
function AllowAlphabet9()
{
                if (!trans.wardname1.value.match(/^[A-Za-z0-9]+$/) && trans.wardname1.value !="")
               {
                    var wardname = document.getElementById('wardname').value; 
                    var wardname1 = document.getElementById('wardname1').value;
                    document.getElementById('wardname').value = wardname+wardname1.charAt((wardname1.length)-1);  

               }
               else
               {
                   var wardname1 = document.getElementById('wardname1').value;
                   document.getElementById('wardname').value = wardname1;
               }
}      
function AllowAlphabet8()
{
                if (!trans.informerrelation1.value.match(/^[A-Za-z0-9]+$/) && trans.informerrelation1.value !="")
               {
                    var informerrelation = document.getElementById('informerrelation').value; 
                    var informerrelation1 = document.getElementById('informerrelation1').value;
                    document.getElementById('informerrelation').value = informerrelation+informerrelation1.charAt((informerrelation1.length)-1);  

               }
               else
               {
                   var informerrelation1 = document.getElementById('informerrelation1').value;
                   document.getElementById('informerrelation').value = informerrelation1;
               }
}
function AllowAlphabet10()
{
                if (!trans.registrar1.value.match(/^[A-Za-z0-9]+$/) && trans.registrar1.value !="")
               {
                    var registrar = document.getElementById('registrar').value; 
                    var registrar1 = document.getElementById('registrar1').value;
                    document.getElementById('registrar').value = registrar+registrar1.charAt((registrar1.length)-1);  

               }
               else
               {
                   var registrar1 = document.getElementById('registrar1').value;
                   document.getElementById('registrar').value = registrar1;
               }
}      
function AllowAlphabet11()
{
                if (!trans.mothername1.value.match(/^[A-Za-z0-9]+$/) && trans.mothername1.value !="")
               {
                    var mothername= document.getElementById('mothername').value; 
                    var mothername1= document.getElementById('mothername1').value;
                    document.getElementById('mothername').value = mothername+mothername1.charAt((mothername1.length)-1);  

               }
               else
               {
                   var mothername1= document.getElementById('mothername1').value;
                   document.getElementById('mothername').value = mothername1;
               }
}      
function AllowAlphabet7()
{
                if (!trans.deathreason1.value.match(/^[A-Za-z0-9]+$/) && trans.deathreason1.value !="")
               {
                    var deathreason = document.getElementById('deathreason').value; 
                    var deathreason1 = document.getElementById('deathreason1').value;
                    document.getElementById('deathreason').value = deathreason+deathreason1.charAt((deathreason1.length)-1);  

               }
               else
               {
                   var deathreason1 = document.getElementById('deathreason1').value;
                   document.getElementById('deathreason').value = deathreason1;
               }
}      
</script>
<script type="text/javascript">document.onload = ctck();</script>
    
</body>
</html>
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
    <script>
         $(document).ready(function(){
            $("input#next").click(function(){
            $("div#birthedit2").show(500);
            $("div#birthedit1").hide(500);
      
         });
            $("input#back").click(function(){
            $("div#birthedit2").hide(500);
            $("div#birthedit1").show(500); 
        });
    });
        
        
        
    </script>
</head>
<body>
                        <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>

    <%
try
               {
    
    HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString(); 

String birthprefix=null;
String cmo=null;

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String regno = request.getParameter("regno");
String pre="select birthprefix,cmo from master";
rs=statement.executeQuery(pre);
while(rs.next()){
    birthprefix=rs.getString(1);
    cmo=rs.getString(2);
}

{
 String sql = ("SELECT * FROM birthcertificate2000 where prefix = '"+birthprefix+"' and RegistrationNumber = "+regno+"");
rs = statement.executeQuery(sql);
while(rs.next())
       {
regno = rs.getString(1);


%>
<form method="post" action="Birthedit2" target="mainframe" name="trans">    

<div class="container" id="birthedit1">
    
    <table style=" width: 100%; color: black">    
<div>
        <tr valign=top>
            <td >
                <div align=right><font face="Arial">Prefix &nbsp;&nbsp;&nbsp;&nbsp;</font>
                </div>
            </td>
           
            <td>
                <div align="center">
                    <input class="form-control" size="26" name="prefix" value="<%=birthprefix%>" type="text" id="prefix" readonly>
                </div>
            </td>

            <td>
                <div align=right><font face="Arial">Registration Number &nbsp;&nbsp;&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td>
                <div align="center">
                    <input class="form-control" size="26" name="registrationnumber" type="text" id="registrationnumber" value="<%=regno%>">
                </div>
            </td>
            <td>
                <div align=right><font face="Arial">Registration Date&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" type="text" name="registrationdate" id="registrationdate" readonly onClick="GetDate(this);" value="<%=rs.getString("registrationdate")%>" />
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td>
                <div align=right><br>
                </div>
            </td>
            
            <td>
                <div align="center"><br>
                </div>
            </td>
        </tr>        
        
        <tr valign=top>
            <td>
                <div align=right><font face="Arial">Birth Date&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" type="text" name="birthdate" id="birthdate" readonly onClick="GetDate(this);" value="<%=rs.getString("birthdate")%>" />
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">Gender&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td>
                <div align="center">
                    <input class="form-control" size="26" name="gender" type="text" id="gender" value="<%=rs.getString("gender")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">लिंग&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td>
                <div align="center">
                                       <input class="form-control" size="26" name="gender1" type="text" id="gender1" value="<%=rs.getString("genderhindi")%>">
               </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td>
                <div align=right><br>
                </div>
            </td>
            
            <td>
                <div align="center"><br>
                </div>
            </td>
        </tr> 
        
        <tr valign=top>
            <td>
                <div align=right><font face="Arial">बच्चे का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                    <input class="form-control" size="26" name="childname1" type="text" id="childname1" onKeyPress="return AllowAlphabet1()" value="<%=rs.getString("childnamehindi")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">पिता का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <input class="form-control" size="26" name="fathername1" type="text" id="fathername1" onKeyPress="return AllowAlphabet2()" value="<%=rs.getString("fathernamehindi")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">माता का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <input class="form-control" size="26" name="mothername1" type="text" id="mothername1" onKeyPress="return AllowAlphabet3()" value="<%=rs.getString("mothernamehindi")%>">
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td>
                <div align=right><br>
                </div>
            </td>
            
            <td>
                <div align="center"><br>
                </div>
            </td>
        </tr> 
        
        <tr valign=top>
            <td>
                <div align=right><font face="Arial">Child's Name &nbsp;&nbsp;</font>                </div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" size="26" name="childname" type="text" id="childname" value="<%=rs.getString("childname")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">Father's Name &nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" size="26" name="fathername" type="text" id="fathername" value="<%=rs.getString("fathername")%>">
                </div>
            </td>
            -
            <td>
                <div align=right><font face="Arial">Mother's Name &nbsp;&nbsp;</font>                </div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" size="26" name="mothername" type="text" id="mothername" value="<%=rs.getString("mothername")%>">
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td>
                <div align=right><br>
                </div>
            </td>
            
            <td>
                <div align="center"><br>
                </div>
            </td>
        </tr>
        
        <tr rowspan="2" valign=top>
            <td>
                <div align=right><font face="Arial">पता&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center"><textarea class="form-control"  name="address1" id="address1" onKeyPress="return AllowAlphabet4()" ><%=rs.getString("addresshindi")%></textarea>
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">जन्म स्थान&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <input class="form-control" size="26" name="birthplace1" type="text" id="birthplace1" onKeyPress="return AllowAlphabet5()" value="<%=rs.getString("birthplacehindi")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">जन्म स्थान का पता&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <textarea class="form-control" name="birthplaceaddress1" id="birthplaceaddress1" onKeyPress="return AllowAlphabet6()"><%=rs.getString("birthplaceaddresshindi")%></textarea>
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td>
                <div align=right><br>
                </div>
            </td>
            
            <td>
                <div align="center"><br>
                </div>
            </td>
        </tr>    
        
        <tr rowspan="2" valign=top>
            <td>
                <div align=right><font face="Arial">Address&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <textarea class="form-control" name="address" id="address"><%=rs.getString("address")%></textarea>
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">Birth Place &nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center"><input class="form-control" size="26" name="birthplace" type="text" id="birthplace" value="<%=rs.getString("birthplace")%>">
                </div>
            </td>
            
            <td>
                <div align=right><font face="Arial">Birth Place Address &nbsp;&nbsp;</font></div>
            </td>
            
            <td>
                <div align="center">
                  <textarea class="form-control" name="birthplaceaddress" id="birthplaceaddress" ><%=rs.getString("birthplaceaddress")%></textarea>
                </div>
            </td>
            </tr>

            <tr valign=top>
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td>
                    <div align=right>
                      <div align=right>
                    <font face="Arial">वार्ड&nbsp;&nbsp;</font> </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" size="26" name="wardname1" type="text" id="wardname1" onKeyPress="return AllowAlphabet7()" value="<%=rs.getString("wardnamehindi")%>">
                    </div>
                </td>
                
                <td><div align="right"><font face="Arial">Ward No &nbsp;&nbsp;</font></div></td>
                
                <td>
                    <div align="center"><input class="form-control" size="26" name="wardname" type="text" id="wardname" value="<%=rs.getString("wardname")%>">
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial">City&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="city" type="text" id="city" value="<%=rs.getString("city")%>" size="26">
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td>
                    <div align=right><font face="Arial">शहर&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="city1" type="text" id="city1" value="<%=rs.getString("cityhindi")%>" size="26">
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial">State&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center">
                        <select class="form-control" name="state" id="state">
                        <option>SELECT STATE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
               	        <option>ANDHRA PRADESH</option>
               	        <option>ARUNACHAL PRADESH</option>
               	        <option>ASSAM</option>
               	        <option>BIHAR</option>
               	        <option selected>MADHYA PRADESH</option>
               	        <option>MAHARASHtrA</option>
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
                </td>
                
                <td>
                    <div align=right><font face="Arial">District&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="district" type="text" id="district" value="Dhar" size="26">
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td>
                    <div align=right><font face="Arial">ज़िला&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="district1" type="text" id="district1" value="&#2343;&#2366;&#2352;" size="26">
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial">Division&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="division" type="text" id="division" value="<%=rs.getString("division")%>" size="26">
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial">&#2360;&#2350;&#2381;&#2349;&#2366;&#2327;&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td>
                    <div align="center"><input class="form-control" name="division1" type="text" id="division1" value="<%=rs.getString("divisionhindi")%>" size="26">
                    </div>
                </td>
                
                <td>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                </td>
                <td><div>
                <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                </div>
                </td>
            </tr>
            <tr valign=top>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>  
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
            </tr>
            <tr valign=top>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    </div>
                </td>
                <td>
                    <div>
                    <div align="center">
                        <input class="btn btn-outline btn-primary" size="26" type="button" id="next" value="Next">
                    </div>
                    </div>
                </td>
                <td><div>
                    <div align=right><input class="btn btn-outline btn-primary" size="26" type="reset" name="reset" value="RESET"></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
                
           <!--Birthedit2 --> <!--Birthedit2 --> <!--Birthedit2 --> <!--Birthedit2 --> <!--Birthedit2 --> <!--Birthedit2 -->
           
           
            <div id="birthedit2" hidden="hidden">
    <table style=" width: 100%; color: black"> 
        <font color="white">
                <TR valign=top>
                    <td>
                        <div align=right><font face="Arial">Family Religion&nbsp;&nbsp;</font></div>
                    </TD>
                    
                    <td>
                        <div align="center">
                                 <select class="form-control"name="familyreligion" id="familyreligion">
                                     <option selected><%=rs.getString("familyreligion")%></option>
                                     <option>Hindu</option>
                                     <option>Muslim</option>
                                     <option>Sikh</option>
                                     <option>Christian</option>
                                     <option>Other</option>
                                </select>
                        </div>
                    </TD>
                   
                    <td>
                        <div align=right><font face="Arial">Father Religion&nbsp;&nbsp;</font></div>
                    </TD>

                    <td>
                        <div align="center">
                                 <select class="form-control"name="fatherreligion" id="fatherreligion">
                                     <option selected><%=rs.getString("fatherreligion")%></option>
                                     <option>Hindu</option>
                                     <option>Muslim</option>
                                     <option>Sikh</option>
                                     <option>Christian</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
                    <td>
                        <div align=right><font face="Arial">Mother Religion&nbsp;&nbsp;</font></div>
                    </TD>
                    
                    <td>
                        <div align="center">
                                 <select class="form-control"name="motherreligion" id="motherreligion">
                                     <option selected><%=rs.getString("motherreligion")%></option>
                                     <option>Hindu</option>
                                     <option>Muslim</option>
                                     <option>Sikh</option>
                                     <option>Christian</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        
                    </TD>
                </TR>
<TR><TD><BR></TD></TR>
                <TR valign=top>

<td>
<div align=right><font face="Arial">Father Education Status&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="fathereducation" id="fathereducation">
                                     <option selected><%=rs.getString("fathereducationstatus")%></option>
                                     <option>Tenth (SSC)</option>
                                     <option>Twelfth (HSC)</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<td>
<div align=right><font face="Arial">Mother Education Status&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="mothereducation" id="mothereducation">
                                     <option selected><%=rs.getString("mothereducationstatus")%></option>
                                     <option>Tenth (SSC)</option>
                                     <option>Twelfth (HSC)</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
<div align=right><font face="Arial">Father Occupation&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="fatheroccupation" id="fatheroccupation">
                                     <option selected><%=rs.getString("fatheroccupation")%></option>
                                     <option>Government Job</option>
                                     <option>Personal Business</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<td>
<div align=right><font face="Arial">Mother Occupation&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="motheroccupation" id="motheroccupation">
                                     <option selected><%=rs.getString("motheroccupation")%></option>
                                     <option>Government Job</option>
                                     <option>Personal Business</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
<div align=right><font face="Arial">Total Number Of Children Alive&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="totalchild" type="text" id="totalchild" value="<%=rs.getString("TotalNumberChildAlive")%>">
                            </div>
                        </div>
                    </TD>

<td>
<div align=right><font face="Arial">Current Age At The Time Of Delivery&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="motherdeliveryage" type="text" id="motherdeliveryage" value="<%=rs.getString("ageatthetimedelivery")%>">
                            </div>
                        
                    </TD>
                    </TR>
                    <TR><TD><BR></TD></TR>
<TR valign=top>
    
<td>
<div align=right><font face="Arial">Mother Age At The Time Of Marriage&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="mothermarriageage" type="text" id="mothermarriageage" value="<%=rs.getString("ageatthetimemarriage")%>">
                            </div>
                        
                    </TD>

<td>
<div align=right><font face="Arial">At The Time Of Delivery Nurse Status&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="nursestatus" id="nursestatus">
                                     <option selected><%=rs.getString("timeofdeliverystatusofnurse")%></option>
                                     <option>Trained Nurse</option>
                                     <option>Untrained Nurse</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<td>
<div align=right><font face="Arial">Child Weight At The Time Of Birth&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="childweight" type="text" id="childweight" value="<%=rs.getString("weightattimeofbirth")%>">
                            </div>

                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<td>
<div align=right><font face="Arial">Type Of Delivery&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <select class="form-control"name="deliverytype" id="deliverytype">
                                     <option selected><%=rs.getString("typeofdelivery")%></option>
                                     <option>Normal</option>
                                     <option>Operation</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<td>
<div align=right><font face="Arial">Time Of Pregnancy&nbsp;&nbsp;</font></div>

</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="pregnancytime" type="text" id="pregnancytime" value="<%=rs.getString("timeofpregnancy")%>">
                            </div>

                    </TD>
<td>
<div align=right><font face="Arial">Mobile Number&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="mobilenumber" type="text" id="mobilenumber" value="<%=rs.getString("mobilenumber")%>">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>

                    <td>
<div align=right><font face="Arial">Email Id&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="emailid" type="text" id="emailid" value="<%=rs.getString("emailid")%>">
                            </div>
                    </TD>

<td>
<div align=right><font face="Arial">Registration Unit&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="registrationunit" type="text" id="registrationunit" value="Registrar (Birth & Death) and Chief Municipal Council Officer  ">
                            </div>
                    </TD>
<td>
<div align=right><font face="Arial">Registrar&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="registrar" type="text" id="registrar" value="<%=cmo%>">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<td>
<div align=right><font face="Arial">Informer Name, Address&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center"> <textarea class="form-control"name="informerdetail" id="informerdetail" ><%=rs.getString("InformerDetail")%></textarea></div>
                    </TD>
<td>
<div align=right><font face="Arial">Informed Date&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
    <div align="center"> <input class="form-control"type="text" name="informeddate" id="informeddate" readonly onClick="GetDate(this);" value="<%=rs.getString("InformedDate")%>" /></div>

                    </TD>
<td>
<div align=right><font face="Arial">Informer Relation&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="informerrelation" type="text" id="informerrelation"  value="<%=rs.getString("informerrelation")%>">
                            </div>
                    </TD>
</TR>
<TR valign=top>
<td>
<div align=right><font face="Arial">Create User&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="createuser" type="text" id="createuser">
                            </div>
                    </TD>
<td>
<div align=right><font face="Arial">Approval&nbsp;&nbsp;</font></div>
</TD>
<td>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="approval" type="text" id="approval">
                            </div>
                    </TD>
</TR>
<TR valign=top>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<td>
<div><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>

<td>
<div align="center"> <input class="btn btn-outline btn-primary" size="26" id="back" type="button" name="back" value="BACK"></div>
    </div>
</TD>
<td>
<td>
    
        <div align="center">
             <input class="btn btn-outline btn-primary" size="26" type="submit" name="Submit" value="SUBMIT">
        </div>
    </div>
</td>
<td>
<div align="center"> <input class="btn btn-outline btn-primary" size="26" type="reset" name="reset" value="RESET"></div>
    </div>
</TD>
<td>
       
</div>
</TD>
<td>
<div><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<td>
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
</TR>
</font>
</table>
 </div>
   </form>       
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
            var ids = [ "childname1" , "fathername1" , "mothername1" , "address1" , "birthplace1" , "birthplaceaddress1" , "wardname1"];
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
               if (!trans.childname1.value.match(/^[A-Za-z0-9]+$/) && trans.childname1.value !="")
               {
                    var childname = document.getElementById('childname').value; 
                    var childname1 = document.getElementById('childname1').value;
                    document.getElementById('childname').value = childname+childname1.charAt((childname1.length)-1);  

               }
               else
               {
                   var childname1 = document.getElementById('childname1').value;
                   document.getElementById('childname').value = childname1;
               }
}
function AllowAlphabet2()
{
                if (!trans.fathername1.value.match(/^[A-Za-z0-9]+$/) && trans.fathername1.value !="")
               {
                    var fathername = document.getElementById('fathername').value; 
                    var fathername1 = document.getElementById('fathername1').value;
                    document.getElementById('fathername').value = fathername+fathername1.charAt((fathername1.length)-1);  

               }
               else
               {
                   var fathername1 = document.getElementById('fathername1').value;
                   document.getElementById('fathername').value = fathername1;
               }
}
function AllowAlphabet3()
{
                if (!trans.mothername1.value.match(/^[A-Za-z0-9]+$/) && trans.mothername1.value !="")
               {
                    var mothername = document.getElementById('mothername').value; 
                    var mothername1 = document.getElementById('mothername1').value;
                    document.getElementById('mothername').value = mothername+mothername1.charAt((mothername1.length)-1);  

               }
               else
               {
                   var mothername1 = document.getElementById('mothername1').value;
                   document.getElementById('mothername').value = mothername1;
               }
}      
function AllowAlphabet4()
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
                if (!trans.birthplace1.value.match(/^[A-Za-z0-9]+$/) && trans.birthplace1.value !="")
               {
                    var birthplace = document.getElementById('birthplace').value; 
                    var birthplace1 = document.getElementById('birthplace1').value;
                    document.getElementById('birthplace').value = birthplace+birthplace1.charAt((birthplace1.length)-1);  

               }
               else
               {
                   var birthplace1 = document.getElementById('birthplace1').value;
                   document.getElementById('birthplace').value = birthplace1;
               }
}
function AllowAlphabet6()
{
                if (!trans.birthplaceaddress1.value.match(/^[A-Za-z0-9]+$/) && trans.birthplaceaddress1.value !="")
               {
                    var birthplaceaddress = document.getElementById('birthplaceaddress').value; 
                    var birthplaceaddress1 = document.getElementById('birthplaceaddress1').value;
                    document.getElementById('birthplaceaddress').value = birthplaceaddress+birthplaceaddress1.charAt((birthplaceaddress1.length)-1);  

               }
               else
               {
                   var birthplaceaddress1 = document.getElementById('birthplaceaddress1').value;
                   document.getElementById('birthplaceaddress').value = birthplaceaddress1;
               }
}      
function AllowAlphabet7()
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
</script>
<script type="text/javascript">document.onload = ctck();</script>
 <!-- <Script language="javascript">
     function validate()
{
    var v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28;
    v1=document.getElementById("registrationdate").value;
    v2=document.getElementById("prefix").value;
    v3=document.getElementById("registrationnumber").value;
    v4=document.getElementById("gender").value;
    v5=document.getElementById("gender1").value;
    v6=document.getElementById("birthdate").value;
    v7=document.getElementById("childname").value;
    v8=document.getElementById("childname1").value;
    v9=document.getElementById("fathername").value;
    v10=document.getElementById("fathername1").value;
    v11=document.getElementById("mothername").value;
    v12=document.getElementById("mothername1").value;
    v13=document.getElementById("address").value;
    v14=document.getElementById("address1").value;
    v15=document.getElementById("birthplace").value;
    v16=document.getElementById("birthplace1").value;
    v17=document.getElementById("birthplaceaddress").value;
    v18=document.getElementById("birthplaceaddress1").value;
    v19=document.getElementById("wardname").value;
    v20=document.getElementById("wardname1").value;
    v21=document.getElementById("city").value;
    v22=document.getElementById("city1").value;
    v23=document.getElementById("state").value;
    v24=document.getElementById("state1").value;
    v25=document.getElementById("division").value;
    v26=document.getElementById("division1").value;
        
       if(v1=="yyyy-mm-dd")
        {
            alert("Registration Date cannot be blank");
            return false;
        }
        if(v2=="NPP/BIRTH/")
        {
            alert("Prefix cannot be blank");
            return false;
        }
        if(v3=="")
        {
            alert("Registration Number cannot be blank");
            return false;
        }
        if(v4=="SELECT GENDER"||v5=="&#2354;&#2367;&#2306;&#2327; &#2330;&#2351;&#2344;")
        {
            alert("Gender cannot be blank");
            return false;
        }
        if(v6=="yyyy-mm-dd")
        {
            alert("Birth Date cannot be blank");
            return false;
        }
        if(v7==""||v8=="")
        {
            alert("Child's Name cannot be blank");
            return false;
        }
        if(v9==""||v10=="")
        {
            alert("Father's Name cannot be blank");
            return false;
        }
        if(v11==""||v12=="")
        {
            alert("Mother's Name cannot be blank");
            return false;
        }    
        if(v13==""||v14=="")
        {
            alert("Address cannot be blank");
            return false;
        }
        if(v15==""||v16=="")
        {
            alert("Birth Place cannot be blank");
            return false;
        }
        if(v17==""||v18=="")
        {
            alert("Birth Place Address cannot be blank");
            return false;
        }
        if(v19==""||v20=="")
        {
            alert("Ward Name cannot be blank");
            return false;
        }
        if(v21==""||v22=="")
        {
            alert("City cannot be blank");
            return false;
        }
        if(v23=="SELECT STATE"||v24=="&#2346;&#2381;&#2352;&#2342;&#2375;&#2358; &#2330;&#2351;&#2344;")
        {
            alert("State cannot be blank");
            return false;
        }        
        if(v25==""||v26=="")
        {
            alert("Division cannot be blank");
            return false;
        } 
} 
</Script> -->
</body>
</html>

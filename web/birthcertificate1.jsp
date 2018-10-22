<!DOCTYPE HTML>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<title>Birth Certificate</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
    <script src="js/jquery-1.11.0.js"></script>
<script>
     $(document).ready(function(){
         $("select#gender").blur(function(){
             var gender = $("select#gender").val();
             if(gender=="Male"){
            $("select#gender1").val("पुरुष");}
        else{
            $("select#gender1").val("महिला");}
         });
         
    $("input#next").click(function(){
        $("div#birth1").hide(1000);
        $("div#birth2").show(1000);
    });
    
    $("input#back").click(function(){
        $("div#birth2").hide(500);
        $("div#birth1").show(500);
     });
     });
     
 </script>
</head>
<body>
                        <%@ page import = "java.sql.*" %>
                    <%
HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
                    %>

    <%
try
               {

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();

String city=null;
String cityhin=null;
String district=null;
String districthin=null;
String div=null;
String divhin=null;
String cmo=null;
String birthprefix=null;

String regno = null;
String info ="select * from master";
rs=statement.executeQuery(info);
while(rs.next())
{
    birthprefix=rs.getString("birthprefix");
    district=rs.getString("district");
    districthin=rs.getString("districthin");
    city=rs.getString("city");
    cityhin=rs.getString("cityhin");
    div=rs.getString("division");
    divhin=rs.getString("divisionhin");
    cmo=rs.getString("cmo");
    
}
{
 String sql = ("SELECT max(RegistrationNumber) FROM birthcertificate2000 where prefix = '"+birthprefix+"'");
rs = statement.executeQuery(sql);
while(rs.next())
       {
regno = rs.getString(1);
}
 }
int a = Integer.parseInt(regno);
int c = a+1;




%>

<script>
   $(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","#FFFFCC");
  });
  $("*").blur(function(){
      if($(this).val()=="")
      {
          $(this).css("background-color","#ffffff");}
      else{
           $(this).css("background-color","#DCDCDA");

      }
  });
  $("select#birthplace1").blur(function(){
      var a =$(this).val();
      if(a=='घर'){$("input#birthplace").val("Home");}
      if(a=='अस्पताल'){$("input#birthplace").val("Hospital");}
      if(a=='अन्य'){$("input#birthplace").val("Other");}
  });
});    


</script>
    <form method="post" action="Birthcertificate2">  

<div>
<div id="birth1" class="container">
    <table style=" width: 100%; color: black">    

        <tr valign=top>
            <td >
                <div align=right><font face="Arial">Prefix&nbsp;&nbsp;</font>
                </div>
            </td>
           
            <td >
                <div align="center">
                    <input class="form-control" size="26" name="prefix" value="<%=birthprefix%>" type="text" id="prefix" readonly>
                </div>
            </td>

            <td >
                <div align=right><font face="Arial">Registration Number&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td >
                <div align="center">
                    <input class="form-control" size="26" name="registrationnumber" type="text" id="registrationnumber" readonly="" value="<%=c%>">
                </div>
            </td>
            <td >
                <div align=right><font face="Arial">Registration Date&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" type="date" name="registrationdate" id="registrationdate">
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td >
                <div align=right><br>
                </div>
            </td>
            
            <td >
                <div align="center"><br>
                </div>
            </td>
        </tr>        
        
        <tr valign=top>
            <td >
                <div align=right><font face="Arial">Birth Date&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" type="date" name="birthdate" id="birthdate" >
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">Gender&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td >
                <div align="center">
                    <select  class="form-control" name="gender" id="gender" ="">
                        <option selected></option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">लिंग&nbsp;&nbsp;</font>
                </div>
            </td>
            
            <td >
                <div align="center">
                    <select  class="form-control" name="gender1" id="gender1">
                        <option selected></option>
                        <option>पुरुष</option>
                        <option>महिला</option>
                    </select>
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td >
                <div align=right><br>
                </div>
            </td>
            
            <td >
                <div align="center"><br>
                </div>
            </td>
        </tr> 
        
        <tr valign=top>
            <td >
                <div align=right><font face="Arial">बच्चे का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                    <input class="form-control" size="26" name="childname1" type="text" id="childname1" onkeydown="javascript: displayKeyCode1(event);">
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">पिता का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                    <input class="form-control" size="26" name="fathername1" type="text" id="fathername1"  onkeydown="javascript: displayKeyCode2(event);">
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">माता का नाम&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                    <input class="form-control" size="26" name="mothername1" type="text" id="mothername1"  onkeydown="javascript: displayKeyCode3(event);">
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td >
                <div align=right><br>
                </div>
            </td>
            
            <td >
                <div align="center"><br>
                </div>
            </td>
        </tr> 
        
        <tr valign=top>
            <td >
                <div align=right><font face="Arial">Child's Name &nbsp;&nbsp;</font>                </div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" size="26" name="childname" type="text" id="childname">
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">Father's Name &nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" size="26" name="fathername" type="text" id="fathername">
                </div>
            </td>
            -
            <td >
                <div align=right><font face="Arial">Mother's Name &nbsp;&nbsp;</font>                </div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" size="26" name="mothername" type="text" id="mothername">
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td >
                <div align=right><br>
                </div>
            </td>
            
            <td >
                <div align="center"><br>
                </div>
            </td>
        </tr>
        
        <tr rowspan="2" valign=top>
            <td >
                <div align=right><font face="Arial">पता&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center"><textarea class="form-control" name="address1" id="address1"  onkeydown="javascript: displayKeyCode4(event);" ></textarea>
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">जन्म स्थान&nbsp;&nbsp;</font></div>
            </td>
            
            <td>
        
                    <select class="form-control" name="birthplace1" id="birthplace1">
                
                   <option>घर</option>
                    <option>अस्पताल</option>
                    <option>अन्य</option>
                </select>
            </td>
            
            <td >
                <div align=right><font face="Arial">जन्म स्थान का पता&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                    <textarea class="form-control"name="birthplaceaddress1" id="birthplaceaddress1"  onkeydown="javascript: displayKeyCode5(event);" ></textarea>
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td >
                <div align=right><br>
                </div>
            </td>
            
            <td >
                <div align="center"><br>
                </div>
            </td>
        </tr>    
        
        <tr rowspan="2" valign=top>
            <td >
                <div align=right><font face="Arial">Address&nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                  <textarea class="form-control"name="address" id="address" ></textarea>
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">Birth Place &nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center"><input class="form-control" size="26" readonly="" name="birthplace" type="text" id="birthplace">
                </div>
            </td>
            
            <td >
                <div align=right><font face="Arial">Birth Place Address &nbsp;&nbsp;</font></div>
            </td>
            
            <td >
                <div align="center">
                  <textarea class="form-control"name="birthplaceaddress" id="birthplaceaddress"></textarea>
                </div>
            </td>
            </tr>

            <tr valign=top>
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td >
                    <div align=right>
                      <div align=right>
                    <font face="Arial">वार्ड &nbsp;&nbsp;</font> </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" size="26" name="wardname1" type="text" id="wardname1" onkeydown="return AllowAlphabet7()">
                    </div>
                </td>
                
                <td ><div align="right"><font face="Arial">Ward No &nbsp;&nbsp;</font></div></td>
                
                <td >
                    <div align="center"><input class="form-control" size="26" name="wardname" type="text" id="wardname">
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial">City&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" name="city" type="text" id="city" value="<%=city%>" size="26">
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td >
                    <div align=right><font face="Arial">शहर&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" name="city1" type="text" id="<%=city%>" value="&#2346;&#2368;&#2341;&#2350;&#2346;&#2369;&#2352;" size="26">
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial">State&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center">
                        <select  class="form-control" name="state" id="state">
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
                
                <td >
                    <div align=right><font face="Arial">District&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td > 
                   
                    <div align="center"><input class="form-control" name="district" type="text" id="district" value="<%=district%>" size="26">
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
            
            <tr valign=top>
                <td >
                    <div align=right><font face="Arial">जिला&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" name="district1" type="text" id="district1" value="<%=districthin%>" size="26">
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial">Division&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" name="division" type="text" id="division" value="<%=div%>" size="26">
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial">सम्भाग&nbsp;&nbsp;</font>
                    </div>
                </td>
                
                <td >
                    <div align="center"><input class="form-control" name="division1" type="text" id="division1" value="<%=divhin%>" size="26">
                    </div>
                </td>
                
                <td >
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                </td>
                <td ><div>
                <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                </div>
                </td>
            </tr>
            <tr valign=top>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>  
                </td>
                <td ><div>
                    <div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
                    </div>
                </td>
            </tr>
    </table>
                    <center><table>
            <tr valign=top>
                <td >
                    <div>
                    <div align="center">
                        <input class="btn btn-outline btn-primary" size="26" type="button" name="next" id="next" value="NEXT">
                    </div>
                    </div>
                </td>
                <td ><div>
                    </div>
                </td>
                <td ><div>
                    <div align=right><font face="Arial">                    <div align=right><input class="btn btn-outline btn-primary" size="26" type="reset" name="reset" value="RESET"></div>
&nbsp;&nbsp;</font></div>
                    </div>
                </td>
            </tr>
        </table></center>
    
    </div>
                    <!-- Birth Certificate 2 --> <!-- Birth Certificate 2 --> <!-- Birth Certificate 2 -->
                    
             <div id="birth2" hidden="hidden">
    <table style=" width: 100%; color: black"> 
        <font color="black">
                <TR valign=top>
                    <TD >
                        <div align=right><font face="Arial">Family Religion&nbsp;&nbsp;</font></div>
                    </TD>
                    
                    <TD >
                        <div align="center">
                                <select  class="form-control" name="familyreligion" id="familyreligion">
                                     <option selected>SELECT RELIGION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>Hindu</option>
                                     <option>Muslim</option>
                                     <option>Sikh</option>
                                     <option>Christian</option>
                                     <option>Other</option>
                                </select>
                        </div>
                    </TD>
                   
                    <TD >
                        <div align=right><font face="Arial">Father Religion&nbsp;&nbsp;</font></div>
                    </TD>

                    <TD >
                        <div align="center">
                                <select  class="form-control" name="fatherreligion" id="fatherreligion">
                                     <option selected>SELECT RELIGION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>Hindu</option>
                                     <option>Muslim</option>
                                     <option>Sikh</option>
                                     <option>Christian</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
                    <TD >
                        <div align=right><font face="Arial">Mother Religion&nbsp;&nbsp;</font></div>
                    </TD>
                    
                    <TD >
                        <div align="center">
                                <select  class="form-control" name="motherreligion" id="motherreligion">
                                     <option selected>SELECT RELIGION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
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

<TD >
<div align=right><font face="Arial">Father Education Status&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="fathereducation" id="fathereducation">
                                     <option selected>EDUCATION STATUS &nbsp; &nbsp; &nbsp;</option>
                                     <option>Tenth (SSC)</option>
                                     <option>Twelfth (HSC)</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD >
<div align=right><font face="Arial">Mother Education Status&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="mothereducation" id="mothereducation">
                                     <option selected>EDUCATION STATUS &nbsp; &nbsp; &nbsp;</option>
                                     <option>Tenth (SSC)</option>
                                     <option>Twelfth (HSC)</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<TD >
<div align=right><font face="Arial">Father Occupation&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="fatheroccupation" id="fatheroccupation">
                                     <option selected>SELECT OCCUPATION &nbsp;&nbsp;</option>
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
<TD >
<div align=right><font face="Arial">Mother Occupation&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="motheroccupation" id="motheroccupation">
                                     <option selected>SELECT OCCUPATION &nbsp;&nbsp;</option>
                                     <option>Government Job</option>
                                     <option>Personal Business</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<TD >
<div align=right><font face="Arial">Total Number Of Children Alive&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="totalchild" type="text" id="totalchild">
                            </div>
                        </div>
                    </TD>

<TD >
<div align=right><font face="Arial">Current Age At The Time Of Delivery&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="motherdeliveryage" type="text" id="motherdeliveryage">
                            </div>
                        
                    </TD>
                    </TR>
                    <TR><TD><BR></TD></TR>
<TR valign=top>
    
<TD >
<div align=right><font face="Arial">Mother Age At The Time Of Marriage&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="mothermarriageage" type="text" id="mothermarriageage">
                            </div>
                        
                    </TD>

<TD >
<div align=right><font face="Arial">At The Time Of Delivery Nurse Status&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="nursestatus" id="nursestatus">
                                     <option selected>SELECT STATUS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>Trained Nurse</option>
                                     <option>Untrained Nurse</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD >
<div align=right><font face="Arial">Child Weight At The Time Of Birth&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="childweight" type="text" id="childweight">
                            </div>

                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<TD >
<div align=right><font face="Arial">Type Of Delivery&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <select  class="form-control" name="deliverytype" id="deliverytype">
                                     <option selected>SELECT TYPE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</option>
                                     <option>Normal</option>
                                     <option>Operation</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD >
<div align=right><font face="Arial">Time Of Pregnancy&nbsp;&nbsp;</font></div>

</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="pregnancytime" type="text" id="pregnancytime">
                            </div>

                    </TD>
<TD >
<div align=right><font face="Arial">Mobile Number&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="mobilenumber" type="text" id="mobilenumber">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>

                    <TD >
<div align=right><font face="Arial">Email Id&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="emailid" type="text" id="emailid">
                            </div>
                    </TD>

<TD >
<div align=right><font face="Arial">Registration Unit&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="registrationunit" type="text" id="registrationunit">
                            </div>
                    </TD>
<TD >
<div align=right><font face="Arial">Registrar&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="registrar" type="text" id="registrar" value="<%=cmo%>">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<TD >
<div align=right><font face="Arial">Informer Name, Address&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center"><textarea class="form-control"name="informerdetail" id="informerdetail" ></textarea></div>
                    </TD>
<TD >
<div align=right><font face="Arial">Informed Date&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                                            <div align="center"><input class="form-control" type="date" name="informeddate" id="informeddate"></div>

                    </TD>
<TD >
<div align=right><font face="Arial">Informer Relation&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center">
                                <input class="form-control" size="26" name="informerrelation" type="text" id="informerrelation">
                            </div>
                    </TD>
</TR>
<TR valign=top>
<TD >
</TD>
<TD >
                        
                            <div align="center">
                            </div>
                    </TD>
<TD >
</TD>
<TD >
                        
                            <div align="center">
                            </div>
                    </TD>
<TD >
<div align=right><font face="Arial">Remarks&nbsp;&nbsp;</font></div>
</TD>
<TD >
                        
                            <div align="center"><font color="black">
                              <textarea class="form-control"name="remarks" id="remarks" ></textarea>
                            &nbsp;&nbsp;</font></div>
      </TD>
</TR>
<TR valign=top>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
<TD >
<div align=right><font face="Arial"><BR>&nbsp;&nbsp;</font></div>
</div>
</TD>
</TR>
</table>

                 <center><table><TR valign=top>

<td >
    
        <div align="center">
            <input class="btn btn-outline btn-primary" size="26" type="submit" name="submit" value="SUBMIT" >
        </div>
    </div>
</td>
<td>&nbsp;
<td >
    
        <div align="center">
            <input class="btn btn-outline btn-primary" size="26" type="button" id="back" name="back" value="BACK" >
        </div>
    
</td>
<td>&nbsp;
<TD >
<div align="center"><input class="btn btn-outline btn-primary" size="26" type="reset" name="reset" value="RESET"></div>
    
</TD>
</TR>
<TR valign=top>
</table></center>
        </div>
        </div></form>
    
       
                    <%
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
            // Create an instance on TransliterationControl with the 
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
        <script>
     var prev=1;


function displayKeyCode1(evt)
 {
	var textBox = getObject('childname1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var childname1 = document.getElementById('childname1').value;
    var childname = document.getElementById('childname').value;
   if(prev != " ")
   {
    
    prev = childname1.slice(childname1.length-1);
    document.getElementById('childname').value = childname.slice(0,-1);
   }
   else
    {
   if(prev == " ")
    {prev = prev+1;
   }
   // alert(prev);

    }

}
   // backspace
	 else
    {
 var childname = document.getElementById('childname').value; 
     var childname1 = document.getElementById('childname1').value;
     document.getElementById('childname').value = childname+childname1.charAt((childname1.length)-1); 
	
    }
	

 }

function displayKeyCode2(evt)
 {
	var textBox = getObject('fathername1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var fathername1 = document.getElementById('fathername1').value;
    var fathername = document.getElementById('fathername').value;
   if(prev != " ")
   {
    
    prev = fathername1.slice(fathername1.length-1);
    document.getElementById('fathername').value = fathername.slice(0,-1);
   }
   else
    {
   if(prev == " ")
    {prev = prev+1;
   }
   // alert(prev);

    }

}
   // backspace
	 else
    {
 var fathername = document.getElementById('fathername').value; 
     var fathername1 = document.getElementById('fathername1').value;
     document.getElementById('fathername').value = fathername+fathername1.charAt((fathername1.length)-1); 
	
    }
	

 }


function displayKeyCode3(evt)
 {
	var textBox = getObject('mothername1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var mothername1 = document.getElementById('mothername1').value;
    var mothername = document.getElementById('mothername').value;
   if(prev != " ")
   {
    
    prev = mothername1.slice(mothername1.length-1);
    document.getElementById('mothername').value = mothername.slice(0,-1);
   }
   else
    {
   if(prev == " ")
    {prev = prev+1;
   }
   // alert(prev);

    }

}
   // backspace
	 else
    {
   var mothername = document.getElementById('mothername').value; 
     var mothername1 = document.getElementById('mothername1').value;
     document.getElementById('mothername').value = mothername+mothername1.charAt((mothername1.length)-1); 
	
    }
	

 }

function displayKeyCode4(evt)
 {
	var textBox = getObject('address1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var address1 = document.getElementById('address1').value;
    var address = document.getElementById('address').value;
   if(prev != " ")
   {
    
    prev = address1.slice(address1.length-1);
    document.getElementById('address').value = address.slice(0,-1);
   }
   else
    {
   if(prev == " ")
    {prev = prev+1;
   }
   // alert(prev);

    }

}
   // backspace
	 else
    {
   var address = document.getElementById('address').value; 
     var address1 = document.getElementById('address1').value;
     document.getElementById('address').value = address+address1.charAt((address1.length)-1); 
	
    }
	

 }


function displayKeyCode5(evt)
 {
	var textBox = getObject('birthplaceaddress1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var birthplaceaddress1 = document.getElementById('birthplaceaddress1').value;
    var birthplaceaddress = document.getElementById('birthplaceaddress').value;
   if(prev != " ")
   {
    
    prev = birthplaceaddress1.slice(birthplaceaddress1.length-1);
    document.getElementById('birthplaceaddress').value = birthplaceaddress.slice(0,-1);
   }
   else
    {
   if(prev == " ")
    {prev = prev+1;
   }
   // alert(prev);

    }

}
   // backspace
	 else
    {
     var birthplaceaddress = document.getElementById('birthplaceaddress').value; 
     var birthplaceaddress1 = document.getElementById('birthplaceaddress1').value;
     document.getElementById('birthplaceaddress').value = birthplaceaddress+birthplaceaddress1.charAt((birthplaceaddress1.length)-1); 
	
    }
	

 }

 
 function getObject(obj)
 {
	 var theObj;
	 if (document.all) {
		 if (typeof obj=='string') {
			 return document.all(obj);
		 } else {
			 return obj.style;
		 }
	 }
	 if (document.getElementById) {
		 if (typeof obj=='string') {
			 return document.getElementById(obj);
		 } else {
			 return obj.style;
		 }
	 }
	 return null;
 }

  </script>
<!-- <script type="text/javascript">
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

</script> -->

<script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

<script type="text/javascript">document.onload = ctck();</script>
 
</body>
</html>

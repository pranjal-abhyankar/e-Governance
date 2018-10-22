<!DOCTYPE HTML>
  <%@ page import = "java.sql.*" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>   
<%@ page import = "java.util.*" %>
<html>
<head>
<title>Death Certificate</title>
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
</head>

<body>
 <%
try
               {
    
    HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString(); 

String city=null;
String cityhin=null;

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String regno = null;

{
 String sql = ("SELECT max(RegistrationNo) FROM deathcertificate where prefix = 'NPP/DEATH/2014/'");
rs = statement.executeQuery(sql);
while(rs.next())
       {
regno = rs.getString(1);
}
 }
int a = Integer.parseInt(regno);
int c = a+1;

String info="select city,cityhin from master";
rs=statement.executeQuery(info);
while(rs.next())
      {
        city=rs.getString("city");
        cityhin=rs.getString("cityhin");
      }
%>

    <script src="js/jquery-1.11.0.js"></script>

<script>
   $(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
  
  $("select#gender1").blur(function(){
      var temp=$(this).val();
      if(temp=="पुरुष"){$("select#gender").val("Male");}
      if(temp=="महिला"){$("select#gender").val("Female");}
  });
  
   $("select#agestatus1").blur(function(){
      var temp=$(this).val();
      if(temp=="बच्चा"){$("select#agestatus").val("Child");}
      if(temp=="एडल्ट"){$("select#agestatus").val("Adult");}
      if(temp=="अन्य"){$("select#agestatus").val("Other");}
  });
});    


</script>

<form method="post" action="Deathcertificate2" name="trans">    
    


    <TABLE style=" width: 100%; color: black"> 
<TR valign=top>
<td><div>
<div align=right><font face="Arial">Prefix &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" readonly name="prefix" value="NPP/DEATH/2014/" type="text" id="prefix">
                            </div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">Registration Number &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="registrationnumber" type="text" id="registrationnumber" value="<%=c%>">
                            </div>
                        </div>
                    </TD>
 
   
<td><div>
<div align=right><font face="Arial">Registration Date &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
    <div>
                        <div align="center"> <input class="form-control" type="date" name="registrationdate" id="registrationdate">

        </div>
    </div>
</TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Death Date &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
    <div>
                        <div align="center"> <input class="form-control" type="date" name="deathdate" id="deathdate">
</div>
    </div>
</TD>
<td><div>
<div align=right><font face="Arial">Age &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
    <div>
        <div align="center">
             <input class="form-control" size="26" name="age" required="required" type="text" id="age">
        </div>
    </div>
</TD>
<td><div>
<div align=right><font face="Arial">Informed Date &nbsp;&nbsp</font></div>
</div>
</TD>

<td>
                        <div>
                                           <div align="center"> <input class="form-control" type="date" name="informeddate" id="informeddate">

                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">मृतक का नाम &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="name1" type="text" id="name1" onKeyPress="return AllowAlphabet1()">
                            </div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">पति/पिता का नाम &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                               <input class="form-control" size="26" name="fatherhusbandname1" type="text" id="fatherhusbandname1" onKeyPress="return AllowAlphabet2()">
                            </div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">Mobile No.  &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                               <input class="form-control" size="26" name="mobilenumber" type="text" id="mobilenumber">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>

<td><div>
<div align=right><font face="Arial">Person Name  &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="name" type="text" required="required" id="name">
                            </div>
                        </div>
                    </TD>

                    <td><div>
<div align=right><font face="Arial">Father's/Husband's Name  &nbsp;&nbsp</font></div>
</div>
</TD>
                    <td>
                        <div>
                            <div align="center">
                               <input class="form-control" size="26" name="fatherhusbandname" type="text" required="required" id="fatherhusbandname">
                            </div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">Email Id &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="emailid" type="text" id="emailid">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR rowspan="2" valign=top>
<td><div>
<div align=right><font face="Arial">Address &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control"  name="address1" id="address1"  required="required" onkeypress="return AllowAlphabet3()"></textarea></div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control" name="address" required="required" id="address" ></textarea></div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">Informer Name, Address &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control" name="informerdetail1" id="informerdetail1" required="required" onkeypress="return AllowAlphabet4()"></textarea></div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control" name="informerdetail" required="required" id="informerdetail" ></textarea></div>
                        </div>
                    </TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
    <td><div>
<div align=right><font face="Arial">Gender &nbsp;&nbsp</font></div>
</div>
</TD>

<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="gender1" id="gender1">
                                     <option selected>लिंग चयन</option>
                                     <option>पुरुष</option>
                                     <option>महिला</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="gender" id="gender">
                                     <option selected>SELECT GENDER &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>Male</option>
                                     <option>Female</option>
                                </select>
                            </div>
                        </div>
                    </TD>
                    <td><div>
<div align=right><font face="Arial">Age Status &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="agestatus1" id="agestatus1">
                                     <option selected>स्तिथि चयन &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>बच्चा</option>
                                     <option>एडल्ट</option>
                                     <option>अन्य</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="agestatus" id="agestatus">
                                     <option selected>SELECT STATUS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>Child</option>
                                     <option>Adult</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Death Place &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="deathplace1" type="text" id="deathplace1" onKeyPress="return AllowAlphabet5()">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="deathplace" type="text" id="deathplace">
                            </div>
                        </div>
                    </TD>
<td><div>
<div align=right><font face="Arial">Death Place Address &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control" name="deathplaceaddress1" id="deathplaceaddress1" required="required" onKeyPress="return AllowAlphabet6()" ></textarea></div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center"> <textarea class="form-control" name="deathplaceaddress" id="deathplaceaddress" required="required"></textarea></div>
                        </div>
                    </TD>

</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Family Religion &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="familyreligion1" id="familyreligion1">
                                     <option selected>धर्म चयन &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                     <option>हिन्दू</option>
                                     <option>मुस्लिम</option>
                                      <option>सिख</option>
                                      <option>इसाई</option>
                                     <option>अन्य</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="familyreligion" id="familyreligion">
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

                    <td><div>
<div align=right><font face="Arial">Occupation &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="occupation1" id="occupation1">
                                     <option selected>व्यवसाय चयन &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
                                     <option>सरकारी नौकरी</option>
                                     <option>निजी कारोबार</option>
                                     <option>अन्य</option>
                                </select>
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="occupation" id="occupation">
                                     <option selected>SELECT OCCUPATION &nbsp;&nbsp;</option>
                                     <option>Government Job</option>
                                     <option>Personal Business</option>
                                     <option>Other</option>
                                </select>
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Medical Treatment Before Death &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="medicaltreatment1" id="medicaltreatment1">
                                     <option selected>आप्शन चयन &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>हाँ</option>
                                     <option>ना</option>
                                     <option>N/A</option>
                                </select>
                            </div>
                        </div>
                    </TD>    
<td>
                        <div>
                            <div align="center">
                                 <select class="form-control" name="medicaltreatment" id="medicaltreatment">
                                     <option selected>SELECT OPTION &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </option>
                                     <option>Yes</option>
                                     <option>No</option>
                                     <option>N/A</option>
                                </select>
                            </div>
                        </div>
                    </TD>

                    <td><div>
<div align=right><font face="Arial">Death Reason By Dr. &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="deathreason1" type="text" id="deathreason1" onKeyPress="return AllowAlphabet7()">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="deathreason" type="text" id="deathreason">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Informer Relation &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="informerrelation1" type="text" id="informerrelation1" required="required"  onKeyPress="return AllowAlphabet8()">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="informerrelation" type="text" required="required" id="informerrelation">
                            </div>
                        </div>
                    </TD>
                    <td><div>
<div align=right><font face="Arial">City &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                               <input class="form-control" name="city1" type="text" id="city1" value="<%=cityhin%>" size="26">
                           
                            </div>
                   
                        </div>
                   
</TD>
<td>
                        
    <div>
                           
        <div align="center">
                         
            <input class="form-control" name="city" type="text" id="city" value="<%=city%>" size="26">
                            </div>
                        </div>
                    </TD>

</TR>
<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>

<td><div>
<div align=right><font face="Arial">State &nbsp;&nbsp</font></div>
</div>
</TD>

<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" name="state1" id="state1" value="मध्य प्रदेश" readonly>
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                <input class="form-control" name="state" id="state" value="Madhya Pradesh" readonly>
                            </div>
                        </div>
                    </TD>
                    <td><div>
<div align=right><font face="Arial">Ward Name &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="wardname1" type="text" id="wardname1" onKeyPress="return AllowAlphabet9()">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="wardname" type="text" id="wardname">
                            </div>
                        </div>
                    </TD>

</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Registrar &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="registrar" type="text" id="registrar" value="Dr. Madhu Saxena">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">Remarks
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <textarea class="form-control" name="remark" type="text" id="remark"></textarea>
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial">Mother Name &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="mothername1" type="text" id="mothername1" required="required" onKeyPress="return AllowAlphabet11()">
                            </div>
                        </div>
                    </TD>
<td>
                        <div>
                            <div align="center">
                                 <input class="form-control" size="26" name="mothername" type="text" required="required" id="mothername">
                            </div>
                        </div>
                    </TD>
</TR>

<TR valign=top><td><div>
            <div align=right><font face="Arial"> &nbsp;&nbsp</font>&nbsp;</div>
</div>
</TD></TR>

<TR valign=top>
<td><div>
<div align=right><font face="Arial"><BR> &nbsp;&nbsp</font></div>
</div>
</TD>
<td><div>
        <div align=right><font face="Arial"><BR> &nbsp;&nbsp</font></div>
</div>
</TD>
<td>
    <div>
        <div align="center">
             <input class="btn btn-outline btn-primary"  size="26" type="submit" name="Submit" value="SUBMIT">
        </div>
    </div>
</td>
<td><div>
<div align=right> <input class="btn btn-outline btn-primary"  size="26" type="reset" name="reset" value="RESET"></div>
    </div>
</TD>
<td><div>
<div align=right><font face="Arial"><BR> &nbsp;&nbsp</font></div>
</div>
</TD>
<td><div>
<div align=right><font face="Arial"><BR> &nbsp;&nbsp</font></div>
</div>
</TD>
</TR>
</TABLE>
    
</form>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>Birth Certificate</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script language="JavaScript" src="js/htmlDatePicker.js" type="text/javascript"></script>
<link href="css/htmlDatePicker.css" rel="stylesheet" />

</head>

<body>
   <%@ page import = "java.sql.*" %>
           

 
<%@ page import = "java.util.*" %>         
 
<%@ page import = "java.sql.*" %>
<%
try
               {
               request.setCharacterEncoding("UTF-8");

String registrationdate= request.getParameter("registrationdate");
String prefix= request.getParameter("prefix");   
String registrationnumber= request.getParameter("registrationnumber");
String gender= request.getParameter("gender");
String gender1= request.getParameter("gender1");
String birthdate= request.getParameter("birthdate");
String childname= request.getParameter("childname");
String childname1= request.getParameter("childname1");
String fathername= request.getParameter("fathername");
String fathername1= request.getParameter("fathername1");
String mothername= request.getParameter("mothername");
String mothername1= request.getParameter("mothername1");
String address= request.getParameter("address");
String address1= request.getParameter("address1");
String birthplace= request.getParameter("birthplace");
String birthplace1= request.getParameter("birthplace1");
String birthplaceaddress= request.getParameter("birthplaceaddress");
String birthplaceaddress1= request.getParameter("birthplaceaddress1");
String wardname= request.getParameter("wardname");
String wardname1= request.getParameter("wardname1");
String city= request.getParameter("city");
String city1= request.getParameter("city1");
String state= request.getParameter("state");
String state1= request.getParameter("state1");
String division= request.getParameter("division");
String division1= request.getParameter("division1");

session.setAttribute("registrationnumber", registrationnumber);
session.setAttribute("prefix", prefix);

    Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur", "root", "root");

ResultSet rs = null;

Statement statement = connection.createStatement();


//if (registrationdate!=null&&prefix!=null&&registrationnumber!=null&&gender!=null&&birthdate!=null&&childname!=null&&fathername!=null&&mothername!=null&&address!=null&&birthplace!=null&&birthplaceaddress!=null&&wardname!=null&&city!=null&&state!=null&&district!=null&&division!=null)

{
 String query = "set names utf8";
 statement.execute(query);
{      
 String sql = "UPDATE birthcertificate2000 SET registrationdate='"+registrationdate+"', prefix='"+prefix+"', registrationnumber='"+registrationnumber+"', gender='"+gender+"', genderhindi='"+gender1+"', birthdate='"+birthdate+"', childname='"+childname+"', childnamehindi='"+childname1+"', fathername='"+fathername+"', fathernamehindi='"+fathername1+"', mothername='"+mothername+"', mothernamehindi='"+mothername1+"', address='"+address+"', addresshindi='"+address1+"', birthplace='"+birthplace+"', birthplacehindi='"+birthplace1+"', birthplaceaddress='"+birthplaceaddress+"', birthplaceaddresshindi='"+birthplaceaddress1+"', wardname='"+wardname+"', wardnamehindi='"+wardname1+"', city='"+city+"', cityhindi='"+city1+"', state='"+state+"', statehindi='"+state1+"', division='"+division+"', divisionhindi='"+division1+"' where registrationnumber = '"+registrationnumber+"'";
 statement.executeUpdate(sql);
}
}

String sql = ("SELECT * FROM birthcertificate2000 where prefix = 'NPP/BIRTH/2014/' and RegistrationNumber = "+registrationnumber+"");
rs = statement.executeQuery(sql);
while(rs.next())
       {

%>     
    
    <form method="post" action="birthedit3.jsp">
    <div align=right>
    <table style=" width: 100%; color: white"> 
        <font color="white">
                <TR valign=top>
                    <TD width=200>
                        <div align=right><font face="Arial">Family Religion</font></div>
                    </TD>
                    
                    <TD width=200>
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
                   
                    <TD width=200>
                        <div align=right><font face="Arial">Father Religion</font></div>
                    </TD>

                    <TD width=200>
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
                    <TD width=200>
                        <div align=right><font face="Arial">Mother Religion</font></div>
                    </TD>
                    
                    <TD width=200>
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

<TD width=200>
<div align=right><font face="Arial">Father Education Status</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <select class="form-control"name="fathereducation" id="fathereducation">
                                     <option selected><%=rs.getString("fathereducationstatus")%></option>
                                     <option>Tenth (SSC)</option>
                                     <option>Twelfth (HSC)</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD width=200>
<div align=right><font face="Arial">Mother Education Status</font></div>

</TD>
<TD width=200>
                        
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
<TD width=200>
<div align=right><font face="Arial">Father Occupation</font></div>

</TD>
<TD width=200>
                        
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
<TD width=200>
<div align=right><font face="Arial">Mother Occupation</font></div>

</TD>
<TD width=200>
                        
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
<TD width=200>
<div align=right><font face="Arial">Total Number Of Children Alive</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="totalchild" type="text" id="totalchild" value="<%=rs.getString("TotalNumberChildAlive")%>">
                            </div>
                        </div>
                    </TD>

<TD width=200>
<div align=right><font face="Arial">Current Age At The Time Of Delivery</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="motherdeliveryage" type="text" id="motherdeliveryage" value="<%=rs.getString("ageatthetimedelivery")%>">
                            </div>
                        
                    </TD>
                    </TR>
                    <TR><TD><BR></TD></TR>
<TR valign=top>
    
<TD width=200>
<div align=right><font face="Arial">Mother Age At The Time Of Marriage</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="mothermarriageage" type="text" id="mothermarriageage" value="<%=rs.getString("ageatthetimemarriage")%>">
                            </div>
                        
                    </TD>

<TD width=200>
<div align=right><font face="Arial">At The Time Of Delivery Nurse Status</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <select class="form-control"name="nursestatus" id="nursestatus">
                                     <option selected><%=rs.getString("timeofdeliverystatusofnurse")%></option>
                                     <option>Trained Nurse</option>
                                     <option>Untrained Nurse</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD width=200>
<div align=right><font face="Arial">Child Weight At The Time Of Birth</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="childweight" type="text" id="childweight" value="<%=rs.getString("weightattimeofbirth")%>">
                            </div>

                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<TD width=200>
<div align=right><font face="Arial">Type Of Delivery</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <select class="form-control"name="deliverytype" id="deliverytype">
                                     <option selected><%=rs.getString("typeofdelivery")%></option>
                                     <option>Normal</option>
                                     <option>Operation</option>
                                     <option>Other</option>
                                </select>
                            </div>

                    </TD>
<TD width=200>
<div align=right><font face="Arial">Time Of Pregnancy</font></div>

</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="pregnancytime" type="text" id="pregnancytime" value="<%=rs.getString("timeofpregnancy")%>">
                            </div>

                    </TD>
<TD width=200>
<div align=right><font face="Arial">Mobile Number</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="mobilenumber" type="text" id="mobilenumber" value="<%=rs.getString("mobilenumber")%>">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>

                    <TD width=200>
<div align=right><font face="Arial">Email Id</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="emailid" type="text" id="emailid" value="<%=rs.getString("emailid")%>">
                            </div>
                    </TD>

<TD width=200>
<div align=right><font face="Arial">Registration Unit</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="registrationunit" type="text" id="registrationunit" value="Registrar (Birth & Death) and Chief Municipal Council Officer  ">
                            </div>
                    </TD>
<TD width=200>
<div align=right><font face="Arial">Registrar</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="registrar" type="text" id="registrar" value="Dr.Madhu Saxena">
                            </div>
                    </TD>
</TR>
<TR><TD><BR></TD></TR>
<TR valign=top>
<TD width=200>
<div align=right><font face="Arial">Informer Name, Address</font></div>
</TD>
<TD width=200>
                        
                            <div align="center"> <textarea class="form-control"name="informerdetail" id="informerdetail" ><%=rs.getString("InformerDetail")%></textarea></div>
                    </TD>
<TD width=200>
<div align=right><font face="Arial">Informed Date</font></div>
</TD>
<TD width=200>
                        
    <div align="center"> <input class="form-control"type="text" name="informeddate" id="informeddate" readonly onClick="GetDate(this);" value="<%=rs.getString("InformedDate")%>" /></div>

                    </TD>
<TD width=200>
<div align=right><font face="Arial">Informer Relation</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="informerrelation" type="text" id="informerrelation"  value="<%=rs.getString("informerrelation")%>">
                            </div>
                    </TD>
</TR>
<TR valign=top>
<TD width=200>
<div align=right><font face="Arial">Create User</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="createuser" type="text" id="createuser">
                            </div>
                    </TD>
<TD width=200>
<div align=right><font face="Arial">Approval</font></div>
</TD>
<TD width=200>
                        
                            <div align="center">
                                 <input class="form-control"size="26" name="approval" type="text" id="approval">
                            </div>
                    </TD>
</TR>
<TR valign=top>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=200>
<div><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div><font face="Arial"><BR></font></div>
</div>
</TD>
<td width=200>
    
        <div align="center">
             <input class="form-control"size="26" type="submit" name="Submit" value="SUBMIT" onClick="return validate()">
        </div>
    </div>
</td>
<TD width=200>
<div align="center"> <input class="form-control"size="26" type="reset" name="reset" value="RESET"></div>
    </div>
</TD>
<TD width=200>
        <div align="center"><font face="Arial"><a href ="birthcertificate1.jsp">Previous</a></font></div>
</div>
</TD>
<TD width=200>
<div><font face="Arial"><BR></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
<TD width=200>
<div align=right><font face="Arial"><BR></font></div>
</div>
</TD>
</TR>
</font>
</table>
</div>
</form>
  <%
rs.close();
}
connection.close();
}
catch(Exception e)
        {
}
%>     
</body>
<script language="javascript">
function validate()
{
    var v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
    
    v1=document.getElementById("familyreligion").value;
    v2=document.getElementById("fatherreligion").value;
    v3=document.getElementById("motherreligion").value;
    v4=document.getElementById("fahtereducation").value;
    v5=document.getElementById("mothereducation").value;
    v6=document.getElementById("fatheroccupation").value;
    v7=document.getElementById("motheroccupation").value;
    v8=document.getElementById("totalchild").value;
    v9=document.getElementById("motherdeliveryage").value;
    v10=document.getElementById("mothermarriageage").value;
    v11=document.getElementById("nursestatus").value;
    v12=document.getElementById("childweight").value;
    v13=document.getElementById("deliverytype").value;
    v14=document.getElementById("pregnancytime").value;
    v15=document.getElementById("mobilenumber").value;
    v16=document.getElementById("emailid").value;
    v17=document.getElementById("registrationunit").value;
    v18=document.getElementById("registrar").value;
    v19=document.getElementById("informerdetail").value;
    v20=document.getElementById("informeddate").value;
    v21=document.getElementById("informerrelation").value;
    v22=document.getElementById("createuser").value;
    v23=document.getElementById("approval").value;
    
   if(v1=="SELECT RELIGION")
        {
            alert("Family Religion cannot be blank");
            return false;
        }
        if(v2=="SELECT RELIGION")
        {
            alert("Father Religion cannot be blank");
            return false;
        }
        if(v3=="SELECT RELIGION")
        {
            alert("Mother Religion cannot be blank");
            return false;
        }
        if(v4=="EDUCATION STATUS")
        {
            alert("Father Education Status cannot be blank");
            return false;
        }
        if(v5=="EDUCATION STATUS")
        {
            alert("Mother Education Status cannot be blank");
            return false;
        }
        if(v6=="SELECT OCCUPATION")
        {
            alert("Father Occupation cannot be blank");
            return false;
        }
        if(v7=="SELECT OCCUPATION")
        {
            alert("Mother Occupation cannot be blank");
            return false;
        }
        if(v8=="")
        {
            alert("Total Number Of Children Alive Cannot Be Blank");
            return false;
        }
        if(v9=="")
        {
            alert("Current Age At The Time Of Delivery Cannot Be Blank");
            return false;
        }
        if(v10=="")
        {
            alert("Mother Age At The Time Of Marriage Cannot Be Blank");
            return false;
        }
        if(v11=="SELECT STATUS")
        {
            alert("Nurse Status cannot be blank");
            return false;
        }
        if(v12=="")
        {
            alert("Child Weight cannot be blank");
            return false;
        }
        if(v13=="SELECT TYPE")
        {
            alert("Type Of Delivery cannot be blank");
            return false;
        }
        if(v14=="")
        {
            alert("Time Of Pregnancy cannot be blank");
            return false;
        }
        if(v18=="")
        {
            alert("Registrar cannot be blank");
            return false;
        }       
        if(v20=="yyyy-mm-dd")
        {
            alert("Informed Date cannot be blank");
            return false;
        }
        if(v21=="")
        {
            alert("Create User cannot be blank");
            return false;
        }
        if(v22=="")
        {
            alert("Approval cannot be blank");
            return false;
        } 
}
</script>

</html>

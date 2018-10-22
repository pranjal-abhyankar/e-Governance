<!DOCTYPE HTML>
   <%@ page language="java" import="java.sql.*" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
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
</head>

<body>
    
<%
try
               {

                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
                   
                   String city=null;
                   String cityhin=null;
                   String marriageprefix=null;
                   String cmo=null;
                   String cmohin=null;
                   
                   String date=null;
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String regno = null;

String info="select city,cityhin,marriageprefix,cmo,cmohin from master";
rs=statement.executeQuery(info);
while(rs.next())
{
    city=rs.getString("city");
    cityhin=rs.getString("cityhin");
    marriageprefix=rs.getString("marriageprefix");
    cmo=rs.getString("cmo");
    cmohin=rs.getString("cmohin");
    
}

{
 String sql = ("SELECT MarriageRegistrationNo FROM marriagecertificate where prefix = '"+marriageprefix+"2014/'");
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
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
});    


</script>
    
<form method="post" action="Marriagecertificate2" name="trans">

    <TABLE  style=" width: 100%; color: black"> 
        <TR valign=top>
            <td>
                <div class="wpmd">
                    <div align=right><font face="Arial">Prefix &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td>
                <div class="wpmd">
                    <div align="center">
                        <input class="form-control"      size="26" name="prefix" value="NPP/MARRIAGE/2014/" type="text" id="prefix"  readonly>
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Registration Number &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="regno" type="text" id="regno" value="<%=c%>">
                    </div>
                </div>
            </TD>
        
   
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Registration Date &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   type="date" name="regdate" id="regdate">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="right"><font face="Arial">Boy's Details &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="right"><font face="Arial">Girl's Details &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bname1" type="text" id="bname1" required="required" onKeyPress="return AllowAlphabet1()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bname" type="text" id="bname">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gname1" type="text" id="gname1" required="required" onKeyPress="return AllowAlphabet2()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gname" type="text" id="gname">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Age &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bage" type="text" required="required" id="bage">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Age &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gage" type="text" required="required" id="gage">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Birth Date &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   type="date" name="bbirthdate" required="required" id="bbirthdate">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Birth Date &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   type="date" name="gbirthdate" required="required" id="gbirthdate">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
        </TR>

        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Father's Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bfather1" type="text" id="bfather1" required="required" onKeyPress="return AllowAlphabet3()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bfather" type="text" id="bfather">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Father's Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gfather1" type="text" id="gfather1" required="required" onKeyPress="return AllowAlphabet4()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gfather" type="text" id="gfather">
                    </div>
                </div>
            </TD>
        </TR>

        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Marriage Status &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"      size="26" name="bmstatus1" type="text" id="bmstatus1" required="required" onKeyPress="return AllowAlphabet18()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"      size="26" name="bmstatus" type="text" id="bmstatus">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Marriage Status &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gmstatus1" type="text" id="gmstatus1" required="required" onKeyPress="return AllowAlphabet19()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gmstatus" type="text" id="gmstatus">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Address &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="baddress1" id="baddress1" required="required" onKeyPress="return AllowAlphabet5()"></textarea></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="baddress" id="baddress" ></textarea></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Address &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="gaddress1" id="gaddress1" required="required" onKeyPress="return AllowAlphabet6()"></textarea></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="gaddress" id="gaddress" ></textarea></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">City &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bcity1" type="text" id="bcity1" required="required" onKeyPress="return AllowAlphabet7()" value="<%=cityhin%>">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bcity" type="text" id="bcity" value="<%=city%>">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">City &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gcity1" type="text" id="gcity1" required="required" onKeyPress="return AllowAlphabet8()" value="<%=cityhin%>">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gcity" type="text" id="gcity" value="<%=city%>">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Post Office Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bpost1" type="text" id="bpost1" required="required" onKeyPress="return AllowAlphabet9()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bpost" type="text" id="bpost">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Post Office Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gpost1" type="text" id="gpost1" onKeyPress="return AllowAlphabet10()">
                    </div>
                </div>
            </TD>
            <td>
                <div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gpost" type="text" id="gpost">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Police Station Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bpolice1" type="text" id="bpolice1" required="required" onKeyPress="return AllowAlphabet11()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="bpolice" type="text" id="bpolice">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Police Station Name &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gpolice1" type="text" id="gpolice1" required="required" onKeyPress="return AllowAlphabet12()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="gpolice" type="text" id="gpolice">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Marriage Date &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="marriagedate" type="text" id="marriagedate"  required="required" readonly />
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Marriage Place &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="marriageplace1" type="text" id="marriageplace1" required="required" onKeyPress="return AllowAlphabet13()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="marriageplace" type="text" id="marriageplace">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Ward No. &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="wardno" type="text" id="wardno">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Marriage Type &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="marriagetype1" type="text" id="marriagetype1" required="required" onKeyPress="return AllowAlphabet14()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="marriagetype" type="text" id="marriagetype">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Mobile No. &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="mobile" type="text" id="mobile">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Email Id &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="email" type="text" id="email">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Registration Unit &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="regunit1" type="text" id="regunit1" onKeyPress="return AllowAlphabet15()">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="regunit" type="text" id="regunit">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Registrar &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="registrar1" type="text" id="registrar1" value="<%=cmohin%>">
                    </div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center">
                        <input class="form-control"   size="26" name="registrar" type="text" id="registrar" value="<%=cmo%>">
                    </div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial">Remarks &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="remarks1" id="remarks1" onKeyPress="return AllowAlphabet17()"></textarea></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align="center"><textarea class="form-control"    name="remarks" id="remarks" ></textarea></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
        <TR valign=top>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            <td>
                <div class="wpmd">
                    <div align="center">
                        <input class="btn btn-outline btn-primary" size="26" type="submit" name="Submit" value="SUBMIT" onClick="return validate()">
                    </div>
                </div>
            </td>
            <td><div class="wpmd">
                    <div align=right><input class="btn btn-outline btn-primary" type="reset" name="reset" value="RESET"></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
            <td><div class="wpmd">
                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                </div>
            </TD>
        </TR>
        
    </TABLE>

</div>
</div>
</div>
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
            var ids = [ "bname1" , "gname1" , "bfather1" , "gfather1" , "baddress1" , "gaddress1" , "bcity1" , "gcity1" , "bpost1" , "gpost1" , "bpolice1" , "gpolice1" , "marriageplace1" , "marriagetype1" , "regunit1" , "registrar1" , "remarks1" ];
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
               if (!trans.bname1.value.match(/^[A-Za-z0-9]+$/) && trans.bname1.value !="")
               {
                    var bname = document.getElementById('bname').value; 
                    var bname1 = document.getElementById('bname1').value;
                    document.getElementById('bname').value = bname+bname1.charAt((bname1.length)-1);  

               }
               else
               {
                   var bname1 = document.getElementById('bname1').value;
                   document.getElementById('bname').value = bname1;
               }
}
function AllowAlphabet2()
{
               if (!trans.gname1.value.match(/^[A-Za-z0-9]+$/) && trans.gname1.value !="")
               {
                    var gname = document.getElementById('gname').value; 
                    var gname1 = document.getElementById('gname1').value;
                    document.getElementById('gname').value = gname+gname1.charAt((gname1.length)-1);  

               }
               else
               {
                   var gname1 = document.getElementById('gname1').value;
                   document.getElementById('gname').value = gname1;
               }
}
function AllowAlphabet3()
{
               if (!trans.bfather1.value.match(/^[A-Za-z0-9]+$/) && trans.bfather1.value !="")
               {
                    var bfather = document.getElementById('bfather').value; 
                    var bfather1 = document.getElementById('bfather1').value;
                    document.getElementById('bfather').value = bfather+bfather1.charAt((bfather1.length)-1);  

               }
               else
               {
                   var bfather1 = document.getElementById('bfather1').value;
                   document.getElementById('bfather').value = bfather1;
               }
}
function AllowAlphabet4()
{
               if (!trans.gfather1.value.match(/^[A-Za-z0-9]+$/) && trans.gfather1.value !="")
               {
                    var gfather = document.getElementById('gfather').value; 
                    var gfather1 = document.getElementById('gfather1').value;
                    document.getElementById('gfather').value = gfather+gfather1.charAt((gfather1.length)-1);  

               }
               else
               {
                   var gfather1 = document.getElementById('gfather1').value;
                   document.getElementById('gfather').value = gfather1;
               }
}
function AllowAlphabet5()
{
               if (!trans.baddress1.value.match(/^[A-Za-z0-9]+$/) && trans.baddress1.value !="")
               {
                    var baddress = document.getElementById('baddress').value; 
                    var baddress1 = document.getElementById('baddress1').value;
                    document.getElementById('baddress').value = baddress+baddress1.charAt((baddress1.length)-1);  

               }
               else
               {
                   var baddress1 = document.getElementById('baddress1').value;
                   document.getElementById('baddress').value = baddress1;
               }
}
function AllowAlphabet6()
{
               if (!trans.gaddress1.value.match(/^[A-Za-z0-9]+$/) && trans.gaddress1.value !="")
               {
                    var gaddress = document.getElementById('gaddress').value; 
                    var gaddress1 = document.getElementById('gaddress1').value;
                    document.getElementById('gaddress').value = gaddress+gaddress1.charAt((gaddress1.length)-1);  

               }
               else
               {
                   var gaddress1 = document.getElementById('gaddress1').value;
                   document.getElementById('gaddress').value = gaddress1;
               }
}
function AllowAlphabet7()
{
               if (!trans.bcity1.value.match(/^[A-Za-z0-9]+$/) && trans.bcity1.value !="")
               {
                    var bcity = document.getElementById('bcity').value; 
                    var bcity1 = document.getElementById('bcity1').value;
                    document.getElementById('bcity').value = bcity+bcity1.charAt((bcity1.length)-1);  

               }
               else
               {
                   var bcity1 = document.getElementById('bcity1').value;
                   document.getElementById('bcity').value = bcity1;
               }
}
function AllowAlphabet8()
{
               if (!trans.gcity1.value.match(/^[A-Za-z0-9]+$/) && trans.gcity1.value !="")
               {
                    var gcity = document.getElementById('gcity').value; 
                    var gcity1 = document.getElementById('gcity1').value;
                    document.getElementById('gcity').value = gcity+gcity1.charAt((gcity1.length)-1);  

               }
               else
               {
                   var gcity1 = document.getElementById('gcity1').value;
                   document.getElementById('gcity').value = gcity1;
               }
}
function AllowAlphabet9()
{
               if (!trans.bpost1.value.match(/^[A-Za-z0-9]+$/) && trans.bpost1.value !="")
               {
                    var bpost = document.getElementById('bpost').value; 
                    var bpost1 = document.getElementById('bpost1').value;
                    document.getElementById('bpost').value = bpost+bpost1.charAt((bpost1.length)-1);  

               }
               else
               {
                   var bpost1 = document.getElementById('bpost1').value;
                   document.getElementById('bpost').value = bpost1;
               }
}
function AllowAlphabet10()
{
               if (!trans.gpost1.value.match(/^[A-Za-z0-9]+$/) && trans.gpost1.value !="")
               {
                    var gpost = document.getElementById('gpost').value; 
                    var gpost1 = document.getElementById('gpost1').value;
                    document.getElementById('gpost').value = gpost+gpost1.charAt((gpost1.length)-1);  

               }
               else
               {
                   var gpost1 = document.getElementById('gpost1').value;
                   document.getElementById('gpost').value = gpost1;
               }
}
function AllowAlphabet11()
{
               if (!trans.bpolice1.value.match(/^[A-Za-z0-9]+$/) && trans.bpolice1.value !="")
               {
                    var bpolice = document.getElementById('bpolice').value; 
                    var bpolice1 = document.getElementById('bpolice1').value;
                    document.getElementById('bpolice').value = bpolice+bpolice1.charAt((bpolice1.length)-1);  

               }
               else
               {
                   var bpolice1 = document.getElementById('bpolice1').value;
                   document.getElementById('bpolice').value = bpolice1;
               }
}
function AllowAlphabet12()
{
               if (!trans.gpolice1.value.match(/^[A-Za-z0-9]+$/) && trans.gpolice1.value !="")
               {
                    var gpolice = document.getElementById('gpolice').value; 
                    var gpolice1 = document.getElementById('gpolice1').value;
                    document.getElementById('gpolice').value = gpolice+gpolice1.charAt((gpolice1.length)-1);  

               }
               else
               {
                   var gpolice1 = document.getElementById('gpolice1').value;
                   document.getElementById('gpolice').value = gpolice1;
               }
}

function AllowAlphabet13()
{
               if (!trans.marriageplace1.value.match(/^[A-Za-z0-9]+$/) && trans.marriageplace1.value !="")
               {
                    var marriageplace = document.getElementById('marriageplace').value; 
                    var marriageplace1 = document.getElementById('marriageplace1').value;
                    document.getElementById('marriageplace').value = marriageplace+marriageplace1.charAt((marriageplace1.length)-1);  

               }
               else
               {
                   var marriageplace1 = document.getElementById('marriageplace1').value;
                   document.getElementById('marriageplace').value = marriageplace1;
               }
}
function AllowAlphabet14()
{
               if (!trans.marriagetype1.value.match(/^[A-Za-z0-9]+$/) && trans.marriagetype1.value !="")
               {
                    var marriagetype = document.getElementById('marriagetype').value; 
                    var marriagetype1 = document.getElementById('marriagetype1').value;
                    document.getElementById('marriagetype').value = marriagetype+marriagetype1.charAt((marriagetype1.length)-1);  

               }
               else
               {
                   var marriagetype1 = document.getElementById('marriagetype1').value;
                   document.getElementById('marriagetype').value = marriagetype1;
               }
}
function AllowAlphabet15()
{
               if (!trans.regunit1.value.match(/^[A-Za-z0-9]+$/) && trans.regunit1.value !="")
               {
                    var regunit = document.getElementById('regunit').value; 
                    var regunit1 = document.getElementById('regunit1').value;
                    document.getElementById('regunit').value = regunit+regunit1.charAt((regunit1.length)-1);  

               }
               else
               {
                   var regunit1 = document.getElementById('regunit1').value;
                   document.getElementById('regunit').value = regunit1;
               }
}
function AllowAlphabet16()
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
function AllowAlphabet17()
{
               if (!trans.remarks1.value.match(/^[A-Za-z0-9]+$/) && trans.remarks1.value !="")
               {
                    var remarks = document.getElementById('remarks').value; 
                    var remarks1 = document.getElementById('remarks1').value;
                    document.getElementById('remarks').value = remarks+remarks1.charAt((remarks1.length)-1);  

               }
               else
               {
                   var remarks1 = document.getElementById('remarks1').value;
                   document.getElementById('remarks').value = remarks1;
               }
}
function AllowAlphabet18()
{
               if (!trans.bmstatus1.value.match(/^[A-Za-z0-9]+$/) && trans.bmstatus1.value !="")
               {
                    var bmstatus = document.getElementById('bmstatus').value; 
                    var bmstatus1 = document.getElementById('bmstatus1').value;
                    document.getElementById('bmstatus').value = bmstatus+bmstatus1.charAt((bmstatus1.length)-1);  

               }
               else
               {
                   var bmstatus1 = document.getElementById('bmstatus1').value;
                   document.getElementById('bmstatus').value = bmstatus1;
               }
}function AllowAlphabet19()
{
               if (!trans.gmstatus1.value.match(/^[A-Za-z0-9]+$/) && trans.gmstatus1.value !="")
               {
                    var gmstatus = document.getElementById('gmstatus').value; 
                    var gmstatus1 = document.getElementById('gmstatus1').value;
                    document.getElementById('gmstatus').value = gmstatus+gmstatus1.charAt((gmstatus1.length)-1);  

               }
               else
               {
                   var gmstatus1 = document.getElementById('gmstatus1').value;
                   document.getElementById('gmstatus').value = gmstatus1;
               }
}

</script>
<script type="text/javascript">document.onload = ctck();</script>

</body>
</html>

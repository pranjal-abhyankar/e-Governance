<%@page contentType="text/html" pageEncoding="UTF-8" language= "java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript">
function notify()
{
  ("Registration Number is " + document.forms["myform"]["regno"].value + " !!")
    if(confirm("Confirm " + document.forms["myform"]["regno"].value))
    document.forms[0].submit();
  else
    return false;   
    window.location = "rationcard1.jsp";
}
</script> 
<body id="test" onload="notify();">


    <%
try
               {
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   request.setCharacterEncoding("UTF-8");
   Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;

Statement statement = connection.createStatement();

               
                   request.setCharacterEncoding("UTF-8");

String witness1= request.getParameter("witness1");
String hwitness1= request.getParameter("hwitness1");
String prefix= request.getParameter("prefix");
String witness2= request.getParameter("witness2");
String hwitness2= request.getParameter("hwitness2");
String mobileno= request.getParameter("mobileno");
String documents= request.getParameter("documents");
String remarks= request.getParameter("remarks");
String hremarks= request.getParameter("hremarks");
String emailid= request.getParameter("emailid");
String zone= request.getParameter("zones");
out.print(zone);
out.print(documents);


    Class.forName("com.mysql.jdbc.Driver");
    

//ResultSet rs = null;

 //onClick="history.go(-1);return true;"
           
//if (registrationdate!=null&&prefix!=null&&registrationnumber!=null&&gender!=null&&birthdate!=null&&childname!=null&&fathername!=null&&mothername!=null&&address!=null&&birthplace!=null&&birthplaceaddress!=null&&wardname!=null&&city!=null&&state!=null&&district!=null&&division!=null)
                   request.setCharacterEncoding("UTF-8");

String registrationno= request.getParameter("regno");
String registrationdate= request.getParameter("registrationdate");
String gender= request.getParameter("gender");
String fmno= request.getParameter("fmno");
String hname= request.getParameter("hname");
String name= request.getParameter("name");
String fathername= request.getParameter("fhname");
String fathername1= request.getParameter("hfhname");
String caste= request.getParameter("caste");
String subcaste= request.getParameter("subcaste");
String wardno= request.getParameter("ward");
String hstreetno= request.getParameter("hstreetno");
String streetno= request.getParameter("streetno");
String houseno= request.getParameter("houseno");
String city= request.getParameter("city");
String hcity= request.getParameter("hcity");
String hcolony= request.getParameter("hcolony");
String colony= request.getParameter("colony");
String hlandmark= request.getParameter("hlandmark");
String landmark= request.getParameter("landmark");
String caddress= request.getParameter("caddress");
String hcaddress= request.getParameter("hcaddress");
String paddress= request.getParameter("paddress");
String hpaddress= request.getParameter("hpaddress");
String liveyear= request.getParameter("liveyear");
String occupation= request.getParameter("occupation");
String designation= request.getParameter("designation");
String salarystatus= request.getParameter("salarystatus");
String salary= request.getParameter("salary");
String hofficeaddress= request.getParameter("hofficeaddress");
String officeaddress= request.getParameter("officeaddress");
String povertyno= request.getParameter("povertyno");
String shopno= request.getParameter("shopno");
String rationcardfor= request.getParameter("rationcardfor");
String oldno= request.getParameter("oldno");
String gasconnection= request.getParameter("gasconnection");
String gasCNo= request.getParameter("gasCNo");
String hgcownername= request.getParameter("hgcownername");
String gcownername= request.getParameter("gcownername");
String male= request.getParameter("male");
String female= request.getParameter("female");
String dor = request.getParameter("registrationdate");
String d = null;
String m = null;
String y = null;
    d = dor.substring(0, dor.indexOf('-'));
    m = dor.substring(dor.indexOf('-'), dor.lastIndexOf('-'));
    y = dor.substring(dor.lastIndexOf('-'));
    registrationdate = (d+m+y);
 String query = "set names 'utf8'";
 statement.execute(query);

// String sql1 = "INSERT INTO rccandform1 (date, regNo, zone, candname, hcandname, fname, hfname, caste, subcaste, gender, wardNo, streetnn, hstreetnn, houseNo, colony, hcolony, landmark, hlandmark, city, hcity, paddress, hpaddress, caddress, hcaddress, liveyear, occupation, designation, salarystatus, salary, fmNo, oaddress, hoaddress, povertylevel, shopNo, rashancardfor, orcNo, gasconnection, gasconsumerNo, gconame, hgconame) VALUES ('"+registrationdate+"', '"+regno+"', '"+zone+"', '"+name+"', '"+hname+"', '"+fathername+"', '"+fathername1+"', '"+caste+"', '"+subcaste+"', '"+gender+"', '"+wardno+"', '"+streetno+"', '"+hstreetno+"', '"+houseno+"', '"+colony+"', '"+hcolony+"', '"+landmark+"', '"+hlandmark+"', '"+city+"', '"+hcity+"', '"+paddress+"', '"+hpaddress+"', '"+caddress+"', '"+hcaddress+"', '"+liveyear+"', '"+occupation+"', '"+designation+"', '"+salarystatus+"' , '"+salary+"' , '"+fmno+"' , '"+officeaddress+"' , '"+hofficeaddress+"' , '"+povertyno+"' , '"+shopno+"' , '"+rationcardfor+"' , '"+oldno+"' , '"+gasconnection+"' , '"+gasCNo+"' , '"+gcownername+"' , '"+hgcownername+"')";
// out.print(sql1);
// statement.executeUpdate(sql1);
 String regzone=null;
            
   String seldhannad = "select max(regNo) from rccandform1 where zone = '"+zone+"'"; 
               out.print(seldhannad);
rs = statement.executeQuery(seldhannad);
while(rs.next()){regzone = rs.getString(1);}
int a = Integer.parseInt(regzone);
int b ;
b= a+1;
           
           {
    int onereg = b;
    String onename = request.getParameter("onename");
    String oneage = request.getParameter("oneage");
    String onegender = request.getParameter("onegender");
    String onerelation = request.getParameter("onerelation");
    
    int reg1 = b;
    String name1 = request.getParameter("name1");
    String age1 = request.getParameter("age1");
    String gender1 = request.getParameter("gender1");
    String relation1 = request.getParameter("relation1");
    
    int reg8 = b;
    String name8 = request.getParameter("name8");
    String age8 = request.getParameter("age8");
    String gender8 = request.getParameter("gender8");
    String relation8 = request.getParameter("relation8");
    
    int reg9 = b;
    String name9 = request.getParameter("name9");
    String age9 = request.getParameter("age9");
    String gender9 = request.getParameter("gender9");
    String relation9 = request.getParameter("relation9");
    
    int reg10 = b;
    String name10 = request.getParameter("name10");
    String age10 = request.getParameter("age10");
    String gender10 = request.getParameter("gender10");
    String relation10 = request.getParameter("relation10");
    
    int reg11 = b;
    String name11 = request.getParameter("name11");
    String age11 = request.getParameter("age11");
    String gender11 = request.getParameter("gender11");
    String relation11 = request.getParameter("relation11");
    
    int reg12 = b;
    String name12 = request.getParameter("name12");
    String age12 = request.getParameter("age12");
    String gender12 = request.getParameter("gender12");
    String relation12 = request.getParameter("relation12");
    
    int reg13 = b;
    String name13 = request.getParameter("name13");
    String age13 = request.getParameter("age13");
    String gender13 = request.getParameter("gender13");
    String relation13 = request.getParameter("relation13");
    
    int reg14 = b;
    String name14 = request.getParameter("name14");
    String age14 = request.getParameter("age14");
    String gender14 = request.getParameter("gender14");
    String relation14 = request.getParameter("relation14");
    
    int reg15 = b;
    String name15 = request.getParameter("name15");
    String age15 = request.getParameter("age15");
    String gender15 = request.getParameter("gender15");
    String relation15 = request.getParameter("relation15");
    
    int reg2 = b;
    String name2 = request.getParameter("name2");
    String age2 = request.getParameter("age2");
    String gender2 = request.getParameter("gender2");
    String relation2 = request.getParameter("relation2");
    
    int reg3 = b;
    String name3 = request.getParameter("name3");
    String age3 = request.getParameter("age3");
    String gender3 = request.getParameter("gender3");
    String relation3 = request.getParameter("relation3");
    
    int reg4 = b;
    String name4 = request.getParameter("name4");
    String age4 = request.getParameter("age4");
    String gender4 = request.getParameter("gender4");
    String relation4 = request.getParameter("relation4");
    
    int reg5 = b;
    String name5 = request.getParameter("name5");
    String age5 = request.getParameter("age5");
    String gender5 = request.getParameter("gender5");
    String relation5 = request.getParameter("relation5");
    
    int reg6 = b;
    String name6 = request.getParameter("name6");
    String age6 = request.getParameter("age6");
    String gender6 = request.getParameter("gender6");
    String relation6 = request.getParameter("relation6");
    
    int reg7 = b;
    String name7 = request.getParameter("name7");
    String age7 = request.getParameter("age7");
    String gender7 = request.getParameter("gender7");
    String relation7 = request.getParameter("relation7");
    
    int registrationnumbers = b;
%>
<form name="myform" id="myform"><input name = "regno" id = "regno" value = "<%=registrationnumbers%>"></form>

<%    
    String sql11 = "INSERT INTO rccandform1 (date, regNo, zone, candname, hcandname, fname, hfname, caste, subcaste, gender, wardNo, streetnn, hstreetnn, houseNo, colony, hcolony, landmark, hlandmark, city, hcity, paddress, hpaddress, caddress, hcaddress, liveyear, occupation, designation, salarystatus, salary, fmNo, oaddress, hoaddress, povertylevel, rashancardfor, orcNo, gasconnection, gasconsumerNo, gconame, hgconame) VALUES ('"+registrationdate+"', '"+registrationnumbers+"', '"+zone+"', '"+name+"', '"+hname+"', '"+fathername+"', '"+fathername1+"', '"+caste+"', '"+subcaste+"', '"+gender+"', '"+wardno+"', '"+streetno+"', '"+hstreetno+"', '"+houseno+"', '"+colony+"', '"+hcolony+"', '"+landmark+"', '"+hlandmark+"', '"+city+"', '"+hcity+"', '"+paddress+"', '"+hpaddress+"', '"+caddress+"', '"+hcaddress+"', '"+liveyear+"', '"+occupation+"', '"+designation+"', '"+salarystatus+"' , '"+salary+"' , '"+fmno+"' , '"+officeaddress+"' , '"+hofficeaddress+"' , '"+povertyno+"' , '"+rationcardfor+"' , '"+oldno+"' , '"+gasconnection+"' , '"+gasCNo+"' , '"+gcownername+"' , '"+hgcownername+"')";
 out.print(sql11);
 statement.executeUpdate(sql11);

     String one = "insert into rccandform2 (zone, regno, name, age, gender, reletion) values ('"+zone+"', '"+onereg+"' , '"+onename+"' , '"+oneage+"' , '"+onegender+"' , '"+onerelation+"') ,  ('"+zone+"', '"+reg1+"' , '"+name1+"' , '"+age1+"' , '"+gender1+"' , '"+relation1+"') ,  ('"+zone+"', '"+reg2+"' , '"+name2+"' , '"+age2+"' , '"+gender2+"' , '"+relation2+"') ,  ('"+zone+"', '"+reg3+"' , '"+name3+"' , '"+age3+"' , '"+gender3+"' , '"+relation3+"') ,  ('"+zone+"', '"+reg4+"' , '"+name4+"' , '"+age4+"' , '"+gender4+"' , '"+relation4+"') ,  ('"+zone+"', '"+reg5+"' , '"+name5+"' , '"+age5+"' , '"+gender5+"' , '"+relation5+"') ,  ('"+zone+"', '"+reg6+"' , '"+name6+"' , '"+age6+"' , '"+gender6+"' , '"+relation6+"') ,  ('"+zone+"', '"+reg7+"' , '"+name7+"' , '"+age7+"' , '"+gender7+"' , '"+relation7+"') ,  ('"+zone+"', '"+reg8+"' , '"+name8+"' , '"+age8+"' , '"+gender8+"' , '"+relation8+"') ,  ('"+zone+"', '"+reg9+"' , '"+name9+"' , '"+age9+"' , '"+gender9+"' , '"+relation9+"') ,  ('"+zone+"', '"+reg10+"' , '"+name10+"' , '"+age10+"' , '"+gender10+"' , '"+relation10+"') ,  ('"+zone+"', '"+reg11+"' , '"+name11+"' , '"+age11+"' , '"+gender11+"' , '"+relation11+"') ,  ('"+zone+"', '"+reg12+"' , '"+name12+"' , '"+age12+"' , '"+gender12+"' , '"+relation12+"') ,  ('"+zone+"', '"+reg13+"' , '"+name13+"' , '"+age13+"' , '"+gender13+"' , '"+relation13+"') ,  ('"+zone+"', '"+reg14+"' , '"+name14+"' , '"+age14+"' , '"+gender14+"' , '"+relation14+"') ,  ('"+zone+"', '"+reg15+"' , '"+name15+"' , '"+age15+"' , '"+gender15+"' , '"+relation15+"')";
    out.print(one);
    statement.executeUpdate(one);
    

   }
//if (registrationdate!=null&&prefix!=null&&registrationnumber!=null&&gender!=null&&birthdate!=null&&childname!=null&&fathername!=null&&mothername!=null&&address!=null&&birthplace!=null&&birthplaceaddress!=null&&wardname!=null&&city!=null&&state!=null&&district!=null&&division!=null)
                   request.setCharacterEncoding("UTF-8");


String one = "delete from rccandform2 where gender = 'null'";
statement.executeUpdate(one);



      
 String sql = "INSERT INTO rcwitnessdetail ( regNo,zone, mobileno, emailid, witness1, hwitness1, witness2, hwitness2, document, remark, hremark) values ('"+b+"' ,'"+zone+"', '"+mobileno+"' , '"+emailid+"' , '"+witness1+"' , '"+hwitness1+"' , '"+witness2+"' , '"+hwitness2+"' , '"+documents+"' , '"+remarks+"' , '"+hremarks+"')";
 out.print(sql);
 statement.executeUpdate(sql);

  //response.sendRedirect("rationcard1.jsp");

//rs.close();
connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>
<script language="javascript">
function notify()
{
  ("Save the Form")
    if(confirm("Confirm Save"))
    document.forms[0].submit();
  else
    return false;   
    window.location = "rationcard1.jsp";
}
</script> 

</body>
</html>

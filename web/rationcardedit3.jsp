<%@page contentType="text/html" pageEncoding="UTF-8" language= "java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script language="JavaScript" src="js/htmlDatePicker.js" type="text/javascript"></script>
<link href="css/htmlDatePicker.css" rel="stylesheet" />

</head>

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
	$("select").multiselect();
});
</script>


</head>
<body id="test">


    <%

try
               {
              
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   

               
request.setCharacterEncoding("UTF-8");
String witness1= request.getParameter("witness1");
String hwitness1= request.getParameter("hwitness1");
String prefix= request.getParameter("prefix");
String witness2= request.getParameter("witness2");
String hwitness2= request.getParameter("hwitness2");
String mobileno= request.getParameter("mobileno");
String documents = request.getParameter("documents");
String remarks= request.getParameter("remarks");
String hremarks= request.getParameter("hremarks");
String emailid= request.getParameter("emailid");
String registrationnumber= session.getAttribute("registrationnumber").toString();

HttpSession page1 = request.getSession();
String fmno = page1.getAttribute("fmno").toString();
String hname = page1.getAttribute("hname").toString();
String registrationdate= page1.getAttribute("registrationdate").toString();
String gender= page1.getAttribute("gender").toString();
String name= page1.getAttribute("name").toString();
String fathername= page1.getAttribute("fathername").toString();
String fathername1= page1.getAttribute("fathername1").toString();
String caste= page1.getAttribute("caste").toString();
String subcaste= page1.getAttribute("subcaste").toString();
String wardno= page1.getAttribute("wardno").toString();
String hstreetno= page1.getAttribute("hstreetno").toString();
String streetno= page1.getAttribute("streetno").toString();
String houseno= page1.getAttribute("houseno").toString();
String city= page1.getAttribute("city").toString();
String hcity= page1.getAttribute("hcity").toString();
String hcolony= page1.getAttribute("hcolony").toString();
String colony= page1.getAttribute("colony").toString();
String hlandmark= page1.getAttribute("hlandmark").toString();
String landmark= page1.getAttribute("landmark").toString();
String caddress= page1.getAttribute("caddress").toString();
String hcaddress= page1.getAttribute("hcaddress").toString();
String paddress= page1.getAttribute("paddress").toString();
String hpaddress= page1.getAttribute("hpaddress").toString();
String liveyear= page1.getAttribute("liveyear").toString();
String occupation= page1.getAttribute("occupation").toString();
String designation= page1.getAttribute("designation").toString();
String salarystatus= page1.getAttribute("salarystatus").toString();
String salary= page1.getAttribute("salary").toString();
String hofficeaddress= page1.getAttribute("hofficeaddress").toString();
String officeaddress= page1.getAttribute("officeaddress").toString();
String povertyno= page1.getAttribute("povertyno").toString();
String rationcardfor= page1.getAttribute("rationcardfor").toString();
String oldno= page1.getAttribute("oldno").toString();
String gasconnection= page1.getAttribute("gasconnection").toString();
String gasCNo= page1.getAttribute("gasCNo").toString();
String hgcownername= page1.getAttribute("hgcownername").toString();
String gcownername= page1.getAttribute("gcownername").toString();
String zone= page1.getAttribute("zone").toString();
    Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;

Statement statement = connection.createStatement();
 String regzone=null;
           
           
    String onereg = registrationnumber;
    String onename = request.getParameter("onename");
    String oneage = request.getParameter("oneage");
    String onegender = request.getParameter("onegender");
    String onerelation = request.getParameter("onerelation");
    
    String reg1 = registrationnumber;
    String name1 = request.getParameter("name1");
    String age1 = request.getParameter("age1");
    String gender1 = request.getParameter("gender1");
    String relation1 = request.getParameter("relation1");
    
    String reg8 = registrationnumber;
    String name8 = request.getParameter("name8");
    String age8 = request.getParameter("age8");
    String gender8 = request.getParameter("gender8");
    String relation8 = request.getParameter("relation8");
    
    String reg9 = registrationnumber;
    String name9 = request.getParameter("name9");
    String age9 = request.getParameter("age9");
    String gender9 = request.getParameter("gender9");
    String relation9 = request.getParameter("relation9");
    
    String reg10 = registrationnumber;
    String name10 = request.getParameter("name10");
    String age10 = request.getParameter("age10");
    String gender10 = request.getParameter("gender10");
    String relation10 = request.getParameter("relation10");
    
    String reg11 = registrationnumber;
    String name11 = request.getParameter("name11");
    String age11 = request.getParameter("age11");
    String gender11 = request.getParameter("gender11");
    String relation11 = request.getParameter("relation11");
    
    String reg12 = registrationnumber;
    String name12 = request.getParameter("name12");
    String age12 = request.getParameter("age12");
    String gender12 = request.getParameter("gender12");
    String relation12 = request.getParameter("relation12");
    
    String reg13 = registrationnumber;
    String name13 = request.getParameter("name13");
    String age13 = request.getParameter("age13");
    String gender13 = request.getParameter("gender13");
    String relation13 = request.getParameter("relation13");
    
    String reg14 = registrationnumber;
    String name14 = request.getParameter("name14");
    String age14 = request.getParameter("age14");
    String gender14 = request.getParameter("gender14");
    String relation14 = request.getParameter("relation14");
    
    String reg15 = registrationnumber;
    String name15 = request.getParameter("name15");
    String age15 = request.getParameter("age15");
    String gender15 = request.getParameter("gender15");
    String relation15 = request.getParameter("relation15");
    
    String reg2 = registrationnumber;
    String name2 = request.getParameter("name2");
    String age2 = request.getParameter("age2");
    String gender2 = request.getParameter("gender2");
    String relation2 = request.getParameter("relation2");
    
    String reg3 = registrationnumber;
    String name3 = request.getParameter("name3");
    String age3 = request.getParameter("age3");
    String gender3 = request.getParameter("gender3");
    String relation3 = request.getParameter("relation3");
    
    String reg4 = registrationnumber;
    String name4 = request.getParameter("name4");
    String age4 = request.getParameter("age4");
    String gender4 = request.getParameter("gender4");
    String relation4 = request.getParameter("relation4");
    
    String reg5 = registrationnumber;
    String name5 = request.getParameter("name5");
    String age5 = request.getParameter("age5");
    String gender5 = request.getParameter("gender5");
    String relation5 = request.getParameter("relation5");
    
    String reg6 = registrationnumber;
    String name6 = request.getParameter("name6");
    String age6 = request.getParameter("age6");
    String gender6 = request.getParameter("gender6");
    String relation6 = request.getParameter("relation6");
    
    String reg7 = registrationnumber;
    String name7 = request.getParameter("name7");
    String age7 = request.getParameter("age7");
    String gender7 = request.getParameter("gender7");
    String relation7 = request.getParameter("relation7");
    out.print(name1);
    out.print(name2);
    out.print(onename);
    String registrationnumbers = registrationnumber;
%>
<form name="myform" id="myform"><input name = "regno" id = "regno" value = "<%=registrationnumbers%>"></form>

<%    
String delone = "delete from rccandform2 where regno = '"+registrationnumbers+"' and zone = '"+zone+"'";
statement.executeUpdate(delone);
  String one = "insert into rccandform2 (zone, regno, name, age, gender, reletion) values ('"+zone+"', '"+onereg+"' , '"+onename+"' , '"+oneage+"' , '"+onegender+"' , '"+onerelation+"') ,  ('"+zone+"', '"+reg1+"' , '"+name1+"' , '"+age1+"' , '"+gender1+"' , '"+relation1+"') ,  ('"+zone+"', '"+reg2+"' , '"+name2+"' , '"+age2+"' , '"+gender2+"' , '"+relation2+"') ,  ('"+zone+"', '"+reg3+"' , '"+name3+"' , '"+age3+"' , '"+gender3+"' , '"+relation3+"') ,  ('"+zone+"', '"+reg4+"' , '"+name4+"' , '"+age4+"' , '"+gender4+"' , '"+relation4+"') ,  ('"+zone+"', '"+reg5+"' , '"+name5+"' , '"+age5+"' , '"+gender5+"' , '"+relation5+"') ,  ('"+zone+"', '"+reg6+"' , '"+name6+"' , '"+age6+"' , '"+gender6+"' , '"+relation6+"') ,  ('"+zone+"', '"+reg7+"' , '"+name7+"' , '"+age7+"' , '"+gender7+"' , '"+relation7+"') ,  ('"+zone+"', '"+reg8+"' , '"+name8+"' , '"+age8+"' , '"+gender8+"' , '"+relation8+"') ,  ('"+zone+"', '"+reg9+"' , '"+name9+"' , '"+age9+"' , '"+gender9+"' , '"+relation9+"') ,  ('"+zone+"', '"+reg10+"' , '"+name10+"' , '"+age10+"' , '"+gender10+"' , '"+relation10+"') ,  ('"+zone+"', '"+reg11+"' , '"+name11+"' , '"+age11+"' , '"+gender11+"' , '"+relation11+"') ,  ('"+zone+"', '"+reg12+"' , '"+name12+"' , '"+age12+"' , '"+gender12+"' , '"+relation12+"') ,  ('"+zone+"', '"+reg13+"' , '"+name13+"' , '"+age13+"' , '"+gender13+"' , '"+relation13+"') ,  ('"+zone+"', '"+reg14+"' , '"+name14+"' , '"+age14+"' , '"+gender14+"' , '"+relation14+"') ,  ('"+zone+"', '"+reg15+"' , '"+name15+"' , '"+age15+"' , '"+gender15+"' , '"+relation15+"')";
    out.print(one);
    statement.executeUpdate(one);
 String delsql11 = "delete from rccandform1 where regno = '"+registrationnumbers+"' and zone = '"+zone+"'";
statement.executeUpdate(delsql11);
   
    String sql11 = "INSERT INTO rccandform1 (date, regNo, zone, candname, hcandname, fname, hfname, caste, subcaste, gender, wardNo, streetnn, hstreetnn, houseNo, colony, hcolony, landmark, hlandmark, city, hcity, paddress, hpaddress, caddress, hcaddress, liveyear, occupation, designation, salarystatus, salary, fmNo, oaddress, hoaddress, povertylevel, rashancardfor, orcNo, gasconnection, gasconsumerNo, gconame, hgconame) VALUES ('"+registrationdate+"', '"+registrationnumbers+"', '"+zone+"', '"+name+"', '"+hname+"', '"+fathername+"', '"+fathername1+"', '"+caste+"', '"+subcaste+"', '"+gender+"', '"+wardno+"', '"+streetno+"', '"+hstreetno+"', '"+houseno+"', '"+colony+"', '"+hcolony+"', '"+landmark+"', '"+hlandmark+"', '"+city+"', '"+hcity+"', '"+paddress+"', '"+hpaddress+"', '"+caddress+"', '"+hcaddress+"', '"+liveyear+"', '"+occupation+"', '"+designation+"', '"+salarystatus+"' , '"+salary+"' , '"+fmno+"' , '"+officeaddress+"' , '"+hofficeaddress+"' , '"+povertyno+"' , '"+rationcardfor+"' , '"+oldno+"' , '"+gasconnection+"' , '"+gasCNo+"' , '"+gcownername+"' , '"+hgcownername+"')";
 out.print(sql11);
 statement.executeUpdate(sql11);

   
//if (registrationdate!=null&&prefix!=null&&registrationnumber!=null&&gender!=null&&birthdate!=null&&childname!=null&&fathername!=null&&mothername!=null&&address!=null&&birthplace!=null&&birthplaceaddress!=null&&wardname!=null&&city!=null&&state!=null&&district!=null&&division!=null)
                   request.setCharacterEncoding("UTF-8");


String delone1 = "delete from rccandform2 where age= 'null' or age = ''";
statement.executeUpdate(delone1);

 String query = "set names 'utf8'";
 statement.execute(query);

String delsql= "delete from rcwitnessdetail where regno = '"+registrationnumbers+"' and zone = '"+zone+"'";
statement.executeUpdate(delsql);

      
 String sql = "INSERT INTO rcwitnessdetail ( regNo,zone, mobileno, emailid, witness1, hwitness1, witness2, hwitness2, document, remark, hremark) values ('"+registrationnumber+"' ,'"+zone+"', '"+mobileno+"' , '"+emailid+"' , '"+witness1+"' , '"+hwitness1+"' , '"+witness2+"' , '"+hwitness2+"' , '"+documents+"' , '"+remarks+"' , '"+hremarks+"')";
 out.print(sql);
 statement.executeUpdate(sql);

 response.sendRedirect("rationedithome.jsp");


rs.close();
connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8" language= "java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
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
<script type="text/javascript" src="http://www.google.com/jsapi">
  </script> 
 
 <script type="text/javascript">
          // Load the Google Transliteration API
          google.load("elements", "1", {
                packages: "transliteration"
              });
          function onLoad() {
            var options = {
              sourceLanguage: google.elements.transliteration.LanguageCode.ENGLISH,
              destinationLanguage: [google.elements.transliteration.LanguageCode.HINDI],
              shortcutKey: 'ctrl+g',
              transliterationEnabled: true
              
              
            };
            // Create an instance on TransliterationControl with the required
            // options.
            var control = new google.elements.transliteration.TransliterationControl(options);
            // Enable transliteration in the textfields with the given ids.
            var ids = ["hwitness1" , "hwitness2", "hremark" , "name1" , "name2" , "name3" , "name4" , "name5" , "name6" , "name7" , "name8" , "name9" , "name10" , "name11" , "name12" , "name13" , "name14" , "name15"];
            control.makeTransliteratable(ids);
            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
          }
          google.setOnLoadCallback(onLoad);
        </script>

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
<body id="test" onload="prettyPrint();">
    <form action="RationCardEdit3" method="post" name="trans">

    
<table style="color: black">
<%
               request.setCharacterEncoding("UTF-8");

String regno= request.getParameter("regno");
String zone= request.getParameter("zone");
	session.setAttribute("regno", regno);

%>
<tr>
<th> Registration No </th>
<th> Name </th>
<th> Age </th>
<th> Relation </th>
<th> Gender </th>
</tr>
<%
String fmno= request.getParameter("fmno");

String hname= request.getParameter("hname");
	session.setAttribute("fmno", fmno);
	session.setAttribute("hname", hname);
int r = 0;
  if(fmno!=null){
  r = Integer.parseInt(fmno);}
    session.setAttribute("fmno",r);
    
    try
               {
                   
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();

    Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;

Statement statement = connection.createStatement();

String page2 = "select * from rccandform2 where regNo = '"+regno+"' and zone = '"+zone+"' and reletion = 'स्वयं'";
rs = statement.executeQuery(page2);
while(rs.next())
       {
    
 %>
 
<tr>
    <th><input class="form-control"type="text" name="onereg" id="onereg" value="<%=regno%>"></th>
    <th> <input class="form-control"type="text" name="onename" id="onename" value="<%=hname%>"> </th>
    <th> <input class="form-control"type="text" name="oneage" id="oneage" value="<%=rs.getString("age")%>"> </th>
<th> <select class="form-control"name="onegender" id="onegender"><option><%=rs.getString("gender")%></option><option>पुरुष</option> <option>महिला</option> </select></th>
<th> <input class="form-control"type="text" name="onerelation" id="onerelation" value="स्वयं" readonly=""> </th>
</tr>
 
 
 <% } // for(int i =1 ; i<r; i++)
     String page2rest = "select * from rccandform2 where regNo = '"+regno+"' and reletion != 'स्वयं'";
     rs = statement.executeQuery(page2rest);
     int i = 1 ;
     while(rs.next())
    {
  %>
<tr>
    <th><input class="form-control"type="text" name="reg<%=i%>" id="one<%=i%>" value="<%=regno%>"></th>
    <th> <input class="form-control"type="text" name="name<%=i%>" id="name<%=i%>" value="<%=rs.getString("name")%>"> </th>
    <th> <input class="form-control"type="text" name="age<%=i%>" id="age<%=i%>" value="<%=rs.getString("age")%>"> </th>
<th> <select class="form-control"name="gender<%=i%>" id="gender<%=i%>"><option><%=rs.getString("gender")%></option><option>पुरुष</option> <option>महिला</option> </select></th>

<th><select class="form-control"name="relation<%=i%>" id="relation<%=i%>">
       <option><%=rs.getString("reletion")%></option> 
<option>पत्नी</option> 
<option>पिता</option> 
<option>माता</option> 
<option>पुत्र</option> 
<option>पुत्री</option> 
<option>भाई</option> 
<option>बहन</option> 
<option>चाचा</option> 
<option>चाची</option> 
<option>बहु</option> 
<option>भांजा</option> 
<option>भांजी</option> 
<option>भतीजा</option> 
<option>भतीजी</option> 
<option>पोता</option> 
<option>पोती</option> 
<option>भाभी</option> 
<option>दादा</option> 
<option>दादी</option> 
<option>पति</option> 
<option>फुफा</option> 
<option>फुफी</option> 
<option>ससुर</option> 
<option>सास</option> 
<option>जीजा</option> 
<option>साला</option> 
<option>दामाद</option> 
<option>नाती</option> 
<option>नातिन</option> 
<option>मामा</option> 
<option>मामी</option> 
<option>नाना</option> 
<option>नानी</option> 
<option>साली</option> 
<option>पडोसी</option> 
<option>चेला</option> 
<option>परपोती</option> 
<option>देवर </option> 
<option>देवरानी</option> 
<!-- 
        <%
                  
        
  //  String sql = "select * from relation";
  //  rs = statement.executeQuery(sql);
  //  while(rs.next()){
    %>
<option><%//=rs.getString(3)%></option>
<%// }
%></select>
</th>-->
<%  %>
</tr>

<%
i++;
}
     int count = 0;
     String countrows = "select count(regNo) from rccandform2 where regNo = '"+regno+"' and zone = '"+zone+"'";
     rs = statement.executeQuery(countrows);
     while(rs.next()){count = rs.getInt(1);}
     if(r>count){
     for(int j=i;j<r;j++)
     {
     %>


<tr>
    <th><input class="form-control"type="text" name="reg<%=j%>" id="one<%=j%>" value="<%=regno%>"></th>
    <th> <input class="form-control"type="text" name="name<%=j%>" id="name<%=j%>" > </th>
    <th> <input class="form-control"type="text" name="age<%=j%>" id="age<%=j%>" > </th>
<th> <select class="form-control"name="gender<%=j%>" id="gender<%=j%>"><option>पुरुष</option> <option>महिला</option> </select></th>

<th><select class="form-control"name="relation<%=j%>" id="relation<%=j%>">
<option>पत्नी</option> 
<option>पिता</option> 
<option>माता</option> 
<option>पुत्र</option> 
<option>पुत्री</option> 
<option>भाई</option> 
<option>बहन</option> 
<option>चाचा</option> 
<option>चाची</option> 
<option>बहु</option> 
<option>भांजा</option> 
<option>भांजी</option> 
<option>भतीजा</option> 
<option>भतीजी</option> 
<option>पोता</option> 
<option>पोती</option> 
<option>भाभी</option> 
<option>दादा</option> 
<option>दादी</option> 
<option>पति</option> 
<option>फुफा</option> 
<option>फुफी</option> 
<option>ससुर</option> 
<option>सास</option> 
<option>जीजा</option> 
<option>साला</option> 
<option>दामाद</option> 
<option>नाती</option> 
<option>नातिन</option> 
<option>मामा</option> 
<option>मामी</option> 
<option>नाना</option> 
<option>नानी</option> 
<option>साली</option> 
<option>पडोसी</option> 
<option>चेला</option> 
<option>परपोती</option> 
<option>देवर </option> 
<option>देवरानी</option> 
<!-- 
        <%
                  
        
  //  String sql = "select * from relation";
  //  rs = statement.executeQuery(sql);
  //  while(rs.next()){
    %>
<option><%//=rs.getString(3)%></option>
<%// }
%></select>
</th>-->
<%  %>
</tr>




<%
     
     }
     
     }
     String pagewitness = "select * from rcwitnessdetail where regNo = '"+regno+"' and zone = '"+zone+"'";
     rs = statement.executeQuery(pagewitness);
     while(rs.next())
                 {
%>

<tr>
<th height="50px">Email id</th>
<th><input class="form-control"type="text" name ="emailid" id="emailid"/></th>
<th height="50px">Mobile No</th>
<th><input class="form-control"type="text" name ="mobileno" id="mobileno" value="<%=rs.getString("mobileNo")%>"/></th>
</tr>
<tr>
<th>गवाह १ और  पता</th>
<th><textarea name ="hwitness1" id="hwitness1" onkeypress="return AllowAlphabet1()"><%=rs.getString("hwitness1")%></textarea></th>
<th>Witness 1 And Address</th>
<th><textarea name ="witness1" id="witness1"><%=rs.getString("witness1")%></textarea></th>
</tr>
<tr>
<th>गवाह २ और  पता</th>
<th><textarea name ="hwitness2" id="hwitness2" onkeypress="return AllowAlphabet3()"><%=rs.getString("hwitness2")%></textarea></th>
<th>Witness 2 And Address</th>
<th><textarea name ="witness2" id="witness2"><%=rs.getString("witness2")%></textarea></th>
</tr>
<tr>
<th>टिप्पणी</th>
<th><textarea name ="hremark"id="hremark" onkeypress="return AllowAlphabet2()"><%=rs.getString("hremark")%></textarea></th>
<th>Remark</th>
<th><textarea name  ="remark" id="remark"><%=rs.getString("remark")%></textarea></th>
</tr>
<tr>
<th>Document</th>
<th colspan ="3">
<table>
<tr>
<td>
    
</td>
<td>
<p>
    <selects multiple="multiple" name="documents" id="documents" size="5">
        <option selected=""><%=rs.getString("document")%></option>
	<option >Affidavit</option>
        <option >Old Rashan Card</option>
	<option >Pan Card</option>
	<option >Driving License</option>
	<option >Bank Passbook</option>
	<option >UID</option>
	<option >Lok Seva Rashid</option>
	<option >Voter Card</option>
	<option >Gas Connection Card</option>
	<option >ESI Card</option>
	<option >Property Tax Receipt</option>
	</selects>
</p>
<% } %>
</td>
</tr>
</table>

</th>
</tr>

<tr><th colspan ="4"><input class="btn btn-outline btn-primary" type="submit" value ="Submit"/></th></tr>
</table>
</form>
<FORM><INPUT class="btn btn-outline btn-primary" Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>
    <%

               
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
out.print(documents);

session.setAttribute("registrationnumber", regno);
session.setAttribute("prefix", prefix);

    Class.forName("com.mysql.jdbc.Driver");
    

//ResultSet rs = null;


           
//if (registrationdate!=null&&prefix!=null&&registrationnumber!=null&&gender!=null&&birthdate!=null&&childname!=null&&fathername!=null&&mothername!=null&&address!=null&&birthplace!=null&&birthplaceaddress!=null&&wardname!=null&&city!=null&&state!=null&&district!=null&&division!=null)
                   request.setCharacterEncoding("UTF-8");

String registrationdate= request.getParameter("registrationdate");
String gender= request.getParameter("gender");
fmno= request.getParameter("fmno");
hname= request.getParameter("hname");
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

session.setAttribute("registrationnumber", regno);
session.setAttribute("prefix", prefix);

HttpSession page1 = request.getSession();
page1.setAttribute("name", name);
page1.setAttribute("hname", hname);
page1.setAttribute("fmno", fmno);
page1.setAttribute("fathername", fathername);
page1.setAttribute("fathername1", fathername1);
page1.setAttribute("caste", caste);
page1.setAttribute("subcaste", subcaste);
page1.setAttribute("wardno", wardno);
page1.setAttribute("hstreetno", hstreetno);
page1.setAttribute("streetno", streetno);
page1.setAttribute("houseno", houseno);
page1.setAttribute("city", city);
page1.setAttribute("hcity", hcity);
page1.setAttribute("hcolony", hcolony);
page1.setAttribute("colony", colony);
page1.setAttribute("hlandmark", hlandmark);
page1.setAttribute("landmark", landmark);
page1.setAttribute("caddress", caddress);
page1.setAttribute("hcaddress", hcaddress);
page1.setAttribute("hpaddress", hpaddress);
page1.setAttribute("paddress", paddress);
page1.setAttribute("liveyear", liveyear);
page1.setAttribute("occupation", occupation);
page1.setAttribute("designation", designation);
page1.setAttribute("salarystatus", salarystatus);
page1.setAttribute("salary", salary);
page1.setAttribute("hofficeaddress", hofficeaddress);
page1.setAttribute("officeaddress", officeaddress);
page1.setAttribute("povertyno", povertyno);
page1.setAttribute("shopno", shopno);
page1.setAttribute("rationcardfor", rationcardfor);
page1.setAttribute("oldno", oldno);
page1.setAttribute("gasconnection", gasconnection);
page1.setAttribute("gasCNo", gasCNo);
page1.setAttribute("hgcownername", hgcownername);
page1.setAttribute("gcownername", gcownername);
page1.setAttribute("registrationdate", registrationdate);
page1.setAttribute("zone", zone);
page1.setAttribute("gender", gender);


//rs.close();
connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>

<script language="javascript">
function AllowAlphabet1()
{
                if (!trans.hwitness1.value.match(/^[A-Za-z0-9]+$/) && trans.hwitness1.value !="")
               {
                    var witness1 = document.getElementById('witness1').value; 
                    var hwitness1 = document.getElementById('hwitness1').value;
                    document.getElementById('witness1').value = witness1+hwitness1.charAt((hwitness1.length)-1);  

               }
               else
               {
                   var hwitness1 = document.getElementById('hwitness1').value;
                   document.getElementById('witness1').value = hwitness1;
               }
}      
function AllowAlphabet2()
{
                if (!trans.hremark.value.match(/^[A-Za-z0-9]+$/) && trans.hremark.value !="")
               {
                    var remark = document.getElementById('remark').value; 
                    var hremark = document.getElementById('hremark').value;
                    document.getElementById('remark').value = remark+hremark.charAt((hremark.length)-1);  

               }
               else
               {
                   var hremark = document.getElementById('hremark').value;
                   document.getElementById('remark').value = hremark;
               }
}      
function AllowAlphabet3()
{
                if (!trans.hwitness2.value.match(/^[A-Za-z0-9]+$/) && trans.hwitness2.value !="")
               {
                    var witness2 = document.getElementById('witness2').value; 
                    var hwitness2 = document.getElementById('hwitness2').value;
                    document.getElementById('witness2').value = witness2+hwitness2.charAt((hwitness2.length)-1);  

               }
               else
               {
                   var hwitness2 = document.getElementById('hwitness2').value;
                   document.getElementById('witness2').value = hwitness2;
               }
}      

    
</script>

</body>
</html>
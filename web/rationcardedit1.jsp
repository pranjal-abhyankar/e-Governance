<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" language= "java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

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
<script>
window.onload = function() 
{
	 	 var city = document.getElementById("city");
	 city.readOnly = "readonly";//readOnly is cese-sensitive
	 var hcity = document.getElementById("hcity");
	 hcity.readOnly = "readonly";//readOnly is cese-sensitive
     var regNo = document.getElementById("regNo");
     regNo.readOnly = "readonly";//readOnly is cese-sensitive

}
function checkBox()
{
if ( document.getElementById('cadd').checked == true )
{
	document.getElementById('caddress').value =document.getElementById('streetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('colony').value+' '+document.getElementById('landmark').value+' '+document.getElementById('city').value;
	document.getElementById('hcaddress').value =document.getElementById('streetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('hcolony').value+' '+document.getElementById('hlandmark').value+' '+document.getElementById('hcity').value;
}
else if (document.getElementById('cadd').checked == false)
{
	document.getElementById('caddress').value = '';
	document.getElementById('hcaddress').value = '';
}  
if (document.getElementById('padd').checked == true )
{
	document.getElementById('paddress').value =document.getElementById('streetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('colony').value+' '+document.getElementById('landmark').value+' '+document.getElementById('city').value;
	document.getElementById('hpaddress').value =document.getElementById('streetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('hcolony').value+' '+document.getElementById('hlandmark').value+' '+document.getElementById('hcity').value;	
}
else if (document.getElementById('padd').checked == false)
{
	document.getElementById('paddress').value = '';
	document.getElementById('hpaddress').value = '';
}

}
</script>
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
            var ids = [ "hname" , "hfhname", "hstreetno","hlandmark","hofficeaddress","hgcownername" , "hcolony" , "occupation"];
            control.makeTransliteratable(ids);
            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
          }
          google.setOnLoadCallback(onLoad);
        </script>
    <script type="text/javascript">

    function candname() 
    { 
       if (!document.getElementById('hname').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hname').value !="")
        {
             var name = document.getElementById('name').value; 
             var hname = document.getElementById('hname').value;
             document.getElementById('name').value = name+hname.charAt((hname.length)-1);  

        }
        else
        {
            var hname = document.getElementById('hname').value;
            document.getElementById('name').value = hname;
        }
   	
    } 
     function fname() 
     { 
        if (!document.getElementById('hfhname').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hfhname').value !="")
         {
              var fhname = document.getElementById('fhname').value; 
              var hfhname = document.getElementById('hfhname').value;
              document.getElementById('fhname').value = fhname+hfhname.charAt((hfhname.length)-1);  

         }
         else
         {
             var hfhname = document.getElementById('hfhname').value;
             document.getElementById('fhname').value = hfhname;
         }
    	
     } 
     function streetNN() 
     { 
        if (!document.getElementById('hstreetno').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hstreetno').value !="")
         {
              var streetNo = document.getElementById('streetno').value; 
              var hstreetNo = document.getElementById('hstreetno').value;
              document.getElementById('streetno').value = streetNo+hstreetNo.charAt((hstreetNo.length)-1);  

         }
         else
         {
        	 var hstreetNo = document.getElementById('hstreetno').value;
             document.getElementById('streetno').value = hstreetNo;
         }
    	
     } 
     function landMark() 
     { 
        if (!document.getElementById('hlandmark').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hlandmark').value !="")
         {
              var landmark = document.getElementById('landmark').value; 
              var hlandmark = document.getElementById('hlandmark').value;
              document.getElementById('landmark').value = landmark+hlandmark.charAt((hlandmark.length)-1);  

         }
         else
         {
        	 var hlandmark = document.getElementById('hlandmark').value;
             document.getElementById('landmark').value = hlandmark;
         }
    	
     }
     function officeAddress() 
     { 
        if (!document.getElementById('hofficeaddress').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hofficeaddress').value !="")
         {
              var officeaddress = document.getElementById('officeaddress').value; 
              var hofficeaddress = document.getElementById('hofficeaddress').value;
              document.getElementById('officeaddress').value = officeaddress+hofficeaddress.charAt((hofficeaddress.length)-1);  

         }
         else
         {
        	 var hofficeaddress = document.getElementById('hofficeaddress').value;
             document.getElementById('officeaddress').value = hofficeaddress;
         }
    	
     } 
     function gcOwnername() 
     { 
        if (!document.getElementById('hgcownername').value.match(/^[A-Za-z0-9]+$/) && document.getElementById('hgcownername').value !="")
         {
              var gcownername = document.getElementById('gcownername').value; 
              var hgcownername = document.getElementById('hgcownername').value;
              document.getElementById('gcownername').value = gcownername+hgcownername.charAt((hgcownername.length)-1);  

         }
         else
         {
        	 var hgcownername = document.getElementById('hgcownername').value;
             document.getElementById('gcownername').value = hgcownername;
         }
    	
     } 
  </script>

  <!--  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> -->

<script>
    $(function() {
      $( "#date" ).datepicker({ minDate: -100, maxDate: "+0D" });
      $("#date").datepicker("setDate",new Date());
      $( "#date" ).datepicker( "option", "dateFormat", "dd/mm/yy");
    });
</script>
  
     <script>
function myFunction()
{
var x=document.getElementById("hname");
document.getElementById("name").value = x.value;
}
</script>
     
</head>
<body >
    <%
               request.setCharacterEncoding("UTF-8");

               String zone= request.getParameter("zone");
               String regno= request.getParameter("regno");

%>

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
String page1 = "select * from rccandform1 where zone = '"+zone+"' and regNo = '"+regno+"'";
rs = statement.executeQuery(page1);
while(rs.next()){

%>

<form action="rationcardedit2.jsp" method="post" target="mainframe">
<table border ="0" style="color: black">
<tr>
<td align="center">Registration Date</td>
<td align="center" width="180px"><input class="form-control" type ="date" id ="registrationdate" name ="registrationdate" value ="<%=rs.getString("date")%>"></td>
<td align="center">Zone</td>
<td align="center" width="180px">
    <input class="form-control" name="zone" id="zone" value="<%=zone%>"></td>
<td align="center" >Registration No.</td>

<td align="center" width="180px"><input class="form-control" type ="text" id ="regno" name ="regno" value="<%=rs.getString("regNo")%>" readonly/></td>
<td align="center" >Ration card for </td>
<td align="center" width="180px">
    <select class="form-control" name="rationcardfor" id="rationcardfor" style="width:155px">
<option value ="<%=rs.getString("rashancardfor")%>"><%=rs.getString("rashancardfor")%></option>
<option value="bpl">APL</option>
<option value="apl">BPL</option>
</select>
</td>
</tr>
<tr>
<td align="center" >नाम</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="hname" name="hname"  onkeypress="javascript: candname();" value="<%=rs.getString("hcandname")%>"/></td>
<td align="center" >Name</td>
<td align="center" width="180px"><input class="form-control" type ="text" name="name" id ="name" value="<%=rs.getString("candname")%>"/></td>
<td align="center">Gender</td>
<td align="center" width="180px">
    <select class="form-control" name ="gender" id="gender" style="width:155px">
<option value ="<%=rs.getString("gender")%>"><%=rs.getString("gender")%></option>
<option value="male">Male</option>
<option value="female">Female</option>
</select>
</td>
</tr>
<tr>
<td align="center" >पति / पिता  का  नाम</td>
<td align="center" width="180px"><input class="form-control" type ="text" name="hfhname" id ="hfhname" onkeypress="javascript: fname();" value="<%=rs.getString("hfname")%>"/></td>
<td align="center">Husband/Father Name</td>
<td align="center" width="180px"><input class="form-control" type ="text" name="fhname" id ="fhname" value="<%=rs.getString("fname")%>"/></td>

<td align="center">Caste</td>
<td align="center">
    <select class="form-control" name ="caste" id="caste" style="width:155px">
<option value ="<%=rs.getString("caste")%>"><%=rs.getString("caste")%></option>
<option value ="general">General</option>
<option value ="OBC">OBC</option>
<option value ="Anushuchit Jati">Anushuchit jati</option>
<option value ="Anushuchit jan jati">Anushuchit jan jati</option>
<option value ="Other Backward Caste">Other Backward Caste</option>
</select> 
</td>
</tr>
<tr>
<td align="center" >No. of Family Member</td>
<td align="center" width="180px"><input class="form-control" type="text" name="fmno" id="fmno" value="<%=rs.getString("fmno")%>"/></td>

</tr>
<tr>
<td align="center" >Sub caste</td>
<td align="center" width="180px">
<select class="form-control" name="subcaste" id="subcaste" style="width:155px">
    <option value ="<%=rs.getString("subcaste")%>"><%=rs.getString("subcaste")%></option>
<option value ="Hindu">Hindu</option>
<option value ="Musalim">Muslim</option>
<option value ="Sikh">Sikh</option>
<option value ="Isai">Christian</option>
<option value ="Other">Other</option>
</select>
</td>

<td align="center" >Ward No</td>
<td align="center" width="180px"><select class="form-control" name="ward" size="1" id="ward">
<option><%=rs.getString("wardNo")%></option>
</select>
</td>

</tr>
<tr>
		<td colspan="1" align="right" >गली नंबर / गली का नाम </td>
                <td align="center" width="180px"align="right" width="180px"><input class="form-control" type ="text" name="hstreetno" id ="hstreetno" onkeypress="javascript: streetNN();" value="<%=rs.getString("hstreetnn")%>"/></td>
                <td colspan="1" align="right" >Street No/Street Name</td>
                <td align="center" width="180px"><input class="form-control" type ="text" name="streetno" id="streetno" value="<%=rs.getString("streetnn")%>"/></td>
                <td align="center">House No</td>
                <td align="center" width="180px"><input class="form-control" type="text" name="houseno" id ="houseno" value="<%=rs.getString("houseno")%>"/></td>
            </tr>
             <tr>
<td colspan="1" align="right">Colony </td>
<td align="center" width="180px"><select class="form-control" name="colony" size="1" id="colony">
        <option><%=rs.getString("colony")%></option>
</select>

                 <td colspan="1" align="right" >मोहल्ला</td>
<td align="center" width="180px"><select class="form-control" name="hcolony" size="1" id="hcolony">
<option><%=rs.getString("hcolony")%></option>
</select>

            </tr>
            
            <tr>
            	<td colspan="1" align="right" >भूमि चिन्ह </td>
                <td align="center" width="180px"><input class="form-control" type="text" name="hlandmark" id="hlandmark" value="<%=rs.getString("hlandmark")%>" onkeypress="javascript: landMark();"/></td>
                <td colspan="1" align="right" >LandMark</td>
                <td align="center" width="180px"><input class="form-control" type="text" name="landmark" id="landmark" value="<%=rs.getString("landmark")%>"/></td>
            </tr>
            <tr>
            	<td colspan="1" align="right">शहर </td>
                <td align="center" width="180px"><input class="form-control" type ="text" name="hcity" id ="hcity" value ="पीथमपुर"/></td>
                <td colspan="1" align="right">City</td>
                <td align="center" width="180px"><input class="form-control" type ="text" name="city" id ="city" value ="Pithampur"/></td>
            </tr>
<tr>
    <td colspan ="2" style="height:80px"align="right" >Current Address is Same as above <input  type="checkbox"  id = "cadd" onclick="checkBox()" /></td>
<td align="center" > Current Address </td>
<td align="center" width="180px"><textarea class="form-control" name ="caddress" id ="caddress"><%=rs.getString("caddress")%></textarea></td>
<td align="center" >वर्तमान पता</td>
<td align="center" width="180px"><textarea class="form-control" name ="hcaddress" id ="hcaddress"><%=rs.getString("hcaddress")%></textarea></td>
</tr>
<tr>
<tr>
<td align="center"  colspan ="2" style="height:80px">Parmanent Address is Same as above <input  type="checkbox"  id ="padd" onclick="checkBox()"/></td>
<td align="center" > Parmanent Address </td>
<td align="center" width="180px"><textarea class="form-control" name ="paddress" id ="paddress" ><%=rs.getString("paddress")%></textarea></td>
<td align="center">स्थायी पता</td>
<td align="center" width="180px"><textarea class="form-control"  name ="hpaddress" id ="hpaddress" ><%=rs.getString("hpaddress")%></textarea></td>
</tr>
<tr>
<td align="center" >Living From Year</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="liveyear" name ="liveyear" value="<%=rs.getString("liveyear")%>"/></td>
<td align="center">व्यवसाय</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="occupation" name ="occupation" value="<%=rs.getString("occupation")%>"/></td>
<td align="center">Designation</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="designation" name ="designation" value="<%=rs.getString("designation")%>"/></td>
</tr>
<tr>
<td align="center">Salary Status</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="salarystatus" name ="salarystatus" value="<%=rs.getString("salarystatus")%>"/></td>
<td align="center">Salary</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="salary" name ="salary" value="<%=rs.getString("salary")%>"/></td>
</tr>
<tr>
<td align="center">कार्यालय का पता</td>
<td align="center" width="180px"><input class="form-control" type="text" name="hofficeaddress" id ="hofficeaddress" value="<%=rs.getString("hoaddress")%>" onkeypress="javascript: officeAddress();"/></td>
<td align="center">Office Address</td>
<td align="center" width="180px"><input class="form-control" type="text" name="officeaddress" id ="officeaddress" value="<%=rs.getString("oaddress")%>"/></td>
<td align="center">Poverty Level No.</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="povertyno" value="<%=rs.getString("povertylevel")%>" name ="povertyno"/></td>
</tr>
<tr>
<td align="center" >Old rationCard No.</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="oldno" name ="oldno" value="<%=rs.getString("orcNo")%>"/></td>

</tr>
<tr>
<td align="center">Gas Connection</td>
<td align="center" width="180px"><input class="form-control" type ="text" id ="gasconnection" name ="gasconnection" value="<%=rs.getString("gasconnection")%>"/></td>
<td align="center">Gas Consumer No.</td>
<td align="center" width="180px"><input class="form-control" type ="text"  name="gasCNo" id ="gasCNo" value="<%=rs.getString("gasconsumerno")%>"/></td>

</tr> 
<tr>
<td align="center">गैस कनेक्शन धारक नाम</td>
<td align="center" width="180px"><input class="form-control" type="text" name="hgcownername"  id ="hgcownername" value="<%=rs.getString("hgconame")%>" onkeypress="javascript: gcOwnername();"/></td>
<td align="center">Gas Connection Owner Name</td>
<td align="center" width="180px"><input class="form-control" type="text" name="gcownername" id ="gcownername" value="<%=rs.getString("gconame")%>"/></td>

</tr>
<tr><td>&nbsp;</td></tr>
<tr>
    <td colspan="3" align="right"><input class="btn btn-outline btn-primary" type="submit" value ="submit"/></td>
    <td></td>
    <td colspan="3" align="left"><input class="btn btn-outline btn-primary" type="reset" value ="Reset"/></td>
</tr>
<%  

}
//rs.close();
connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>

</table>
</form> 

</body>
</html>
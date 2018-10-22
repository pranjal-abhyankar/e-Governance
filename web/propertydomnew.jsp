<%-- 
    Document   : propertydomnew
    Created on : Jan 13, 2014, 12:40:15 PM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="jquery.multiselect.css" />
<link rel="stylesheet" type="text/css" href="style11.css" />
<link rel="stylesheet" type="text/css" href="prettify.css" />
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1/jquery-ui.min.js"></script>
<script type="text/javascript" src="prettify.js"></script>
<script type="text/javascript" src="jquery.multiselect.js"></script>
<script type="text/javascript" src="jquery1.js"></script>
        <script src="js/jquery-1.6.1.min.js"></script>

        
      


  <script type="text/javascript">
      var intTextBox=4;
$(document).ready(function(){
    
    $("input#addelement").click(function(){
    alert("hjvj");
intTextBox = intTextBox + 1;
var contentID = document.getElementById('content');
var newTBDiv = document.createElement('div');
newTBDiv.setAttribute('id','strText'+intTextBox);
newTBDiv.innerHTML = "<input class="form-control" type='text' id='level" + intTextBox + "open' name='level" + intTextBox + "open'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "position' name='level" + intTextBox + "position'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "use' name='level" + intTextBox + "use'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "useby' name='level" + intTextBox + "useby'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "contype' name='level" + intTextBox + "contype'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "room' name='level" + intTextBox + "room'/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type='text' id='level" + intTextBox + "area' name='level" + intTextBox + "area'/><br><br><br>";
contentID.appendChild(newTBDiv);
});

//FUNCTION TO REMOVE TEXT BOX ELEMENT
$("input#removeelement").click(function(){

if(intTextBox != 0)
{
var contentID = document.getElementById('content');
contentID.removeChild(document.getElementById('strText'+intTextBox));
intTextBox = intTextBox-1;
}
});


    $("select#proptype").blur(function(){

    var zone = $("select#zone").val();
  
if(zone.length == 0) {
$('#suggestions').hide();
} else {
$.post("DisplayWard", {queryString: ""+zone+""}, function(data){
if(data.length >0) {
$('#suggestion').show();
$('#ward').html(data);
}
});
}
    });
            $("input#next").click(function(){
        $("div#page1").hide(500);
        $("div#page2").show(500);
    });
            $("input#back").click(function(){
              $("div#page2").hide(500);  
              $("div#page1").show(500);  
            });
    
    $("select#proptype").blur(function(){
      var type=$(this).val();
      var zonename=$("select#zone").val();
      $.post("PropertyRegno",{one:""+type+"",two:""+zonename+""},function(data){
          $("input#regno").val(data);
      });
  });
});
function lookup2(ward) {
if(ward.length == 0) {
$('#suggestions').hide();
} else {
$.post("DisplayColony", {queryString: ""+ward+""}, function(data){
if(data.length >0) {
$('#suggestion1').show();
$('#colony').html(data);
}
});
}
}
function lookup3(colony) {
if(colony.length == 0) {
$('#suggestions').hide();
} else {
$.post("DisplayColonyHindi", {queryString: ""+colony+""}, function(data){
if(data.length >0) {
$('#suggestion1').show();
$('#hcolony').html(data);
}
});
}
}
function fill(thisValue) {
$('#inputString1').val(thisValue);
document.write(thisValue);

setTimeout("$('#suggestions').hide();", 200);
}
</script>

     <script>
function myFunction()
{
var x=document.getElementById("hname");
document.getElementById("name").value = x.value;
}
</script>
<script type="text/javascript">
function AllowAlphabet1()
{
               if (!trans.ownernamehin.value.match(/^[A-Za-z0-9]+$/) && trans.ownernamehin.value !="")
               {
                    var ownername = document.getElementById('ownername').value; 
                    var ownernamehin = document.getElementById('ownernamehin').value;
                    document.getElementById('ownername').value = ownername+ownernamehin.charAt((ownernamehin.length)-1);  

               }
               else
               {
                   var ownernamehin = document.getElementById('ownernamehin').value;
                   document.getElementById('ownername').value = ownernamehin;
               }
}
function AllowAlphabet2()
{
               if (!trans.fathernamehin.value.match(/^[A-Za-z0-9]+$/) && trans.fathernamehin.value !="")
               {
                    var fathername = document.getElementById('fathername').value; 
                    var fathernamehin = document.getElementById('fathernamehin').value;
                    document.getElementById('fathername').value = fathername+fathernamehin.charAt((fathernamehin.length)-1);  

               }
               else
               {
                   var fathernamehin = document.getElementById('fathernamehin').value;
                   document.getElementById('fathername').value = fathernamehin;
               }
}
function AllowAlphabet3()
{
               if (!trans.tenantnamehin.value.match(/^[A-Za-z0-9]+$/) && trans.tenantnamehin.value !="")
               {
                    var tenantname = document.getElementById('tenantname').value; 
                    var tenantnamehin = document.getElementById('tenantnamehin').value;
                    document.getElementById('tenantname').value = tenantname+tenantnamehin.charAt((tenantnamehin.length)-1);  

               }
               else
               {
                   var tenantnamehin = document.getElementById('tenantnamehin').value;
                   document.getElementById('tenantname').value = tenantnamehin;
               }
}
</script>
<script type="text/javascript">document.onload = ctck();</script>

    <!--    <script type="text/javascript">
$(function(){
	$("selects").multiselect();
});
</script> -->
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
            var ids = [ "ownernamehin" , "fathernamehin" , "tenantnamehin" , "houseno" , "roadno" , "propertyname" , "ownerbasis"];
            control.makeTransliteratable(ids);
            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
          }
          google.setOnLoadCallback(onLoad);
        </script>
        <script>
            var zone  = document.getElementById("zone");
            var proptype  = document.getElementById("proptype");
            $(document).ready(function(){
                $("select#proptype").blur(function(){
                    zone = zone+proptype;
                    $.post("DisplayColonyHindi", {queryString: ""+colony+""}, function(data){
                });
            });
        });
        </script>

    </head>
    
      <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>
    <body>
                
<%
try 
{
    
     HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
                   
 Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
Statement statement = null; 
ResultSet rs = null; 
statement = connection.createStatement();
String date = "select curdate()";
rs = statement.executeQuery(date);
while(rs.next()){date=rs.getString(1);}

String selzone="select zonename from zonename";

%>


        <h2 style="color: black"><font>New Property Registration</font></h2>

        
          
             <form action="PropertyDomNew2" method="post" name="trans">
   
<div id="page1">
    <TABLE style=" width: 100%; color: black; font-family: sans-serif; font-size: 16px"> 
<TR valign=top>
<TD width=154>
<div><font>
  Registration Date
</font></div>

</TD>
<TD width=128><font><input class="form-control" type="date" name="regdate" id="regdate" value="<%=date%>"></font>
</TD>
<TD>Zone</TD><td align="left" width="180px">
    <select class="form-control" id="zone" name="zone">
        <option>Select Zone</option>
        <%
        rs=statement.executeQuery(selzone);
        while(rs.next())
        {
        %>
    <option><%=rs.getString("zonename")%></option>
        <%}%>
</select>
</td>

<td>Property Type</td>
<td width="180px"><select class="form-control" name = "proptype" id="proptype"><option>Residential</option><option>Commercial</option></select></td>


<TD width=151>
<div>Registration No</div>

</TD>
<TD width=151>
    <div><font><input class="form-control" type="text" name="regno" id="regno">
                                  </font></div>

</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=105 height=1>
<div><font>मालिक का नाम</font></div>

</TD>
<TD width=151 height=1><input class="form-control" type="text" name="ownernamehin" id="ownernamehin" onkeydown="return AllowAlphabet1()">
</TD>
<TD width=105 height=1>
<div><font>&#2346;&#2367;&#2340;&#2366;/&#2346;&#2340;&#2367; &#2325;&#2366; &#2344;&#2366;&#2350;&nbsp;</font></div>

</TD>
<TD width=151 height=1><input class="form-control" type="text" name="fathernamehin" id="fathernamehin" onkeydown="return AllowAlphabet2()">
</TD>
<TD width=151 height=1>
<div><font>&#2325;&#2367;&#2352;&#2366;&#2351;&#2342;&#2366;&#2352; &#2325;&#2366; &#2344;&#2366;&#2350;&nbsp;</font></div>

</TD>
<TD width=151 height=1><input class="form-control" type="text" name="tenantnamehin" id="tenantnamehin" onkeydown="return AllowAlphabet3()">
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div> </div>

</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>Owner Name</div>

</TD>

<TD width=128> <input class="form-control" type="text" name="ownername" id="ownername">
</TD>
<TD width=154 height=1>
<div><font>Father/Husband Name</font></div>

</TD>
<TD width=128 height=1><input class="form-control" type="text" name="fathername" id="fathername">
</TD>
<TD width=105 height=1>
<div><font>Tenant Name</font></div>

</TD>
<TD width=151 height=1><input class="form-control" type="text" name="tenantname" id="tenantname">
</TD>

</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>घर क्र.</div>

</TD>
<TD width=128><input class="form-control" type="text" name="houseno" id="houseno">
</TD>
<TD width=105>
<div><font>&#2327;&#2354;&#2368; &#2344;&#2306;&nbsp;</font></div>

</TD>
<TD width=151><input class="form-control" type="text" name="roadno" id="roadno">
</TD>
<TD width=151>
<div>संपत्ति का नाम</div>

</TD>
<TD width=151><input class="form-control" type="text" name="propertyname" id="propertyname">
</TD>
<td>Ward No</td>
<td width="180px"><select class="form-control" name = "ward" id="ward" onblur="lookup2(this.value);"><option>Select Ward</option></select></td>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<td>Colony </td>
<td width="180px"><select class="form-control" name = "colony" id="colony" onblur="lookup3(this.value);"><option>Select Colony</option></select>
<TD width=105>
<div>क्षेत्र</div>

</TD>
<td width="180px"><select class="form-control" name="hcolony" size="1" id="hcolony">
<option value=" " selected="selected">Please</option>
</select>
<TD width=151>
<div>शहर</div>

</TD>
<TD width=151><input class="form-control" type="text" name="city" id="city" value="पीथमपुर">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><font>&#2360;&#2381;&#2357;&#2366;&#2350;&#2367;&#2340;&#2381;&#2357; &#2325;&#2366; &#2310;&#2343;&#2366;&#2352;</font></div>

</TD>
<TD width=128><input class="form-control" type="text" name="ownerbasis" id="ownerbasis">
        
</TD>
<TD width=105>
<div><font>&#2360;&#2306;&#2346;&#2340;&#2381;&#2340;&#2367; &#2325;&#2366; &#2313;&#2346;&#2351;&#2379;&#2327;</font></div>

</TD>
<TD width=50><div class="wpmd"><select class="form-control" name="propertyuse" id="propertyuse">
	<option value="किराये से">स्वयं</option>
	<option value="स्कूल">स्कूल</option>
	<option value="कॉलेज">कॉलेज</option>
	<option value="कोचिंग संस्थान">कोचिंग संसथान</option>
	<option value="निजी चिकित्सालय">निजी चिकित्सालय</option>
	<option value="ब्यूटी पार्लर">ब्यूटी पार्लर</option>
	<option value="मैरिज हॉल">मैरिज हॉल</option>
	<option value="सिनेमा हॉल/मल्टीप्लेक्स">सिनेमा हॉल/मल्टीप्लेक्स</option>
	<option value="होटल/रेस्टोरेंट/दुकान">होटल/रेस्टोरेंट/दुकान</option>
	<option value="अर्ध सरकारी संसथान">अर्ध सरकारी संसथान</option>
	<option value="राज्य सर्कार के कार्यालय">राज्य सर्कार के कार्यालय</option>
	<option value="केंद्र सर्कार के कार्यालय">केंद्र सर्कार के कार्यालय</option>
	<option value="धरा 127A के तहत प्राप्त छूट की संपत्ति">धरा 127A के तहत प्राप्त छूट की संपत्ति</option>
	<option value="निजी कार्यालय">निजी कार्यालय</option>
	<option value="आशंका या पूर्ण धार्मिक उपयोग की संपत्ति">आशंका या पूर्ण धार्मिक उपयोग की संपत्ति</option>
	<option value="उद्योग">उद्योग</option>
	<option value="निकाय की संपत्ति">निकाय की संपत्ति</option>
	</select>
</div></TD>
<TD width=151>
<div>Contact No.</div>

</TD>
<TD width=151><input class="form-control" type="text" name="contact" id="contact">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
    </TABLE>

                                    
       
    <TABLE style=" width: 100%; color: black; font-family: sans-serif; font-size: 16px"> 
<TR valign=top>
    <TD width=154><h2>Property</h2>
</TD>
<TD width=128><h2>Details</h2>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>



<TR valign=top>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>

<TR valign=top>
<TD width=154>
रिक्त भूमि 
</TD>
<TD width=128>भवन की स्थिति
</TD>
<TD width=105>
<div><center>उपयोग</center></div>

</TD>
<TD width=105>
<div><center>उपयोग</center></div>

</TD>
<TD><div><center><font>निर्माण का प्रकार</font></center></div>
</TD>
<TD width=151><center>कमरों की संख्या</center>
</TD>
<TD><div><center><font>क्षेत्र फल वर्गफीट</font></center></div>

</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><input class="form-control" type="text" name="level1open" id="level1open"></div>

</TD>
<TD width=128><div><input class="form-control" type="text" name="level1position" id="level1position"></div>

  </TD>
<TD width=105>
<input class="form-control" type="text" name="level1use" id="level1use">
  </TD>
<TD width=105>
<input class="form-control" type="text" name="level1useby" id="level1useby">

</TD>
<TD width=151><input class="form-control" type="text" name="level1contype" id="level1contype">
</TD>
<TD width=151>
<input class="form-control" type="text" name="level1room" id="level1room">

</TD>
<TD width=151><input class="form-control" type="text" name="level1area" id="level1area">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><input class="form-control" type="text" name="level2open" id="level2open"></div>

</TD>
<TD width=128><div><input class="form-control" type="text" name="level2position" id="level2position"></div>

  </TD>
<TD width=105>
    <input class="form-control" type="text" name="level2use" id="level2use" width=50%>
  </TD>
<TD width=105>
<input class="form-control" type="text" name="level2useby" id="level2useby" width=50%>

</TD>
<TD width=151><input class="form-control" type="text" name="level2contype" id="level2contype">
</TD>
<TD width=151>
<input class="form-control" type="text" name="level2room" id="level2room">

</TD>
<TD width=151><input class="form-control" type="text" name="level2area" id="level2area">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><input class="form-control" type="text" name="level3open" id="level3open"></div>

</TD>
<TD width=128><div><input class="form-control" type="text" name="level3position" id="level3position"></div>

  </TD>
<TD width=105>
<input class="form-control" type="text" name="level3use" id="level3use">
  </TD>
<TD width=105>
<input class="form-control" type="text" name="level3useby" id="level3useby">

</TD>
<TD width=151><input class="form-control" type="text" name="level3contype" id="level3contype">
</TD>
<TD width=151>
<input class="form-control" type="text" name="level3room" id="level3room">

</TD>
<TD width=151><input class="form-control" type="text" name="level3area" id="level3area">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><input class="form-control" type="text" name="level4open" id="level4open"></div>

</TD>
<TD width=128><div><input class="form-control" type="text" name="level4position" id="level4position"></div>

  </TD>
<TD width=105>
    <input class="form-control" type="text" name="level4use" id="level4use" width=50%>
  </TD>
<TD width=105>
<input class="form-control" type="text" name="level4useby" id="level4useby" width=50%>

</TD>
<TD width=151><input class="form-control" type="text" name="level4contype" id="level4contype">
</TD>
<TD width=151>
<input class="form-control" type="text" name="level4room" id="level4room">

</TD>
<TD width=151><input class="form-control" type="text" name="level4area" id="level4area">
</TD>
</TR>


<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151>

</TD>
</TR>
<tr>
    <td><input class="btn btn-outline btn-primary" type="button" id="addelement" value="Add"></td>
    <td><input class="btn btn-outline btn-primary" type="button" id="removeelement" value="Remove" ></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
    <td>
<input class="btn btn-outline btn-primary" type="button" name="next" id="next" value="Next">

    </td>
 </tr>
    
    </TABLE>  

</div>
     <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> <!--Page 2 --> 



 
      

        <div id="page2" hidden="hidden">
          
    <TABLE style=" width: 100%; color: black; font-family: sans-serif; font-size: 16px"> 
<TR valign=top>
<TD width=154>
<div><font>
  क्या भूमि मुख्य मार्ग या बाज़ार में स्तिथ है ?
</font></div>

</TD>
<TD width=128><font><input class="form-control" type="text" name="mainroad" id="mainroad"><option>हा</option><option selected>नहीं</option></select></font>
</TD>

<TD width=154>
<div>क्या संपत्ति शासकीय है ?</div>
</TD>

<TD width=128> <input class="form-control" name="govt" id="govt">
        <option>हा</option>
        <option selected>नहीं</option>
        
        
    </select>
</TD>


<TD width=151>
<div><font>भवन भूमि का स्वामित्व :</font></div>

</TD>
<TD width=151>
    <div><font><input class="form-control" name="holder" id="holder">
        <option>सामान्य</option>
        <option>परित्यक्ता महिला</option>
        
        
    </select>
                                  </font></div>

</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
    <TD width=105 height=1 colspan="3">
<div><font>यदि संपत्ति नगर पालिका से दुकान,भवन,भूमि किरय से ली है तो उसका विवरण :-</font></div>

</TD>
</TR>
<TR valign=top>
<TD width=154>
<div> </div>

</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>पता :-</div>

</TD>

<TD width=128> <textarea type="text" name="rentaddress" id="rentaddress"></textarea>
</TD>
<TD width=154 height=1>
    <div><font>क्षेत्रफल वर्गफीट</font></div>

</TD>
<TD width=128 height=1><input class="form-control" type="text" name="rentarea" id="rentarea">
</TD>
<TD width=105 height=1>
<div><font>मासिक दर / लीज रु.</font></div>

</TD>
<TD width=151 height=1><input class="form-control" type="text" name="rentrate" id="rentrate">
</TD>

</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>भवन या भूमि में जल संसाधन की स्तिथि : -</div>

</TD>
<TD width=128><input class="form-control" name="connection" id="connection">
        <option>नल</option>
        <option>कुआ</option>
        <option>हैण्ड पंप</option>
        <option>बोरिंग</option>
        <option>अन्य</option>
        
        
    </select>
</TD>
<TD width=105>
<div><font>यदि नल कनेक्शन है तो खता क्रं.</font></div>

</TD>
<TD width=151><input class="form-control" type="text" name="connectionno" id="connectionno">
</TD>
<TD width=151>
<div>नल कनेक्शन का प्रकार</div>

</TD>
<TD width=151><input class="form-control" name="connectiontype" id="connectiontype">
        <option>व्यवसायिक</option>
        <option>घरेलु</option>
        
    </select>
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>वाटर रिचार्जिंग</div>

</TD>
<TD width=128><input class="form-control" name="waterrec" id="waterrec">
        <option>नहीं</option>
        <option>हा</option>
    </select>
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><font>यदि व्यवसाय होता है तो फॉर्म का नाम</font></div>

</TD>
<TD width=128><input type="text" name="firmname" id="firmname">
        
</TD>
<TD width=105>
<div><font>संचालक का नाम</font></div>

</TD>
<TD width=128><input class="form-control" type="text" name="firmowner" id="firmowner">
</TD>
<TD width=151>
<div>लाइसेंस नंबर</div>

</TD>
<TD width=151><input class="form-control" type="text" name="license" id="license">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>संचालक का विवरण: भवन </div>

</TD>
<TD width=151><input class="form-control" type="text" name="bhavan" id="bhavan">
</TD>
<TD width=105>
<div><font>किरायदार</font></div>

</TD>
<TD width=151><input class="form-control" type="text" name="firmtenant" id="firmtenant">
</TD>
<TD width=151>
<div>परिवार से </div>

</TD>
<TD width=151><input class="form-control" type="text" name="firmfamily" id="firmfamily">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div>परिवार के सदस्य की संख्याकुल: व्यस्क</div>

</TD>
<TD width=151><input class="form-control" type="text" name="adultfamily" id="adultfamily">
</TD>
<TD width=105>
<div>अवयस्क</div>

</TD>
<TD width=151><input class="form-control" type="text" name="childfamily" id="childfamily">
</TD>
<TD width=151>
<div>कूल</div>

</TD>
<TD width=151><input class="form-control" type="text" name="totalfamily" id="totalfamily">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154>
<div><font>न.पा.से राशन कार्ड जरी किया गया है</font></div>

</TD>
<TD width=128><input class="form-control" name="ration" id="ration">
        <option>सामान्य</option>
        <option>गरीबी रेखा</option>
        <option>नहीं</option>
        
    </select>
        
</TD>
<TD width=105>
<div><font>सामाजिक सुरक्षा पेंशन योजना मिलती है ?</font></div>

</TD>
<TD width=128><input class="form-control" name="pension" id="pension">
        <option>हा</option>
        <option>नहीं</option>
        
    </select>
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR>
<TD width=151>
<div>उपयोग में आने वाले कमरों की संख्या</div>

</TD>
<TD width=151><input class="form-control" type="text" name="usableroom" id="usableroom">
</TD>
<TD width=151>
<div>क्षेत्रफल वर्गफीट</div>

</TD>
<TD width=151><input class="form-control" type="text" name="arearoom" id="arearoom">
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=105><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
<TR valign=top>
<TD width=154><BR>
</TD>
<TD width=128><BR>
</TD>
<TD width=151>
  <input class="btn btn-outline btn-primary" type="button" name="back" id="back" value="Back">  <BR>
</TD>
<TD width=151>
  <input class="btn btn-outline btn-primary" type="submit" name="submit" id="submit" value="Submit">  <BR>
</TD>
<TD width=151>
  <input class="btn btn-outline btn-primary" type="reset" name="reset" id="reset" value="Reset">  <BR>
</TD>
<TD width=151><BR>
</TD>
<TD width=151><BR>
</TD>
</TR>
</TABLE>  
          

        <script language="javascript">
                function sum() {
       var adultfamily = document.getElementById('adultfamily').value;
       var childfamily = document.getElementById('childfamily').value;
       if (adultfamily == "")
           adultfamily = 0;
       if (childfamily == "")
           childfamily = 0;
       
       var result = parseInt(adultfamily) + parseInt(childfamily);
       if (!isNaN(result)) {
           document.getElementById('totalfamily').value = result;
       }
                }
      
            </script>
             
         
    </div>
 
        

                         <%
                         String level = request.getParameter("level");
		  
    statement.close(); 
connection.close(); } 
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 
 out.print(ex);
} 
%>
            

             </form>
         
       
     </body>
</html>

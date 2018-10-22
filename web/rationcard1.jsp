<!DOCTYPE HTML>

<%@page contentType="text/html" pageEncoding="UTF-8" language= "java"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
<script type="text/javascript">
function lookups(family) {
if(family.length == 0) {
$('#suggestions').hide();
} else {
$.post("Family", {queryString: ""+family+""}, function(data){
if(data.length >0) {

$('#autoSuggestionsList').html(data);

   google.load("elements", "1", {
    packages: "transliteration"
    });
   
       $("input.AutoSuggest").focus(function(){
   
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
   var ids = [ "name1" , "name2" , "name3" , "name4" , "name5" , "name6" , "name7" , "name8" , "name9" , "name10" , "name11" , "name12" , "name13" , "name14" , "name15"];
   control.makeTransliteratable(ids);
   // Show the transliteration control which can be used to toggle between
   // English and Hindi and also choose other destination language.
   control.showControl('translControl');
   
   google.setOnLoadCallback(onLoad);});
  

$(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
});    

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
	document.getElementById('hcaddress').value =document.getElementById('hstreetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('hcolony').value+' '+document.getElementById('hlandmark').value+' '+document.getElementById('hcity').value;
}
else if (document.getElementById('cadd').checked == false)
{
	document.getElementById('caddress').value = '';
	document.getElementById('hcaddress').value = '';
} 
if (document.getElementById('padd').checked == true )
{
	document.getElementById('paddress').value =document.getElementById('streetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('colony').value+' '+document.getElementById('landmark').value+' '+document.getElementById('city').value;
	document.getElementById('hpaddress').value =document.getElementById('hstreetno').value+' '+ document.getElementById('houseno').value+' '+document.getElementById('hcolony').value+' '+document.getElementById('hlandmark').value+' '+document.getElementById('hcity').value;	
}
else if (document.getElementById('padd').checked == false)
{
	document.getElementById('paddress').value = '';
	document.getElementById('hpaddress').value = '';
}

}
</script>
<script>
     $(document).ready(function(){
         $("select#gender").blur(function(){
             var gender = $("select#gender").val();
             if(gender=="Male"){
            $("select#onegender").val("पुरुष");}
        else{
                        $("select#gender1").val("महिला");}
         });
     });
     
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
   var ids = [ "hname" , "hfhname", "hstreetno","hlandmark","hofficeaddress","hgcownername" , "hcolony" , "occupation" , "hwitness1" , "hwitness2" , "name1" , "name2" , "name3" , "name4" , "name5" , "name6" , "name7" , "name8" , "name9" , "name10" , "name11" , "name12" , "name13" , "name14" , "name15"];
   control.makeTransliteratable(ids);
   // Show the transliteration control which can be used to toggle between
   // English and Hindi and also choose other destination language.
   control.showControl('translControl');
   }
   google.setOnLoadCallback(onLoad);
  </script>
<!--  <script>
      function copy()
{
    var cop = document.getElementById('hname').value;
    //alert(cop);
    document.getElementById("onename").value = cop;
    
}      

  </script> -->

 <SCRIPT language="javascript">

     var prev=1;

function displayKeyCode1(evt)
 {
	var textBox = getObject('hname');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hname').value;
    var name = document.getElementById('name').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('name').value = name.slice(0,-1);
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
  var name = document.getElementById('name').value; 
     var hname = document.getElementById('hname').value;
     document.getElementById('name').value = name+hname.charAt((hname.length)-1); 

    }
 }
function displayKeyCode2(evt)
 {
	var textBox = getObject('hfhname');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hfhname').value;
    var name = document.getElementById('fhname').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('fhname').value = name.slice(0,-1);
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
 var fhname = document.getElementById('fhname').value; 
     var hfhname = document.getElementById('hfhname').value;
     document.getElementById('fhname').value = fhname+hfhname.charAt((hfhname.length)-1); 
	
    }
	

 }

function displayKeyCode3(evt)
 {
	var textBox = getObject('hstreetno');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hstreetno').value;
    var name = document.getElementById('streetno').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('streetno').value = name.slice(0,-1);
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
   var streetno = document.getElementById('streetno').value; 
     var hstreetno = document.getElementById('hstreetno').value;
     document.getElementById('streetno').value = streetno+hstreetno.charAt((hstreetno.length)-1); 
	
    }
	

 }

function displayKeyCode4(evt)
 {
	var textBox = getObject('hlandmark');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hlandmark').value;
    var name = document.getElementById('landmark').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('landmark').value = name.slice(0,-1);
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
   var landmark = document.getElementById('landmark').value; 
     var hlandmark = document.getElementById('hlandmark').value;
     document.getElementById('landmark').value = landmark+hlandmark.charAt((hlandmark.length)-1); 
	
    }
	

 }

function displayKeyCode5(evt)
 {
	var textBox = getObject('hofficeaddress');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hofficeaddress').value;
    var name = document.getElementById('officeaddress').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('officeaddress').value = name.slice(0,-1);
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
    var officeaddress = document.getElementById('officeaddress').value; 
     var hofficeaddress = document.getElementById('hofficeaddress').value;
     document.getElementById('officeaddress').value = officeaddress+hofficeaddress.charAt((hofficeaddress.length)-1); 
	
    }
	

 }

function displayKeyCode6(evt)
 {
	var textBox = getObject('hgcownername');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hgcownername').value;
    var name = document.getElementById('gcownername').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('gcownername').value = name.slice(0,-1);
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
     var gcownername = document.getElementById('gcownername').value; 
     var hgcownername = document.getElementById('hgcownername').value;
     document.getElementById('gcownername').value = gcownername+hgcownername.charAt((hgcownername.length)-1); 
	
    }
	

 }

function displayKeyCode7(evt)
 {
	var textBox = getObject('hwitness1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hwitness1').value;
    var name = document.getElementById('witness1').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('witness1').value = name.slice(0,-1);
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
     var witness1 = document.getElementById('witness1').value; 
     var hwitness1 = document.getElementById('hwitness1').value;
     document.getElementById('witness1').value = witness1+hwitness1.charAt((hwitness1.length)-1); 
	
    }
	

 }
 
 
 function displayKeyCode8(evt)
 {
	var textBox = getObject('hwitness2');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hwitness2').value;
    var name = document.getElementById('witness2').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('witness2').value = name.slice(0,-1);
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
     var witness2 = document.getElementById('witness2').value; 
     var hwitness2 = document.getElementById('hwitness2').value;
     document.getElementById('witness2').value = witness2+hwitness2.charAt((hwitness2.length)-1); 
	
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

</SCRIPT>
<script language="javascript">
function notify()
{
 // ("Save the Form")
  //  if(confirm("Confirm Save"))
   // document.forms[0].submit();
 // else
   // return false;   
   // window.location = "rationcard1.jsp";
}
</script> 

 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
        <script src="js/jquery-1.6.1.min.js"></script>
 <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript" src="jquery1.js"></script>
<script>
$(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
  
  $("select#zone").blur(function(){
      var temp=$(this).val();
      $.post("RationRegno",{queryString:""+temp+""},function(data){
          $("input#regno").val(data);
      });
  });
});    
</script>
 <script type="text/javascript">
function lookup(zone) {
if(zone.length == 0) {
$('#suggestions').hide();
} else {
$.post("DisplayWard", {queryString: ""+zone+""}, function(data){
if(data.length >0) {
$('#suggestion').show();
$('#ward').html(data);
}
});
document.getElementById('zones').value = zone;
}
}
 
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
<body>
 <%
    request.setCharacterEncoding("UTF-8");

  %>

 <%
 HttpSession rationcard1 = null;
 // rationcard1.invalidate();
  rationcard1 = request.getSession();
String zone= "Select Zone";
if(rationcard1.getAttribute("zone")!=null)
  {
zone= rationcard1.getAttribute("zone").toString();
}

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
String date = "select curdate()";
rs=statement.executeQuery(date);
while(rs.next()){date = rs.getString(1);}

%>
<form action="Rationcard2" method="post" target="mainframe" name="myform">
<table align="center" border ="0" style="color: black">
<tr>
<td align="right">Registration Date &nbsp;</td>
<td align="right" width="180px">
    <input class="form-control" type ="date" id ="registrationdate" name ="registrationdate" value = "<%=date%>"/></td>
<td align="right">Zone</td>
<td align="right" width="180px">
 <select class="form-control" class="form-control" id="zone" name="zone" required="required" onblur="lookup(this.value);">
  <option selected><%=zone%></option>

  <%String zones = "select * from zonename"; rs = statement.executeQuery(zones); while(rs.next()) { %>
  <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option><% } %>
 
</select>
  <input     type ="text" id ="zones" name ="zones" value="<%=zone%>" hidden="hidden"> 

</td>

<td align="right" >Registration No. &nbsp;</td>

<td align="right" width="180px"><input class="form-control" type ="text" id ="regno" name ="regno" readonly/></td>
<td align="right" >Ration card for &nbsp;</td>
<td align="right" width="180px">
 <select class="form-control" name="rationcardfor" id="rationcardfor" style="width:180px">
<option>APL</option>
<option>BPL</option>
</select>
</td>

</tr>
<tr>
<td align="right" >नाम &nbsp;</td>
<td align="right" width="180px"><input class="form-control" ID="hname" ONKEYDOWN="javascript: displayKeyCode1(event);"  TYPE="text" NAME="hname"></td>
<td align="right" >Name &nbsp;</td>
<td align="right" width="180px"><input class="form-control" type ="text" name="name" required="required"  id ="name"/></td>
<td align="right">Caste &nbsp; </td>
<td align="right">
 <select class="form-control" name ="caste" id="caste" required="required" style="width:180px">
<option value ="general">General</option>
<option value ="OBC">OBC</option>
<option value ="Anushuchit Jati">Anushuchit jati</option>
<option value ="Anushuchit jan jati">Anushuchit jan jati</option>
<option value ="Other Backward Caste">Other Backward Caste</option>
</select> 
</td>
<td align="right" >Sub caste &nbsp; </td>
<td align="right" width="180px">
<select class="form-control" name="subcaste" id="subcaste" style="width:180px">
<option value ="Hindu">Hindu</option>
<option value ="Musalim">Muslim</option>
<option value ="Sikh">Sikh</option>
<option value ="Isai">Christian</option>
<option value ="Other">Other</option>
</select>
</td>

</tr>
<tr>
<td align="right">Gender &nbsp; </td>
<td align="right" width="180px">
 <select class="form-control" name ="gender" id="gender" style="width:180px">
<option value="male">Male</option>
<option value="female">Female</option>
</select>
</td>
<td align="right" >पति / पिता का नाम &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" name="hfhname"  id ="hfhname" required="required" onkeydown="javascript: displayKeyCode2(event);"/></td>
<td align="right">Husband/Father Name &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" name="fhname"  required="required" id ="fhname"/></td>

<td align="right" >Old rationCard No. &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="oldno" name ="oldno"/></td>
</tr>
<tr>

<td align="right" >Ward No &nbsp; </td>
<td align="right" width="180px"><select class="form-control" name = "ward" id="ward" onblur="lookup2(this.value);"></select>
</td>

<td align="right">House No &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type="text" name="houseno" id ="houseno"/></td>
   
		<td colspan="1" align="right" >गली नंबर / गली का नाम  &nbsp; </td>
    <td align="right" width="180px"align="right" width="180px"><input class="form-control" type ="text" name="hstreetno" id ="hstreetno" onkeydown="javascript: displayKeyCode3(event);"/></td>
    <td colspan="1" align="right" >Street No/Street Name &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type ="text" name="streetno" id="streetno" /></td>
    </tr>
    <tr>
<td colspan="1" align="right">Colony  &nbsp; </td>
<td align="right" width="180px"><select class="form-control" name = "colony" id="colony" onblur="lookup3(this.value);"></select>


     <td colspan="1" align="right" >मोहल्ला &nbsp; </td>
<td align="right" width="180px"><select class="form-control" name="hcolony" id="hcolony"></select>


   	<td colspan="1" align="right" >भूमि चिन्ह  &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type="text" name="hlandmark" id="hlandmark" onkeydown="javascript: displayKeyCode4(event);"/></td>
    <td colspan="1" align="right" >LandMark &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type="text" name="landmark"  id="landmark"/></td>
   </tr>
   <tr>
   	<td colspan="1" align="right">शहर  &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type ="text" name="hcity" id ="hcity" value ="पीथमपुर"/></td>
    <td colspan="1" align="right">City &nbsp; </td>
    <td align="right" width="180px"><input class="form-control" type ="text" name="city" id ="city" value ="Pithampur"/></td>
   </tr>
<tr>
 <td colspan ="2" style="height:80px"align="right" >Current Address is Same as above <input  type="checkbox" id = "cadd" onclick="checkBox()" /></td>
<td align="right" > Current Address  &nbsp; </td>
<td align="right" width="180px"><textarea class="form-control" name ="caddress" id ="caddress"></textarea></td>
<td align="right" >वर्तमान पता &nbsp; </td>
<td align="right" width="180px"><textarea class="form-control" name ="hcaddress" id ="hcaddress" ></textarea></td>
</tr>
<tr>
<tr>
<td align="right" colspan ="2" style="height:80px">Parmanent Address is Same as above <input type="checkbox" id ="padd" onclick="checkBox()"/></td>
<td align="right" > Permanent Address  &nbsp; </td>
<td align="right" width="180px"><textarea class="form-control" name ="paddress" id ="paddress" ></textarea></td>
<td align="right">स्थायी पता &nbsp; </td>
<td align="right" width="180px"><textarea class="form-control" name ="hpaddress" id ="hpaddress" ></textarea></td>
<td align="right">Salary Status &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="salarystatus" name ="salarystatus"/></td>
</tr>
<tr>
<td align="right" >Living From Year &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="number" id ="liveyear" required="required" name ="liveyear"/></td>
<td align="right">व्यवसाय &nbsp; </td>
<td align="right" width="180px"><select class="form-control" id ="occupation" name ="occupation"><%String occ = "select * from business"; rs = statement.executeQuery(occ); while(rs.next()) { %><option><%=rs.getString(3)%></option><% } %></select></td>
<td align="right">Designation &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="designation" name ="designation"/></td>
<td align="right">Salary &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="salary" name ="salary"/></td>
</tr>
<tr>
<td align="right">कार्यालय का पता &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type="text" name="hofficeaddress"  id ="hofficeaddress" onkeydown="javascript: displayKeyCode5(event);"/></td>
<td align="right">Office Address &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type="text" name="officeaddress"  id ="officeaddress"/></td>
<td align="right">Poverty Level No. &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="povertyno"  name ="povertyno"/></td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td align="right">Gas Connection &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" id ="gasconnection" name ="gasconnection"/></td>
<td align="right">Gas Consumer No. &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type ="text" name="gasCNo" id ="gasCNo"/></td>

<td align="right">गैस कनेक्शन धारक नाम &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type="text" name="hgcownername" id ="hgcownername" onkeydown="javascript: displayKeyCode6(event);"/></td>

<td align="right">Gas Connection Owner Name &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type="text" name="gcownername" id ="gcownername"/></td>
</tr>
</table>

<hr>
    
<table align="center" style="color: black" >
<tr>
<td>गवाह १ और  पता &nbsp; </td>
<td><textarea class="form-control" name ="hwitness1" id="hwitness1" required="required" onkeydown="javascript: displayKeyCode7(event);"></textarea></td>
<td>Witness 1 And Address &nbsp; </td>
<td><textarea class="form-control" name ="witness1" id="witness1" required="required"></textarea></td>
<td>गवाह २ और  पता &nbsp; </td>
<td><textarea class="form-control" name ="hwitness2" id="hwitness2" required="required" onkeydown="javascript: displayKeyCode8(event);"></textarea></td>
<td>Witness 2 And Address &nbsp; </td>
<td><textarea class="form-control" name ="witness2" id="witness2" required="required"></textarea></td>
</tr>
<tr>
<td height="50px">Email id &nbsp; </td>
<td><input class="form-control" type="text" name ="emailid" id="emailid"/></td>
<td height="50px">Mobile No &nbsp;</td>
<td><input class="form-control" type="text" name ="mobileno" id="mobileno"/></td>
<td>टिप्पणी &nbsp; </td>
<td><textarea class="form-control" name ="hremark"id="hremark" onkeypress="return AllowAlphabet2()"></textarea></td>
<td>Remark &nbsp; </td>
<td><textarea class="form-control" name  ="remark" id="remark"></textarea></td>
</tr>
<tr>
<td>Document &nbsp; </td>
<td>
<p>
    <select class="form-control"s multiple="multiple" name="documents" id="documents" size="5">
	<option >Affidavit</option>
        <option >Old Rashan Card</option>
        <option >Electric Bill</option>
        <option >Niyokta Ka Praman Patra</option>
        <option >Card Surrender Certificate</option>
	<option >Pan Card</option>
	<option >Driving License</option>
	<option >Bank Passbook</option>
	<option >UID</option>
	<option >Lok Seva Rashid</option>
	<option >Voter Card</option>
	<option >Gas Connection Card</option>
	<option >ESI Card</option>
	<option >Property Tax Receipt</option>
	<option >Death Certificate</option>
	</selects>
</p>

</td>
<td align="right" >No. of Family Member &nbsp; </td>
<td align="right" width="180px"><input class="form-control" type="text" name="fmno" id="fmno" required="required" onblur="return lookups(this.value)"/></td>

</tr>
</table >
<hr>
<table width="40%" align="center" style="color: black">
<tr>
<td> Name </td>
<td> Age </td>
<td> Gender </td>
<td> Relation </td>
</tr>
<tr>
<td> <input class="form-control" type="text" name="onename" id="onename"> </td>
<td> <input class="form-control" type="text" name="oneage" id="oneage"> </td>
<td> <select class="form-control" name="onegender" id="onegender"><option>पुरुष</option> <option>महिला</option> </select></td>
<td> <input class="form-control" type="text" name="onerelation" id="onerelation" value="स्वयं" readonly=""> </td>
</tr>
<tr>
</tr>
</table>
<div class="suggestionList" id="autoSuggestionsList">
</div>
<div>&nbsp;&nbsp;</div>
<div align="center">
<input class="btn btn-outline btn-primary" type="submit" value ="Submit"  onclick="return notify()"/>
</div>
</form>


<%connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>


<script language="javascript">
function validate()
{
 ("Registration Number is " + document.forms["myform"]["regno"].value + " !!")
 if(confirm("Confirm " + document.forms["myform"]["regno"].value))
 document.forms[0].submit();
 else
 return false; 
}
</script> 

</body>
</html>

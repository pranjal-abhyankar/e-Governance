<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
    <script src="js/jquery-1.6.1.min.js"></script>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="generator" content="Web Page Maker">
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


 <script type="text/javascript" src="http://www.google.com/jsapi">
</script>
 <script type="text/javascript">
function lookup(zone) {
if(zone.length == 0) {
$('#suggestions').hide();
} else {
$.post("DisplayWard", {queryString: ""+zone+""}, function(data){
if(data.length >0) {
$('#suggestion').show();
$('#wardname').html(data);
}
});
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

$(document).ready(function(){
   $("input#hcity").blur(function(){
      var colony=$("select#colony").val(); 
      var houseno=$("input#houseno").val();
      var buildingno=$("input#plotno").val();
      var city=$("input#city").val();
      $("textarea#address").val(houseno+" "+buildingno+" "+colony+" "+city);
   }); 
    
});
$(document).ready(function(){
   $("textarea#address").blur(function(){
      var colonyhin=$("select#hcolony").val(); 
      var housenohin=$("input#houseno").val();
      var buildingnohin=$("input#plotno").val();
      var cityhin=$("input#hcity").val();
      $("textarea#address1").val(housenohin+" "+buildingnohin+" "+colonyhin+" "+cityhin);
   }); 
    
});
</script>

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
</head>

<body>
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
   var ids = [ "hname" , "fhname1", "buildname1","address1","hcity"];
   control.makeTransliteratable(ids);
   // Show the transliteration control which can be used to toggle between
   // English and Hindi and also choose other destination language.
   control.showControl('translControl');
   }
   google.setOnLoadCallback(onLoad);
  </script>
    
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
	var textBox = getObject('fhname1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('fhname1').value;
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
     var hfhname = document.getElementById('fhname1').value;
     document.getElementById('fhname').value = fhname+hfhname.charAt((hfhname.length)-1); 
	
    }
	

 }

function displayKeyCode3(evt)
 {
	var textBox = getObject('buildname1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('buildname1').value;
    var name = document.getElementById('buildname').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('buildname').value = name.slice(0,-1);
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
   var streetno = document.getElementById('buildname').value; 
     var hstreetno = document.getElementById('buildname1').value;
     document.getElementById('buildname').value = streetno+hstreetno.charAt((hstreetno.length)-1); 
	
    }
	

 }

function displayKeyCode4(evt)
 {
	var textBox = getObject('address1');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('address1').value;
    var name = document.getElementById('address').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('address').value = name.slice(0,-1);
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
   var landmark = document.getElementById('address').value; 
     var hlandmark = document.getElementById('address1').value;
     document.getElementById('address').value = landmark+hlandmark.charAt((hlandmark.length)-1); 
	
    }
	

 }


function displayKeyCode5(evt)
 {
	var textBox = getObject('hcity');
	 var charCode = (evt.which) ? evt.which : event.keyCode
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('hcity').value;
    var name = document.getElementById('city').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('city').value = name.slice(0,-1);
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
  var city= document.getElementById('city').value; 
     var hcity = document.getElementById('hcity').value;
     document.getElementById('city').value =city+hcity.charAt((hcity.length)-1); 

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
 <%@page import="java.sql.*"%>
 <%@page import="java.util.*" %>          


    <form method="post" action="WaterRegIntermediate">
    <%
    try {
        
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
rs= statement.executeQuery(date);
while(rs.next()){
date = rs.getString(1);    
}
int uid=0;
String unique = "select max(uniqueid) from watermaster_temp ";
rs= statement.executeQuery(unique);
while(rs.next())
   {
uid = rs.getInt(1);
uid++;
}

String selzone="select zonename from zonename";

String city=null;
String cityhin=null;
String selcity="select city,cityhin from master";
    rs=statement.executeQuery(selcity);
    while(rs.next())
    {
        city=rs.getString(1);
        cityhin=rs.getString(2);
    }

%>
    <div id="table1" style="position:absolute; overflow:hidden; left:41px; top:21px; width:1046px; height:811px; z-index:0">
        <div class="wpmd">
            <div>
                
                <TABLE  style="color:black" width="100%" cellspacing="12" cellpadding="8" border=0 bordercolorlight="#C0C0C0" bordercolordark="#808080">
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Registration Date &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                    <input class="form-control" size="26" name="regdate" type="date" id="regdate" required="required" value="<%=date%>">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">  &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <!--<input class="form-control" size="26" name="prefix" value="NPP/WTR/" type="text" id="prefix" onBlur="if(this.value==''){this.value='NPP/WTR/'}">-->
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Unique Id &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                    <input class="form-control" size="26" name="uid" type="text" id="uid" value="<%=uid%>">
                            </div>
                            </div></TD>
                    </TR>
                    
                    <TR valign=top>
                       
                         
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">नाम &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="hname" type="text" id="hname" ONKEYDOWN="javascript: displayKeyCode1(event);">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Name &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" required="required" size="26" name="name" required="required" type="text" id="name">
                            </div>
                            </div>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Connection Status &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                    <select class="form-control" name="connstatus" id="connstatus" size="1">
                                     <option selected>New</option>
                                     
                                     <option>Old</option>
                                     
                                </select>
                            </div>
                            </div>
                        </TD>                        
                    </TR>
                    
                    <TR valign=top>
                        
                        
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">पिता/पति का नाम &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="fhname" type="text" id="fhname1" ONKEYDOWN="javascript: displayKeyCode2(event);">
                            </div>
                            </div>
                        </TD>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Father/Husband&nbsp; </font><font face="Arial">Name &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="fname" type="text" required="required" id="fhname">
                            </div>
                            </div>
                       
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Connection Permission Date &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="connperdate" type="date" id="connperdate" value="<%=date%>" >
                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Reconnection Permission Date &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="reconnperdate" id="reconnperdate" type="date" value="<%=date%>" >
                            </div>
                            </div>
                        </TD>                        
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Connection Size &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <select class="form-control" name="connsize" id="connsize" size="1">
                                     <option selected>SELECT SIZE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</option>
                                     <option>1/4"</option>
                                     <option>1/2"</option>
                                     <option>1"</option>                                     
                                </select>
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">टोटी संख्या &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="toti" type="text" id="toti">
                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        
                        
                         <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Water Meter Status &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                    <select class="form-control" name="meterstatus" id="meterstatus" size="1">
                                     <option selected>SELECT STATUS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</option>
                                     <option>Yes</option>
                                     <option>No</option>
                                     
                                </select>
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Connection Approved Status &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="connappstatus" type="text" value="Pending" id="connappstatus">
                            </div>
                            </div>
                        </TD>
                        
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Zone &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                    <select class="form-control" name="zone" id="zone" required="required"  onblur="lookup(this.value)">
                                        <option></option>
                                        <%
                                        rs=statement.executeQuery(selzone);
                                        while(rs.next())
                                        {
                                        %>
                                        <option><%=rs.getString("zonename")%></option>
                                        <%}%>
                                    </select>                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Ward Name &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
      <select class="form-control" name="wardname" id="wardname" onblur="lookup2(this.value)">
                                        
                                    </select>                             </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">House No. &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="houseno" type="text" id="houseno">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Building No. &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="plotno" type="text" id="plotno">
                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                          <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Colony &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
      <select class="form-control" name="colony" id="colony" onblur="lookup3(this.value)">
                                      
                                    </select>                             </div>
                            </div>
                        </TD>
                         <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">बिल्डिंग का नाम &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="hbuildname" type="text" id="buildname1" onkeydown="javascript: displayKeyCode3(event);">
                            </div>
                            </div>
                        </TD>
                      <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Building Name &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="buildname" type="text" id="buildname">
                            </div>
                            </div>
                        </TD>
                     
                    </TR>

                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">मोहल्ला &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
      <select class="form-control" name="hcolony" id="hcolony">
                                      
                                    </select>                             </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Landmark &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="landmark" type="text" id="landmark">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Street No. &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="streetno" type="text" id="streetno">
                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Street Name &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="streetname" type="text" id="streetname">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">State &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <select class="form-control" name="state" id="state">
                                     <option selected>MADHYA PRADESH</option>
               
                                </select>
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">शहर &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                         <TD width=166 height=14><div class="wpmd">
                                <div align="center">
                                     
                                    <input class="form-control" type="text" name="hcity" id="hcity" value="<%=cityhin%>"></div>
                             </div>
                            
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        <TD width=179 height=14><div class="wpmd">
                                <div align=right><font face="Arial">Address &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153 height=14><div class="wpmd">
                                <div align="center"><textarea class="form-control" name="address" id="address" ></textarea></div>
                        </div>
                            </div>
                        </TD>
                        <TD width=166 height=14><div class="wpmd">
                                <div align=right><font face="Arial">&#2346;&#2340;&#2366; &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166 height=14><div class="wpmd">
                                <div align="center"><textarea class="form-control" name="haddress" id="address1" onkeydown="javascript: displayKeyCode4(event);"></textarea></div>
                        </div>
                            </div>
                        </TD>
                        <TD width=166 height=14><div class="wpmd">
                                <div align=right><font face="Arial">Remark &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166 height=14><div class="wpmd">
                                <div align="center"><textarea class="form-control" name="remark" id="remark" ></textarea></div>
                        </div>
                            </div>
                        </TD>
                    </TR>                    
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial">Email Id &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="email" type="text" id="email">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial">Mobile No. &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="mobile" type="text" id="mobile">
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd"><div align=right><font face="Arial">Old Connection No. &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                <input class="form-control" size="26" name="oldconn" type="text" id="oldconn">
                            </div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        
                        
                        
                        <TD width=166><div class="wpmd">
                                <div align="center">
                                    
                                <input size="26" name="city" type="text" id="city" value="<%=city%>" hidden>
                            </div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                    </TR>
                    
                    <TR valign=top>
                        <TD width=179><div class="wpmd">
                                <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=153><div class="wpmd">
                                <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align="left">
                                    <input class="btn btn-outline btn-primary" size="26" type="submit" name="Submit" value="SUBMIT" onClick="return validate()">
                                </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right>
                                    <input class="btn btn-outline btn-primary" size="26" type="reset" name="reset" value="RESET"></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                        <TD width=166><div class="wpmd">
                                <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                            </div>
                        </TD>
                    </TR>
                    
                </TABLE>
            </div>
        </div>
    </div>    
    </form>
    
    

<%
connection.close();

}
catch(Exception e)
        {
    out.println(e);
}
%>    
    
</body>
</html>
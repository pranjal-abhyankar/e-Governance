<!DOCTYPE HTML>
<html>
<head>
      <%@ page language="java" import="java.sql.*" %>
      <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    <script src="js/jquery-1.6.1.min.js"></script>
    <script type="text/javascript" src="http://www.google.com/jsapi">
    </script> 

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
</head>
<body >
                    <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>
                    <%
                        String s1;
                        s1=request.getParameter("uname");
                        HttpSession session1=null;
                        session1=request.getSession(true);
                        session1.setAttribute("uname",s1);
                    %>

                    <style>
                        .shadow
{
    box-shadow: 10px 10px 10px #888888;
}
                    </style>
                     <script type="text/javascript">
   // Load the Google Transliteration API
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
   var ids = [ "partynamehin" ];
   control.makeTransliteratable(ids);
   // Show the transliteration control which can be used to toggle between
   // English and Hindi and also choose other destination language.
   control.showControl('translControl');
   
   google.setOnLoadCallback(onLoad);});
   
   function fill(thisValue) {
$('#inputString1').val(thisValue);
document.write(thisValue);

setTimeout("$('#suggestions').hide();", 200);
}
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
   var ids = [ "partynamehin","narrationhin"];
   control.makeTransliteratable(ids);
   // Show the transliteration control which can be used to toggle between
   // English and Hindi and also choose other destination language.
   control.showControl('translControl');
   }
   google.setOnLoadCallback(onLoad);
  </script>
                    <script language="javascript">
                             var prev=1;

function displayKeyCode1(evt)
 {
	var textBox = getObject('partynamehin');
	 var charCode = (evt.which) ? evt.which : event.keyCode;
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('partynamehin').value;
    var name = document.getElementById('partyname').value;
   if(prev != " ")
   {
    
    prev = hname.slice(hname.length-1);
    document.getElementById('partyname').value = name.slice(0,-1);
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
  var name = document.getElementById('partyname').value; 
     var hname = document.getElementById('partynamehin').value;
     document.getElementById('partyname').value = name+hname.charAt((hname.length)-1); 

    }
 }
  function displayKeyCode2(evt)
 {
	var textBox = getObject('narrationhin');
	 var charCode = (evt.which) ? evt.which : event.keyCode;
	// textBox.value = String.fromCharCode(charCode);

	 if (charCode == 8)
   { var hname = document.getElementById('narrationhin').value;
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
     var hwitness2 = document.getElementById('narrationhin').value;
     document.getElementById('witness2').value = witness2+hwitness2.charAt((hwitness2.length)-1); 
	
    }
	

 }
                        
                    </script>
                     <script>
      function copy()
{
    var cop = document.getElementById('partynamehin').value;
    //alert(cop);
    document.getElementById("partyname").value = cop;
    
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

  </script>

<script>
    
    
    
      var i =1;
      var j =1;
 var zone=null;
     
      
   $(document).ready(function(){
     $.post("PaymentIntermediate", {queryString: ""+zone+""}, function(data){
 $("select#tax1").html(data);
 out.print(data);
});   
   $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  }); 
  
 
  $("select#paymentmode").blur(function(){
   var temp=$(this).val();
   
      if(temp=='cheque'){
          $("tr#cheque").show(500);
          $("tr#cash").hide(500);
        }
      else if(temp=='cash'){
          $("tr#cheque").hide(500);
          $("tr#cash").show(500);}
      else if(temp=='both'){
          $("tr#cash").show(500);
          $("tr#cheque").show(1000);
      }
  });
  
  
    
   
   
var x;


    $("input#add").click(function(){
     
 $("tr#deduction"+i).after("<tr id=\"deduction"+ ++i +"\"><td width=200><div align=center><font face=\"Arial\"><select class=\"form-control\" id=\"tax"+i+"\"></select> </font> </div></td><td width=200><div align=center><input class=\"form-control\" size=\"26\" name=\"percentage"+i+"\" type=\"text\" id=\"percentage"+i+"\"></div></td><td width=200><div align=center><input  class=\"form-control\" size=\"26\" name=\"chequeno"+i+"\" type=\"text\" id=\"chequeno"+i+"\" ></div></td><td width=200><div align=\"center\"><input  class=\"form-control bank"+i+"\" id=\"bank"+i+"\" list=\"bank\"></div></td><td width=200><div align=center><input  class=\"form-control\" size=\"26\"  name=\"chequedate"+i+"\" onblur=\"deduce(this)\" type=\"date\" id=\"chequedate"+i+"\"></div></td><td width=200><div align=\"center\"><input class=\"form-control\" size=\"26\" name=\"deductedamount"+i+"\" type=\"text\" id=\"deductedamount"+i+"\" onfocus=\"sumdeduce(this)\"></div></td></tr>");
 
 //alert(i);
  $.post("PaymentIntermediate", {queryString: ""+zone+""}, function(data){
    x="select#tax"+i;
 $(x).html(data);
      //  alert(x);
});
 
});
    
    $("input#remove").click(function(){
        if(i>1)
            {
        $("tr#deduction"+i).remove();
        i--;
            }    
});

    $("input#add1").click(function(){
     
 $("tr#addition"+j).after("<tr id=\"addition"+ ++j +"\"><td width=200><div align=center><font face=\"Arial\"><input class = \"form-control\" type = \"text\" id=\"addtax"+j+"\"> </font> </div></td><td width=200><div align=center><input class = \"form-control\" size=\"26\" onblur=\"addtaxes(this);verify1(this)\" name=\"addpercentage"+j+"\" type=\"text\" id=\"addpercentage"+j+"\"></div></td><td width=200><div align=\"center\"><input class = \"form-control\" size=\"26\" name=\"addedamount"+j+"\" type=\"text\" id=\"addedamount"+j+"\" onfocus=\"sumadd(this)\"></div></td></tr>");
 //alert(i);
 
});
    
    $("input#remove1").click(function(){
        if(j>1)
            {
        $("tr#addition"+j).remove();
        j--;
            }    
});

  $("*").focus(function(){
    $(this).css("background-color","#FFFFCC");
  });
  $("*").blur(function(){
      if($(this).val()=="")
      {
          $(this).css("background-color","#ffffff");}
      else{
           $(this).css("background-color","#DCDCDA");

      }
  });
});    


</script>
<script language="javascript">
     function addtaxes(obj)
{   
    if(obj.value==""){alert("Insert Tax Percentage");}
    else{
    var no=obj.id.slice(-1);
    var total=$("input#totalamount").val();
     var amount = parseFloat(obj.value)*parseFloat(total)/100;
     var partyamount=null;
     if($("select#paymentmode").val()=="cash"){partyamount=$("input#cashamount").val();
                                                partyamount=parseFloat(partyamount)+amount;
                                                $("input#cashamount").val(partyamount);}
    if($("select#paymentmode").val()=="cheque"){partyamount=$("input#chequeamount").val();
                                                    partyamount=parseFloat(partyamount)+amount;
                                                 $("input#chequeamount").val(partyamount);}


        $("input#addedamount"+no).val(amount); }   
}

  
    
    function deduce(obj)
{   
        if(obj.value==""){alert("Insert Tax Percentage");}
else{
    var partyamount=null;
    var no=obj.id.slice(-1);
    var total=$("input#totalamount").val();
    var no = obj.id.slice(-1);
    var head = $("select#tax"+no).val();
    var per = $("#percentage"+no).val();
    var amount = parseFloat(per)*parseFloat(total)/100;
    
    $("input#deductedamount"+no).val(amount);
    var dedamt = $("#deductedamount"+no).val();
    var chequeno = $("#chequeno"+no).val();
    var partyname = $("#partyname").val();
    var through = $("#bank"+no).val();
    var acchead = $(".acchead").val();
    var voucherno = $("#paymentvoucherno").val();
    var chequedate = $("#chequedate"+no).val();
    
    if(confirm("Tax: "+head+"\n\nPercentage: "+per+"\n\nBank: "+through+"\n\nCheque No: "+chequeno+"\n\nCheque Date: "+chequedate+"\n\nDeducted Amount: "+dedamt))
{
         if($("select#paymentmode").val()=="cash"){partyamount=$("input#cashamount").val();
                                                partyamount=partyamount-amount;
                                                $("input#cashamount").val(partyamount);}
     if($("select#paymentmode").val()=="cheque"){partyamount=$("input#chequeamount").val();
                                                    partyamount=partyamount-amount;
                                                 $("input#chequeamount").val(partyamount);}
    verify2(obj);
} 


        $("input#deductedamount"+no).val(amount);    }  
}


function transfer()
{
    document.getElementById("chequeamount").value=document.getElementById("totalamount").value;
    document.getElementById("cashamount").value=document.getElementById("totalamount").value;
    
}

/*function verify(obj)
{
    var no = obj.id.slice(-1);
    var head = $("select#tax"+no).val();
    var per = $("#percentage"+no).val();
    var dedamt = $("#deductedamount"+no).val();
    var chequeno = $("#chequeno"+no).val();
    var partyname = $("#partyname").val();
    var through = $(".bank"+no).val();
    var acchead = $(".acchead").val();
    var voucherno = $("#paymentvoucherno").val();
    var chequedate = $("#chequedate"+no).val();
    
    if(confirm("Tax: "+head+"\n\nPercentage: "+per+"\n\nBank: "+through+"\n\nCheque No: "+chequeno+"\n\nCheque Date: "+chequedate+"\n\nDeducted Amount: "+dedamt))
{
    verify2(obj);
} 
}*/
function verify1(obj)
{
    var no = obj.id.slice(-1);
    var head = $("#addtax"+no).val();
    var per = $("#addpercentage"+no).val();
    var dedamt = $("#addedamount"+no).val();
    
    if(confirm("Tax: "+head+"\n\nPercentage: "+per+"\n\nAdded Amount: "+dedamt))
{
    verify4(obj);
}   
else{return false;}
    }

function verify2(obj)
{
    var no = obj.id.slice(-1);
    var head = $("select#tax"+no).val();
    var per = $("#percentage"+no).val();
    var dedamt = $("#deductedamount"+no).val();
    var chequeno = $("#chequeno"+no).val();
    var partyname = $("#partyname").val();
    var through = $("#bank"+no).val();
    var acchead = $(".acchead").val();
    var voucherno = $("#paymentvoucherno").val();
    var chequedate = $("#chequedate"+no).val();
    $.post("TaxSave", {
        head : ""+head+"",
        per : ""+per+"",
        chequeno : ""+chequeno+"",
        dedamt : ""+dedamt+"",
        partyname : ""+partyname+"",
        through : ""+through+"",
        acchead : ""+acchead+"",
        chequedate : ""+chequedate+"",
        voucherno : ""+voucherno+""
      });
    
    
}

function sumdeduce(obj){
   var sum = $("input#totaldeducted").val();
    $("input#totaldeducted").val(parseFloat(obj.value)+parseFloat(sum));
}
function sumadd(obj){
       var sum = $("input#totaladded").val();

    $("input#totaladded").val(parseFloat(obj.value)+parseFloat(sum));
}
</script>
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
String acchead=null;
String acccode=null;
String bankname=null;

String selacchead = "select code,head from accheadpay"; 


String selbankname="select bank_name from bank";

%>
  
<div class="container">
   
    <form method="post" action="Payment2" target="mainframe" name="trans"> 
    <table style=" width: 100%; color: black">    

    <tr valign=top>
            <td width=450>
                <div align=center><font face="Arial">Payment Voucher No.</font>
                </div>
            </td>
           
            <td width=950>
                <div align="center">
                    <input class = "form-control" size="40" name="paymentvoucherno" type="text" id="paymentvoucherno">
                </div>
            </td>

       <td width=400>
                <div align="center"><font face="Arial">Voucher Date</font>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><input class = "form-control" type="date" name="voucherdate" id="voucherdate">
                </div>
            </td>
            <td width="200"></td>
            <td width="400"></td>
        </tr>
        
        <tr valign=top>
            <td width=200>
                <div align=center><br>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><br>
                </div>
            </td>
             <td width=200>
                <div align=center><br>
                </div>
            </td> <td width=200>
                <div align=center><br>
                </div>
            </td><td width="200"></td>
            <td width="400"></td>
        </tr>        
        
        <tr valign=top>
            <td width=200>
                <div align=center><font face="Arial">पार्टी का नाम</font>
                </div>
            </td>
            
            <td>
                <div align="center"><input class = "form-control" size="26" type="text" name="partynamehin" ONKEYDOWN="javascript: displayKeyCode1(event);" onblur="return copy()" id="partynamehin" required>
                </div>
            </td>
            
            <td width=200>
                <div align=center><font face="Arial">Account Head</font></div>
            </td>
            
            <td width=200>
                <div align="center">
                    <input class = "form-control" list="accounthead" class="acchead" name="acchead">

<datalist id="accounthead">
    <%  
    rs = statement.executeQuery(selacchead);
    while(rs.next()){
    %>
    <option value="<%=rs.getString("head")%>-<%=rs.getString("code")%>">
  <% } %>
</datalist>
                </div>
            </td>
             <td width=200>
                <div align=center><br>
                </div>
            </td>
             <td width=200>
                <div align=center><br>
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td width=200>
               <div align=center><font face="Arial">Party Name</font>
                </div>
            </td>
            
            <td width=200>
               <div align="center"><input class = "form-control" size="26" type="text" name="partyname" id="partyname" required>
                </div>
            </td>
          <td width=200>
                <div align=center><br>
                </div>
            </td>
        </tr> 
        
       
        
        <tr valign=top>
            <td width=200>
                <div align=center><br>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><br>
                </div>
            </td> <td width=200>
                <div align=center><br>
                </div>
            </td>
        </tr> 
        
        <tr valign=top>
   
            <td width=200>
                <div align=center><font face="Arial">Total Amount </font>                </div>
            </td>
        
            <td width=200>
                <div align="center"><input class = "form-control" size="26" name="totalamount" onblur="transfer()" type="text" id="totalamount">
                </div>
            </td>
            
            <td width=200>
                <div align=center><font face="Arial">Narrations</font></div>
            </td>
            
            <td width=450>
                <div align="center"><textarea cols="50" rows="4" name="narrationhin" type="text"  id="narrationhin"></textarea>
                </div>
            </td>
      <td width=200>
                <div align=center><br>
                </div>
            </td>
        </tr>
        
        <tr valign=top>
            <td width=200>
                <div align=center><br>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><br>
                </div>
            </td>
        </tr>
        
        
         <tr valign=top>
             <td width=200>
                <div align=center><font face="Arial">Payment Mode</font>
                </div>
            </td>
            
            <td width=200>
                <div align="center">
                    <select class = "form-control" id="paymentmode" name="paymentmode">
                        <option>  </option>
                        <option> cheque </option>
                        <option> cash</option>
                        <option> both</option>
                    </select>
                </div>
            </td>
           
             <td width=200>
                <div align=center><br>
                </div>
            </td> <td width=200>
                <div align=center><br>
                </div>
            </td>
            
        </tr>
        <tr valign=top>
            <td width=200>
                <div align=center><br>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><br>
                </div>
            </td>
        </tr>
        
         <tr id="cheque" valign=top hidden="hidden">
            <td width=200>
                <div align=center><font face="Arial">Bank Name </font> </div>
            </td>
            
            <td width=200>
                <div align="center">
                    <input  class = "form-control bank" list="bank" name="chequebank">

<datalist id="bank">
    <% 
    rs = statement.executeQuery(selbankname);
    while(rs.next()){
    %>
  <option value="<%=rs.getString("bank_name")%>">
      <% } %>
</datalist>
                </div>
            </td>
            
            <td width=200>
                <div align=center><font face="Arial">Cheque No.</font></div>
            </td>
            
            <td width=400>
                <div align="center"><input class = "form-control" size="26" name="chequeno" type="text" id="chequeno">
                </div>
            </td>
            <td width=400>
                <div align=center><font face="Arial">Cheque Amount</font></div>
            </td>
            
            <td width=200>
                <div align="center"><input class = "form-control" size="26" name="chequeamount" type="text" id="chequeamount">
                </div>
            </td></tr>
         <tr id="cheque" hidden="hidden">
            <td width=200>
                <div align=center><font face="Arial">Cheque Date</font></div>
            </td>
            <td width=200>
                <div align="center"><input class = "form-control" size="26" name="chequedate" type="date" id="chequedate">
                </div>
            </td>
            
        </tr>
        <tr valign=top>
            <td width=200>
                <div align=center><br>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><br>
                </div>
            </td>
        </tr>
        <tr id="cash" valign=top hidden="hidden">
           
           
            <td width=200>
                <div align=center><font face="Arial">Cash Amount</font></div>
            </td>
            
            <td width=200>
                <div align="center"><input class = "form-control" size="26" name="cashamount" type="text" id="cashamount">
                </div>
            </td>
      <td width=200>
                <div align=center><br>
                </div>
            </td> <td width=200>
                <div align=center><br>
                </div>
            </td>
        </tr>
        
         <tr valign=top>
            <td width=200>
                <div align=right><hr>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
                <td width=200>
                <div align="center"><hr>
                </div>
            </td>
           <td width=200>
                <div align="center"><hr>
                </div>
            </td> 
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
          </tr>
        <!-- Additions -->        <!-- Additions -->        <!-- Additions -->        <!-- Additions -->

<tr>
    <th colspan="6">Additive Taxes</th>
</tr>

        <tr><td> <input class="btn btn-outline btn-primary" size="26" name="add1" type="button" id="add1" value="add">
        <input class="btn btn-outline btn-primary" size="26" name="remove1" type="button" id="remove1" value="remove"></td></tr>
      
        <tr>
            <td width=200>
                <div align=center><font face="Arial"><b>Heads</b> </font> </div>
            </td>
            
            
            <td width=200>
                <div align=center><font face="Arial"><b>%</b> </font></div>
            </td>
            
            
            <td width=200>
                <div align="center"><font face="Arial"><b>Amount Added</b> </font>
                </div>
            </td>
            
        </tr>
        
        <tr id="addition1">
            <td width=200>
                <div align=center><font face="Arial"><input class = "form-control" type="text" id="addtax1" class="addtax1"></font> </div>
            </td>
            
            
            <td width=200>
                <div align=center><input class = "form-control" size="26" name="addpercentage1" type="text" onblur="addtaxes(this);verify1(this)" id="addpercentage1" onblur="addtaxes(this)">
                   </div>
            </td>
            
            <td width=200>
                <div align="center"><input class = "form-control" size="26" type="text" id="addedamount1" onfocus="sumadd(this)">
                </div>
                <div align="center" hidden=""><input class = "form-control" size="26" type="text" id="totaladded" name="totaladded" value="0">
                </div>
            </td>
            
        </tr>
         <tr valign=top>
            <td width=200>
                <div align=right><hr>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
                <td width=200>
                <div align="center"><hr>
                </div>
            </td>
           <td width=200>
                <div align="center"><hr>
                </div>
            </td> 
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
          </tr>
        <!-- Deduction -->        <!-- Deduction -->        <!-- Deduction -->        <!-- Deduction -->

<tr>
    <th colspan="6">Deductive Taxes</th>
</tr>


        <tr><td> <input class="btn btn-outline btn-primary" size="26" name="add" type="button" id="add" value="add">
        <input class="btn btn-outline btn-primary" size="26" name="remove" type="button" id="remove" value="remove"></td></tr>
      
        <tr>
            <td width=200>
                <div align=center><font face="Arial"><b>Heads</b> </font> </div>
            </td>
            
            
            <td width=200>
                <div align=center><font face="Arial"><b>%</b> </font></div>
            </td>
            <td width=200>
                <div align=center><font face="Arial"><b>Cheque No.</b> </font></div>
            </td>
            <td width=200>
                <div align="center"><font face="Arial"><b>Through</b> </font>
                </div>
            </td>
            <td width=200>
                <div align="center">
                    <font face="Arial"><b>Cheque Date</b> </font>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><font face="Arial"><b>Amount Deducted</b> </font>
                </div>
            </td>
            
        </tr>
        
        <tr id="deduction1">
            <td width=200>
                <div align=center><font face="Arial"><select class = "form-control" id="tax1" class="tax1"></select></font> </div>
            </td>
            
            
            <td width=200>
                <div align=center><input class = "form-control" size="26" name="percentage1" type="text" id="percentage1">
                   </div>
            </td>
            <td width=200>
                 <div align=center><input class = "form-control" size="26" name="chequeno1" type="text" id="chequeno1">
                </div>
            </td>
            <td width=200>
                <div align="center"> 
                    
                    <input class = "form-control" list="bank" class="bank1" id="bank1" name="bank1">
                
                </div>
            </td>
            <td width=200>
                 <div align=center><input class = "form-control" size="26" name="chequedate1" type="date" id="chequedate1" onblur="deduce(this)">
            </td>
            
            <td width=200>
                <div align="center"><input class = "form-control" size="26" type="text" id="deductedamount1" onfocus="sumdeduce(this)">
                </div>
                <div align="center" hidden=""><input class = "form-control" size="26" type="text" id="totaldeducted" name="totaldeducted" value="0">
                </div>
            </td>
            
        </tr>
         <tr valign=top>
            <td width=200>
                <div align=right><hr>
                </div>
            </td>
            
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
                <td width=200>
                <div align="center"><hr>
                </div>
            </td>
           <td width=200>
                <div align="center"><hr>
                </div>
            </td> 
            <td width=200>
                <div align="center"><hr>
                </div>
            </td>
          </tr>
<tr>
    <td colspan="3" align="right"><input class="btn btn-outline btn-primary" type="Submit" id="submit" value="Submit">
    <td colspan="3" align="left"><input class="btn btn-outline btn-primary" type="Reset" id="reset" value="Reset">
</tr>
        </table>
    </form>
    </div>
        <%connection.close();
}
catch(Exception e)
        {
    out.print(e);
}
%>

</body>
</html>

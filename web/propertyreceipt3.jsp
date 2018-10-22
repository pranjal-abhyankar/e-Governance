<%-- 
    Document   : button1
    Created on : Sep 8, 2013, 5:12:52 PM
    Author     : Ajinkya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery1.js"></script>
        <style type="text/css" title="currentStyle">		</style>

                <link rel="stylesheet" type="text/css" href="css/demo_table.css" />

                  <%@ page language="java" import="java.sql.*" %>
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
                
                
		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		        <script src="js/jquery-1.6.1.min.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
                       <script src="js/jquery_1.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="ColReorder.js"></script>
		<script type="text/javascript" charset="utf-8" src="js/ColVis.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				var oTable;
				
				/* Add the events etc before DataTables hides a column */
				$("thead input").keyup( function () {
					/* Filter on the column (the index) of this element */
					oTable.fnFilter( this.value, oTable.oApi._fnVisibleToColumnIndex( 
						oTable.fnSettings(), $("thead input").index(this) ) );
				} );
				
				/*
				 * Support functions to provide a little bit of 'user friendlyness' to the textboxes
				 */
				$("thead input").each( function (i) {
					this.initVal = this.value;
				} );
				
				$("thead input").focus( function () {
					if ( this.className == "search_init" )
					{
						this.className = "";
						this.value = "";
					}
				} );
				
				$("thead input").blur( function (i) {
					if ( this.value == "" )
					{
						this.className = "search_init";
						this.value = this.initVal;
					}
				} );
				
				oTable = $('#example').dataTable( {
					"sDom": 'RC<"clear">lfrtip',
					"aoColumnDefs": [
						{ "bVisible": false, "aTargets": [ 2 ] }
					],
					"oLanguage": {
						"sSearch": "Search all columns:"
					},
					"bSortCellsTop": true
				} );
                                
			} );
		</script>
			
<script type="text/javascript">

(function(){
  var bsa = document.createElement('script');
     bsa.type = 'text/javascript';
     bsa.async = true;
     bsa.src = '//s3.buysellads.com/ac/bsa.js';
  (document.getElementsByTagName('head')[0]||document.getElementsByTagName('body')[0]).appendChild(bsa);
})();

</script>

		<script type="text/javascript">
$(document).ready(function(){
     $('#example').dataTable()
		  .columnFilter({
			aoColumns: [ { type: "text" },
				     { type: "text" },
				     { type: "text" },
				     { type: "text" },
				     { type: "text" },
				     { type: "text" },
                                     { type: "text" },
                                     { type: "text" }    
    
				]

		});
});


function copy()
{
    var a = this;
    alert(a);
    var reg = document.getElementById(a).value;
    //alert(reg);
}


		</script>
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-17838786-4']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

</script>

    
		
<script type="text/javascript">
function lookup(zone) {
if(zone.length == 0) {
$('#suggestions').hide();
} else {
$.post("Propertyverify", {queryString: ""+zone+""}, function(data){
if(data.length >0) {
$('#suggestion').show();
$('#ward').html(data);
  
    if(confirm(data))
        
    {
               document.getElementById("confirm").disabled=false;

    }
else
    return false;   
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
             $("input#hide").click(function(){
                    
                    $("div#container").toggle(1000);
                });
                               var ser = $("#serviceno").val();

            $("input.send").click(function(){
                    
                    var brand2=$(this).text(); 
             alert(brand2);
                    $("input#serviceno").val(""+ser+""+brand2+"");
                    
                });
    
    
                });
                


</script>
    <script language="javascript">
function enable()
{
       document.getElementById("date").disabled=false;
       document.getElementById("payment").disabled=false;
       document.getElementById("remarks").disabled=false;
       document.getElementById("propertybal").disabled=false;
       document.getElementById("propertycurrent").disabled=false;
       document.getElementById("consolidatecurrent").disabled=false;
       document.getElementById("consolidatebal").disabled=false;
       document.getElementById("educationcurrent").disabled=false;
       document.getElementById("educationbal").disabled=false;
       document.getElementById("urbancurrent").disabled=false;
       document.getElementById("urbanbal").disabled=false;
       document.getElementById("othercurrent").disabled=false;
       document.getElementById("otherbal").disabled=false;
       document.getElementById("surchargecurrent").disabled=false;
       document.getElementById("surchargebal").disabled=false;

}
</script> 

    </head>
    <body>
 <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
          <%@page import="javax.servlet.*"%>
<%
String s1;
HttpSession session1;
session1=request.getSession();
  String receiptdate = session1.getAttribute("receiptdate").toString();
  String bookno = session1.getAttribute("bookno").toString();
  String receiptno =session1.getAttribute("receiptno").toString();
  String zone =session1.getAttribute("zone").toString();
  String zones = null;
  try 
{
      
         HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
Statement statement = null; 
ResultSet rs = null; 
ResultSet rs1 = null;
statement = connection.createStatement();
String prefix = "Select * from zonename where zonename = '"+zone+"'";
rs = statement.executeQuery(prefix);
while(rs.next()){ prefix=rs.getString(2);}
  zones = prefix.substring(0,prefix.indexOf("/"));

%>
       <center>                   
           <form name="form" target="mainframe" action="Propertyreceipt4" method="post">
<table>
            <td><font color="black">Service No</font></td>
            <td><input class="form-control" type="text" name="serviceno" id="serviceno" value="<%=prefix%>" onblur="return lookup(this.value);">
            <td><img id="myImage" width="25px" height="25px">
                <input class="btn btn-outline btn-primary" type="button" name="confirm" id="confirm" value="Confirm" disabled onclick="changeSrc();enable();"></td>  
            <td><font color="black">
            Book No---  <font color="black">  <%out.print(bookno);
  %></font>
  <td><font color="black">
            Receipt No---  <font color="black">  <%out.print(receiptno);
  %></font>
                  
             
              <tr>
                  
          
                      

                      <td><font color="black">Receipt date</font></td><td><input class="form-control" type="date" name="date" id="date" disabled value="<%=receiptdate%>">
                      <td><input type="text" name="service" disabled id="service" hidden=""></td>
              </tr>
               <tr>
                   <td><font color="black">Payment Mode</font></td><td><select class="form-control" name="payment" disabled id="payment"><option>Cash</option><option>Cheque</option></select></td>
                   <td><font color="black">Remarks</font></td><td><input class="form-control" type="text" name="remarks" disabled id="remarks">
                      <td></td>
</tr>
          
    <tr>
        <td></td><td><font color="black">&nbsp;</font></td><td><font color="black">&nbsp;</font></td>
        </font>
    </tr>
    <tr>
        <td></td><td><font color="black">Balance</font></td><td><font color="black">Current</font></td>
        </font>
    </tr>
              <tr>
                  <td><font color="black">Property Tax</font></td>
                  <td><input class="form-control" type="text"  value="0" disabled onblur="return sum()"  name="propertybal" id="propertybal"></td>
                  <td><input class="form-control" type="text"  value="0" disabled onblur="return sum()" name="propertycurrent" id="propertycurrent"></td>
                  <td></td>
              </tr>
              <tr>
                  <td><font color="black">Consolidate Tax</font></td><td><input class="form-control" type="text" disabled value="0" onblur="return sum()"  name="consolidatebal" id="consolidatebal"></td>
                  <td><input class="form-control" type="text" value="0" disabled onblur="return sum()"  name="consolidatecurrent" id="consolidatecurrent"></td>
              </tr>
              <tr>
                  <td><font color="black">Education Tax</font></td><td><input class="form-control" type="text" disabled value="0" onblur="return sum()"  name="educationbal" id="educationbal"></td>
                  <td><input class="form-control" type="text" value="0" disabled onblur="return sum()"  name="educationcurrent" id="educationcurrent"></td>
              </tr>
              <tr>
                  <td><font color="black">Urban Development Tax</font></td><td><input class="form-control" type="text" disabled value="0" onblur="return sum()"  name="urbanbal" id="urbanbal"></td>
                  <td><input class="form-control" type="text" value="0" disabled onblur="return sum()"  name="urbancurrent" id="urbancurrent"></td>
              </tr>
               <tr>
                  <td><font color="black">Others</font></td><td><input class="form-control" type="text" disabled value="0" onblur="return sum()"  name="otherbal" id="otherbal"></td>
                  <td><input class="form-control" type="text" value="0" disabled onblur="return sum()"  name="othercurrent" id="othercurrent"></td>
              </tr>
               <tr>
                  <td><font color="black">Surcharge</font></td><td><input class="form-control" type="text" disabled value="0" onblur="return sum()"  name="surchargebal" id="surchargebal"></td>
                  <td><input class="form-control" type="text"  disabled value="0" onblur="return sum()"  name="surchargecurrent" id="surchargecurrent"></td>
                  <td><font color="black"><div align="right">Total</div></font></td>

                  <td><input class="form-control" type="text" name="surchargetotal" id="surchargetotal" readonly=""></td>
              </tr>
    <tr>
        <td></td><td><font color="black">&nbsp;</font></td><td><font color="black">&nbsp;</font></td>
        </font>
    </tr>
             
              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit" onclick="return validate()"></td>
    <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
    

</tr>
          </table>
                      </form>


       
       </center>
        <script language="javascript">
            function getvalue()
            {
                       var serviceno = document.getElementById('serviceno').value;
                       document.getElementById('service').value = serviceno;

            }
            
            
        </script>
            <script language="javascript">
                function sum() {
       var propertybal = document.getElementById('propertybal').value;
       var propertycurrent = document.getElementById('propertycurrent').value;
       if (propertybal == "")
           propertybal = 0;
       if (propertycurrent == "")
           propertycurrent = 0;
       var consolidatebal = document.getElementById('consolidatebal').value;
       var consolidatecurrent = document.getElementById('consolidatecurrent').value;
       if (consolidatebal == "")
           consolidatebal = 0;
       if (consolidatecurrent == "")
           consolidatecurrent = 0;
       var educationbal = document.getElementById('educationbal').value;
       var educationcurrent = document.getElementById('educationcurrent').value;
       if (educationbal == "")
           educationbal = 0;
       if (educationcurrent == "")
           educationcurrent = 0;
       var urbanbal = document.getElementById('urbanbal').value;
       var urbancurrent = document.getElementById('urbancurrent').value;
       if (urbanbal == "")
           urbanbal = 0;
       if (urbancurrent == "")
           urbancurrent = 0;
       var otherbal = document.getElementById('otherbal').value;
       var othercurrent = document.getElementById('othercurrent').value;
       if (otherbal == "")
           otherbal = 0;
       if (othercurrent == "")
           othercurrent = 0;
       var surchargebal = document.getElementById('surchargebal').value;
       var surchargecurrent = document.getElementById('surchargecurrent').value;
       if (surchargebal == "")
           surchargebal = 0;
       if (surchargecurrent == "")
           surchargecurrent = 0;

       var result = parseInt(surchargebal) + parseInt(surchargecurrent) + parseInt(propertybal) + parseInt(propertycurrent) + parseInt(consolidatebal) + parseInt(consolidatecurrent) + parseInt(educationbal) + parseInt(educationcurrent) + parseInt(urbanbal) + parseInt(urbancurrent) + parseInt(otherbal) + parseInt(othercurrent);
       if (!isNaN(result)) {
           document.getElementById('surchargetotal').value = result;
       }
                }
      
            </script>
            <script>
function changeSrc()
  {
  document.getElementById("myImage").src="images/right.png";
  }
</script>

    <script language="javascript">
function validate()
{
  if(confirm("Receipt of " + document.forms["form"]["surchargetotal"].value + " amount submitted succesfully!!"))
      {
          form.submit();
      }
  else
          {
              return false;
          }
       
}
</script> 
<%


statement.close(); 
connection.close();  
  }
catch (Exception ex) 
{ 
%> 
<font size="+3" color="red"></b> </font>
<% 
 out.print(ex);
} 
%> 


		
	    <div id="container" style=" color: dodgerblue; " hidden="hidden">
			<div id="demo">
                          <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
                        <th><font color ="black">Service No</font></th>
			<th><font color ="black"></font></th>
			<th><font color ="black">Ward</font></th>
			<th><font color ="black">Owner</font></th>
			<th><font color ="black"></font></th>
			<th><font color ="black">Father/Husband</font></th>
			<th><font color ="black"></font></th>
			<th><font color ="black">House No</font></th>
			<th><font color ="black">Address</font></th>
		</tr>
                <tr>
                    <td><input class="form-control" type="text" size="12" name="search_engine" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="4" name="search_browser" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="2" name="search_platform" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="12" name="search_version" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="12" name="search_grade" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="12" name="search_browser" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="12" name="search_platform" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="4" name="search_version" value="" class="search_init" /></td>
                    <td><input class="form-control" type="text" size="12" name="search_grade" value="" class="search_init" /></td>
		</tr>
	</thead>
       	<tbody>
		
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


ResultSet rs = null;

Statement statement = connection.createStatement();
String prefix = "Select * from zonename where zonename = '"+zone+"'";
rs = statement.executeQuery(prefix);
while(rs.next()){ prefix=rs.getString(2);}


 String sql = ("SELECT * FROM property where prefix like '"+zones+"%'");
 out.print(sql);
rs = statement.executeQuery(sql);
int reg;
while(rs.next())
       {
%>  
<tr>
    <td width ="3%"><%=rs.getString(8)%><input class="form-control" type="text" name="reg" id="<%=rs.getString("regno")%>" class="send" value="<%=rs.getString("regno")%>"></td>
    <td width ="1%" id="<%=rs.getString("regno")%>" class="send"><%=rs.getString("regno")%></td>
                        <td width ="3%" align="center"><%=rs.getString(4)%></td>
			<td width ="5%"><%=rs.getString(5)%></td>
			<td width ="5%"><%=rs.getString(6)%></td>
			<td width ="5%"><%=rs.getString("father")%></td>
			<td width ="5%"><%=rs.getString("fatherhin")%></td>
			<td width ="1%"><%=rs.getString("house_no")%></td>
			<td width ="7%"><%=rs.getString("address")%></td>
		</tr>

<%

 }

rs.close();
connection.close();
}
catch(Exception e)
        {
out.print(e);
}
%>		</tbody>
 

                          </table>		</div>
                </div>	




    </body>
</html>

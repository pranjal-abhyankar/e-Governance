<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		
		<link rel="shortcut icon" type="image/ico" href="http://www.sprymedia.co.uk/media/images/favicon.ico" />
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
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<%@page contentType="text/html; charset = utf-8" language = "java" %> 
		<style type="text/css" title="currentStyle">		</style>

                <link rel="stylesheet" type="text/css" href="css/demo_table.css" />

		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
                         <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>
                    <%@page import="javax.servlet.*"%>
                       <script src="js/jquery_1.js" type="text/javascript"></script>

		<script type="text/javascript">
$(document).ready(function(){
     $('#example').dataTable()
		  .columnFilter({
			aoColumns: [ { type: "text" },
				     { type: "text" },
				     { type: "text" },
				     { type: "text" },
				     { type: "text" }
				     
				]

		});
});

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

    
		<script type="text/javascript" charset="utf-8">
			/* Global var for counter */
			var giCount = 1;
			
			$(document).ready(function() {
				$('#example').dataTable();
			} );
			
			function fnClickAddRow() {
				$('#example').dataTable().fnAddData( [
					giCount+".1",
					giCount+".2",
					giCount+".3",
					giCount+".4" ] );
				
				giCount++;
			}
		</script>
	</head>
	<body id="dt_example">
		<div id="container">
			<div id="demo">
                          <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
                        <th><font color ="white">Receipt Date</font></th>
			<th><font color ="white">Zone</font></th>
			<th><font color ="white">Receipt No</font></th>
			<th><font color ="white">Service No</font></th>
			<th><font color ="white">Remarks</font></th>
                        <th><font color ="white">Amount</font></th>
		</tr>
	</thead>
        <tfoot>
		<tr>

			<th></th>
			<th></th>
			<th></th>
                        <th></th>
			<th></th>
			<th></th>
		</tr>
	</tfoot>
	<tbody>
	
                    <%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%String s1;
HttpSession session1;
session1=request.getSession();
s1=session1.getAttribute("uname").toString();
%>
	
                <%
   String zone = null;             
try
               {
HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();  
    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String z = "select zone from temp1water_"+s1+"";
rs = statement.executeQuery(z);
while(rs.next())
       {zone = rs.getString(1);}

{
         {
 String sql = ("SELECT * FROM receiptwater_"+s1+"");
rs = statement.executeQuery(sql);
while(rs.next())
       {
%>

  
<tr>
			<td width ="3%"><%=rs.getString(1)%></td>
			<td width ="10%"><%=rs.getString(2)%></td>
                        <td width ="1%"><%=rs.getString(4)%></td>
			<td width ="7%"><%=rs.getString(5)%></td>
			<td width ="10%"><%=rs.getString("remarks")%></td>
			<td width ="10%"><%=rs.getString("total")%></td>
		</tr>

<%

} }
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" type="image/ico" href="http://www.sprymedia.co.uk/media/images/favicon.ico" />
		
<title>&#2344;&#2327;&#2352; &#2346;&#2366;&#2354;&#2367;&#2325;&#2366; &#2346;&#2368;&#2341;&#2350;&#2346;&#2369;&#2352;&nbsp;</title>
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
            <div id="container" style=" color: dodgerblue; ">
			<div id="demo">
                          <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
                        <th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white"></font></th>
		</tr>
                <tr>
                    <td><input type="text" size="12" name="search_engine" value="" class="search_init" /></td>
                    <td><input type="text" size="4" name="search_browser" value="" class="search_init" /></td>
                    <td><input type="text" size="2" name="search_platform" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_version" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_grade" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_browser" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_platform" value="" class="search_init" /></td>
                    <td><input type="text" size="4" name="search_version" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_grade" value="" class="search_init" /></td>
		</tr>
	</thead>
       	<tbody>
		
                <%String s1;
HttpSession session1;
session1=request.getSession();
s1=session1.getAttribute("uname").toString();

   String zone = null;             
String prefix = null;
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
{
         {
 String sql = ("SELECT * FROM watermaster_temp where connectionstatus='Reject' order by uniqueId");
rs = statement.executeQuery(sql);
int reg;
while(rs.next())
       {
reg = Integer.parseInt(rs.getString(3));
prefix = rs.getString(2);
%>  
<tr>
			<td width ="3%"><%=prefix%></td>
			<td width ="1%"><%=reg%></td>
                        <td width ="3%" align="center"><%=rs.getString(4)%></td>
			<td width ="5%"><%=rs.getString("name")%></td>
			<td width ="5%"><%=rs.getString("namehin")%></td>
			<td width ="5%"><%=rs.getString("father")%></td>
			<td width ="5%"><%=rs.getString("fatherhin")%></td>
			<td width ="1%"><%=rs.getString("house_no")%></td>
                        <td width ="7%"><input type="submit" class="approve" id="<%=reg%>" onclick="return click()"></td>
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
<script language="javascript">
$('.approve').click(function(){
        var selected_btn_id = this.id;
        window.location.assign("waterapproval.jsp")     
        // your remaing code goes here
})</script>
	</body>
</html>
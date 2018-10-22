<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

    <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<head>
<meta http-equiv=Content-Type content="text/html; charset=utf8">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 15">
<link rel=File-List
href="Birth%20Death%20Certificate%20New%202013%20Formate_files/filelist.xml">
</style>
		<style type="text/css" title="currentStyle">		</style>

                <link rel="stylesheet" type="text/css" href="css/demo_table.css" />

		<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
                    <%@ page import = "java.sql.*" %>
                    <%@page import="java.util.*"%>

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
                        <th><font color ="white">Service No</font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white">Ward</font></th>
			<th><font color ="white">Owner</font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white">Father/Husband</font></th>
			<th><font color ="white"></font></th>
			<th><font color ="white">House No</font></th>
			<th><font color ="white">Address</font></th>
		</tr>
 <tr>
                    <td><input type="text" size="2" name="search_engine" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_browser" value="" class="search_init" /></td>
                    <td><input type="text" size="12" name="search_platform" value="" class="search_init" /></td>
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
  String zone=null;
  String prefix=null;
%>	
                <%
   try
               {

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aalogin_pithampur" , "aalogin_npp" , "Ajk110292");


ResultSet rs = null;

Statement statement = connection.createStatement();
String z = "select zone from temp1_"+s1+"";
rs = statement.executeQuery(z);
while(rs.next())
       {zone = rs.getString(1);}

{
         {
 String sql = ("SELECT * FROM watermaster order by regNo");
rs = statement.executeQuery(sql);
int reg;
while(rs.next())
       {
prefix = rs.getString("prefix");
%>  
<tr>
			<td width ="1%"><%=rs.getString("regNo")%></td>
			<td width ="3%"><%=rs.getString("name")%></td>
			<td width ="5%"><%=rs.getString(6)%></td>
                        <td width ="3%"><%=rs.getString("namehin")%></td>
			<td width ="5%"><%=rs.getString(7)%></td>
			<td width ="5%"><%=rs.getString("father")%></td>
			<td width ="5%"><%=rs.getString("fatherhin")%></td>
			<td width ="1%"><%=rs.getString("addresshin")%></td>
			<td width ="7%"><%=rs.getString("oldconnection")%></td>
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
 

                          </table>
                        </div>
                </div>	
	</body>
</html>
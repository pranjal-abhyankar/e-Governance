<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%


String type=request.getParameter("one");
String zonename=request.getParameter("two");

try 
{
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   String zone_pre=null;
                   int regno=0;
                   

String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+""); 
Statement statement = con.createStatement();
ResultSet rs= null;


String zonepre="select prefix_pro from zonename where zonename='"+zonename+"'";
rs=statement.executeQuery(zonepre);
while(rs.next())
{
    zone_pre=rs.getString(1);
}

if(type.equalsIgnoreCase("Commercial"))
{
type=("COM");
}
if(type.equalsIgnoreCase("Residential"))
{
type=("RASI");
}

String temp=(zone_pre+""+type);

HttpSession propertysession = request.getSession();
propertysession.setAttribute("prefix", temp);


String sql = "SELECT max(regno) FROM property WHERE prefix = '"+temp+"'";
rs=statement.executeQuery(sql); 

//out.print("<select name = \"zone\" id=\"zone\"  onblur=\"lookup2(this.value);\">");
while (rs.next ()){
    regno=rs.getInt(1);
    regno+=1;
}
out.print(regno);
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
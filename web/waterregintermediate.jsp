<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.*" %>     
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<meta http-equiv="content-type" content="text/html; charset=utf-8">


 <%
    request.setCharacterEncoding("UTF-8");

  %>
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



String regdate= request.getParameter("regdate");   
String uid= request.getParameter("uid");   
String hname= request.getParameter("hname");
String name= request.getParameter("name");
String connstatus= request.getParameter("connstatus");
String meterstatus= request.getParameter("meterstatus");
String connappstatus= request.getParameter("connappstatus");
String connperdate= request.getParameter("connperdate");
String reconnperdate= request.getParameter("reconnperdate");
String connsize= request.getParameter("connsize");
String toti= request.getParameter("toti");
String fhname= request.getParameter("fhname");
String fname= request.getParameter("fname");
String zone= request.getParameter("zone");
String wardname= request.getParameter("wardname");
String houseno= request.getParameter("houseno");
String plotno= request.getParameter("plotno");
String buildno= request.getParameter("buildno");
String buildname= request.getParameter("buildname");
String hbuildname= request.getParameter("hbuildname");
String colony= request.getParameter("colony");
String landmark= request.getParameter("landmark");
String streetno= request.getParameter("streetno");
String streetname= request.getParameter("streetname");
String state= request.getParameter("state");
String city= request.getParameter("city");
String haddress= request.getParameter("haddress");
String address= request.getParameter("address");
String remark= request.getParameter("remark");
String email= request.getParameter("email");
String mobile= request.getParameter("mobile");
String oldconn= request.getParameter("oldconn");
String prefix = null;

String selpre="select prefix_water from zonename where zonename='"+zone+"'";
rs=statement.executeQuery(selpre);
while(rs.next())
{prefix=rs.getString(1);}

//session.setAttribute("registrationnumber", registrationnumber);
//session.setAttribute("prefix", prefix);

 if(hname!=null)
{     
String sql = "Insert into watermaster_temp (prefix, namehin, fatherhin, oldconnectionno, addresshin,regdate,connectionapprovalstatus,connectionstatus,name,remark,houseno,father,colony,wardname,reconnectionpermissiondate,buildingno,streetname,address,emailid,connectionsize,buildingname,state,landmark,mobileno,connectionpermissiondate,nooftaps,zone,plotno,streetno,city,watermeterstatus,uniqueid,hindibuildingname) values ('"+prefix+"','"+hname+"' , '"+fhname+"' , '"+oldconn+"' , '"+haddress+"', '"+regdate+"', '"+connappstatus+"', '"+connstatus+"', '"+name+"', '"+remark+"', '"+houseno+"', '"+fname+"', '"+colony+"', '"+wardname+"', '"+reconnperdate+"', '"+buildno+"', '"+streetname+"', '"+address+"', '"+email+"', '"+connsize+"', '"+buildname+"', '"+state+"', '"+landmark+"', '"+mobile+"', '"+connperdate+"', '"+toti+"', '"+zone+"', '"+plotno+"', '"+streetno+"', '"+city+"', '"+meterstatus+"','"+uid+"','"+hbuildname+"')";
    // String sql = "INSERT INTO watermaster_temp (namehin,fatherhin,oldconnectionno,addresshin,regdate,connectionapprovalstaus,connectionstatus,name,remark,houseno,father,colony,wardname,reconnectionpermissiondate,buldingno,streetname,address,emailid,connectionsize,buildingname,state,landmark,mobileno,connectionpermissiondate,nooftaps,zone,plotno,streetno,city,watermeterstatus,uniqueid,hindibuildingname) 
//VALUES ('"+hname+"','"+fhname+"','"+oldconn+"' '"+haddress+"', '"+regdate+"', '"+connappstatus+"', '"+connstatus+"', '"+name+"', '"+remark+"', '"+houseno+"', '"+fname+"', '"+colony+"', '"+wardname+"', '"+reconnperdate+"', '"+buildno+"', '"+streetname+"', '"+address+"', '"+email+"', '"+connsize+"', '"+buildname+"', '"+state+"', '"+landmark+"', '"+mobile+"', '"+connperdate+"', '"+toti+"', '"+zone+"', '"+plotno+"', '"+streetno+"', '"+city+"', '"+meterstatus+"','"+uid+"','"+hbuildname+"')";
statement.executeUpdate(sql);
}

}
catch(Exception e)
{
 //   out.print(e);
}
    response.sendRedirect("waterreg.jsp");
%>

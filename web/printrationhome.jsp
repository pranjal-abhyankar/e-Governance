<!DOCTYPE Html>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<head>
       <%@page import="javax.servlet.*"%>
     <%@page import ="java.sql.*"%>
          <%@page import ="java.util.*"%>
    <%
     try 
{
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   String title=nagarpalika.getAttribute("title").toString();
                  
Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
Statement statement = connection.createStatement();
ResultSet rs = null; 
String sql="select zonename from zonename";

 %>
<title><%=title%></title>
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

</head>

<body>

     <form name="form" target="_blank" action="RationSession" method="post">
    
    <table>
             
                  
          
                      
              <tr>
                  <td width="30%"><font color="black">Print Ration Card</font></td>
                  <td><select class="form-control" name="zone" id="zone">
                          <%rs=statement.executeQuery(sql);
                            while(rs.next())
                                {
%>
                          <option><%=rs.getString(1)%></option>
                          <%}%>
                      </select></td>
                                  <td><input class="form-control" type="text" name="regno" id="regno"></td>

              </tr>
             <tr><td>&nbsp;</td></tr>
              <tr>
                  <td> <input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset"></td>
              </tr>
                      

          </table>
    </form>

<%

statement.close(); 
connection.close();
} 
catch (Exception ex) 
{ 
    out.print(ex);
}
%> 
</body>
</html>
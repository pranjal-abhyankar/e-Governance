<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
    
     <%@ page language="java" import="java.sql.*" %>
<%
HttpSession nagarpalika=request.getSession();
String title=nagarpalika.getAttribute("title").toString();
String database=nagarpalika.getAttribute("database").toString();
String username=nagarpalika.getAttribute("username").toString();
String password=nagarpalika.getAttribute("password").toString();


 Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");

ResultSet rs = null;

Statement statement = connection.createStatement();
 String zone="select zonename from zonename";
           
%>
<title><%=title%></title>
</head>

<body>
    <form action="rationcardedit1.jsp" method="post" target="mainframe">
      
    <table>
              <tr>
                  <td width="30%"><font color="black">Edit Ration Card <br><br> Enter Registration Number</font></td>
                 
                  <td><br><select class="form-control"  name="zone" id="zone">
                          <%
                          rs=statement.executeQuery(zone);
                          while(rs.next())
                          {
                          %>
                          <option><%=rs.getString("zonename")%></option>
                         <%}%>
                      </select></td>
                   
                  <td><br><input class="form-control"  type="text" name="regno" id="regno"></td>
                
              </tr>
              <tr><td>&nbsp;</td></tr>
              <tr>
                  <td><input class="btn btn-outline btn-primary" type="submit" name="Submit" value="Submit"></td>
                  <td><input class="btn btn-outline btn-primary" type="reset" name="Reset" value="Reset">   </td>
              </tr>
                      
          </table>
    </form>
    
        <iframe name="select" id="select" width="100%" height="720px" scrolling="yes" style="left: -100px;"></iframe>

</body>
</html>

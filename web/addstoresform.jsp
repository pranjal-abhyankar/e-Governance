<%@ page language="java" import="java.sql.*" %>

<% response.setContentType("text/html");%>
<%

HttpSession nagarpalika = request.getSession();
String username=nagarpalika.getAttribute("username").toString();   
String password=nagarpalika.getAttribute("password").toString();   
String database=nagarpalika.getAttribute("database").toString();   
String emp_name=nagarpalika.getAttribute("emp_name").toString(); 


 String cat_id=request.getParameter("cat_id");
 String item_id=request.getParameter("item_id");
 String brand_id=request.getParameter("brand_id");
//String category_id = str.substring(0, str.indexOf("."));
try {
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+""); 
//Add the data into the database
String sql1 = "SELECT category_name FROM category where category_id="+cat_id+"";
String sql2 = "SELECT item_name FROM item where item_id="+item_id+"";
String sql3 = "SELECT brand_name,quantity,unit FROM brand where brand_id="+brand_id+"";
Statement stm = con.createStatement();
ResultSet rs = null;
rs = stm.executeQuery(sql1);
while(rs.next()){out.println("<td><input readonly type=\"text\"  value=\""+rs.getString(1)+"\"></td>");
}
rs = stm.executeQuery(sql2);
while(rs.next()){out.println("<td><input readonly type=\"text\"  value=\""+rs.getString(1)+"\"></td>");
}
rs = stm.executeQuery(sql3);
while(rs.next()){out.println("<td><input readonly type=\"text\"  value=\""+rs.getString(1)+"\"></td><td><input readonly type=\"text\"  value=\""+rs.getString(2)+"\"></td><td><input readonly type=\"text\"  value=\""+rs.getString(3)+"\"></td>");
}
//out.print("<select name = \"zone\" id=\"zone\"  onblur=\"lookup2(this.value);\">");
//out.print("<div class=\"mp-level\"><h2 class=\"icon icon-world\">Item</h2><ul><li><a class=\"icon1\">Add Item</a></li></ul></div>");
//out.print("</select>");
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
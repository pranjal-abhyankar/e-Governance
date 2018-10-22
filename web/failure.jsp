<%@page import="java.io.InputStream"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <%@page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>!sorry invalid user</h1>
<%
try {  
Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur", "root", "root");

ResultSet rs = null;
     request.setCharacterEncoding("UTF-8");

Statement statement = connection.createStatement();
                rs = statement.executeQuery("select * from abc");  
                String imgLen = "";  
                while (rs.next()) {  
                    imgLen = rs.getString(2);  
                    int len = imgLen.length();  
                    byte[] rb = new byte[len];  
                    InputStream readImg = rs.getBinaryStream(2);  
                    int index = readImg.read(rb, 0, len);  
  
                    response.reset();  
                    response.setContentType("image/jpg");  
                    response.getOutputStream().write(rb, 0, len);  
                    response.getOutputStream().flush();  
                }  
                statement.close();  
  
                //  response.getContentType();  
            } catch (Exception e) {  
                System.out.println("Error" + e);  
            }  

%>
</body>
</html>
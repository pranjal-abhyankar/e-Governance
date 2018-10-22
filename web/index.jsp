<%-- 
    Document   : index
    Created on : Aug 27, 2014, 4:03:03 AM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
        HttpSession count = request.getSession();
        count.setAttribute("count", 1);
        response.sendRedirect("login.jsp");

%></h1>
    </body>
</html>

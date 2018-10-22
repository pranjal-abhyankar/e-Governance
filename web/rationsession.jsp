<%-- 
    Document   : rationsession
    Created on : Jul 25, 2014, 3:50:06 PM
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
<%
String regno = request.getParameter("regno");
String zone = request.getParameter("zone");
    HttpSession ration = request.getSession();
    ration.setAttribute("regno", regno);
    ration.setAttribute("zone", zone);
    response.sendRedirect("printration.jsp");
%>
    </body>
</html>

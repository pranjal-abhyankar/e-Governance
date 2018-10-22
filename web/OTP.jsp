<%-- 
    Document   : OTP
    Created on : Sep 18, 2014, 2:08:45 PM
    Author     : Nivedita
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
//Your authentication key
String authkey = "72321A4k9x2z9Gaed541aabd7";
//Multiple mobiles numbers separated by comma
String mobiles = "7828003533";
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "TMAJK1";
//Your message to send, Add URL encoding here.
String message = "Test message";
//define route
String route="4";

//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;

//encoding message 
String encoded_message=URLEncoder.encode(message);

//Send SMS API
String mainUrl="http://control.msg91.com/sendhttp.php?";

//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey); 
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);

//final string
mainUrl = sbPostData.toString();
try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //reading response
    String res=null;
    while ((res = reader.readLine()) != null) 
    //print response 
    out.println(res);
    
    //finally close connection
    reader.close();
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 

%> 
    </body>
</html>

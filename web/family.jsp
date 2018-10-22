<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
int total = Integer.parseInt(str);
try {
    
    HttpSession nagarpalika=request.getSession();
    String database=nagarpalika.getAttribute("database").toString();
    String username=nagarpalika.getAttribute("username").toString();
    String password=nagarpalika.getAttribute("password").toString();
    String emp_name=nagarpalika.getAttribute("emp_name").toString();
String connectionURL = "jdbc:mysql://";
Connection con;
Class.forName("com.mysql.jdbc.Driver");
// Get a Connection to the database
con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+""); 
 
out.print("<script type=\"text/javascript\" src=\"http://www.google.com/jsapi\"></script> ");

out.print("<script type=\"text/javascript\">google.load(\"elements\", \"1\", {packages: \"transliteration\"});function onLoad() {var options = {sourceLanguage: google.elements.transliteration.LanguageCode.ENGLISH,destinationLanguage: [google.elements.transliteration.LanguageCode.HINDI],shortcutKey: 'ctrl+g',transliterationEnabled: true};var control = new google.elements.transliteration.TransliterationControl(options);var ids = [ \"hwitness1\" , \"hwitness2\" , \"name1\" , \"name2\" , \"name3\" , \"name4\" , \"name5\" , \"name6\" , \"name7\" , \"name8\" , \"name9\" , \"name10\" , \"name11\" , \"name12\" , \"name13\" , \"name14\" , \"name15\"];control.makeTransliteratable(ids);control.showControl('translControl');}google.setOnLoadCallback(onLoad);</script> ");
out.print("<table width=\"40%\" align=\"center\">");
for(int i=1;i<=total-1;i++)
{
    out.print("<tr><td> <input class=\"form-control\" type=\"text\" name=\"name"+i+"\" id=\"name"+i+"\"> </td><td> <input class=\"form-control\" type=\"text\" name=\"age"+i+"\" id=\"age"+i+"\"> </td><td> <select class=\"form-control\" name=\"gender"+i+"\" id=\"gender"+i+"\"><option>पुरुष</option> <option>महिला</option> </select></td><td> <select class=\"form-control\" name=\"relation"+i+"\" id=\"relation"+i+"\"><option>पत्नी</option><option>पिता</option><option>माता</option><option>पुत्र</option><option>पुत्री</option><option>भाई</option><option>बहन</option><option>चाचा</option><option>चाची</option><option>बहु</option><option>भांजा</option><option>भांजी</option><option>भतीजा</option><option>भतीजी</option><option>पोता</option><option>पोती</option><option>भाभी</option><option>दादा</option><option>दादी</option><option>पति</option><option>फुफा</option><option>फुफी</option><option>ससुर</option><option>सास</option><option>जीजा</option><option>साला</option><option>दामाद</option><option>नाती</option><option>नातिन</option><option>मामा</option><option>मामी</option><option>नाना</option><option>नानी</option><option>साली</option><option>पडोसी</option><option>चेला</option><option>परपोती</option><option>देवर </option><option>देवरानी </option></select> </td><tr>");

}
out.print("</table>");

}
catch(Exception e){
out.println("Exception is ;"+e);
}
%>
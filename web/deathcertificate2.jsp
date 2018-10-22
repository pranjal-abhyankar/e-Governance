  <%@ page import = "java.sql.*" %>
           
<%@ page import = "java.util.*" %>

<%
try
               {
request.setCharacterEncoding("UTF-8");
String prefix= request.getParameter("prefix");
String registrationnumber= request.getParameter("registrationnumber");
String registrationdate= request.getParameter("registrationdate");
String deathdate= request.getParameter("deathdate");
String age= request.getParameter("age");
String name= request.getParameter("name");
String name1= request.getParameter("name1");
String fatherhusbandname= request.getParameter("fatherhusbandname");
String fatherhusbandname1= request.getParameter("fatherhusbandname1");
String address= request.getParameter("address");
String address1= request.getParameter("address1");
String informerdetail= request.getParameter("informerdetail");
String informerdetail1= request.getParameter("informerdetail1");
String gender= request.getParameter("gender");
String gender1= request.getParameter("gender1");
String agestatus= request.getParameter("agestatus");
String agestatus1= request.getParameter("agestatus1");
String deathplace= request.getParameter("deathplace");
String deathplace1= request.getParameter("deathplace1");
String deathplaceaddress= request.getParameter("deathplaceaddress");
String deathplaceaddress1= request.getParameter("deathplaceaddress1");
String familyreligion= request.getParameter("familyreligion");
String familyreligion1= request.getParameter("familyreligion1");
String occupation= request.getParameter("occupation");
String occupation1= request.getParameter("occupation1");
String medicaltreatment= request.getParameter("medicaltreatment");
String medicaltreatment1= request.getParameter("medicaltreatment1");
String deathreason= request.getParameter("deathreason");
String deathreason1= request.getParameter("deathreason1");
String mobilenumber= request.getParameter("mobilenumber");
String emailid= request.getParameter("emailid");
String informeddate= request.getParameter("informeddate");

String informerrelation= request.getParameter("informerrelation");
String informerrelation1= request.getParameter("informerrelation1");
String city= request.getParameter("city");
String city1= request.getParameter("city1");
String state= request.getParameter("state");
String state1= request.getParameter("state1");
String wardname= request.getParameter("wardname");
String wardname1= request.getParameter("wardname1");
String mothername= request.getParameter("mothername");
String mothername1= request.getParameter("mothername1");
String registrar= request.getParameter("registrar");
String remark= request.getParameter("remark");
String dor = request.getParameter("registrationdate");;
String d = null;
String m = null;
String y = null;
    d = dor.substring(0, dor.indexOf('-'));
    m = dor.substring(dor.indexOf('-'), dor.lastIndexOf('-'));
    if(m.equalsIgnoreCase("-Jan")){m="-01";}
    if(m.equalsIgnoreCase("-Feb")){m="-02";}
    if(m.equalsIgnoreCase("-Mar")){m="-03";}
    if(m.equalsIgnoreCase("-Apr")){m="-04";}
    if(m.equalsIgnoreCase("-May")){m="-05";}
    if(m.equalsIgnoreCase("-Jun")){m="-06";}
    if(m.equalsIgnoreCase("-Jul")){m="-07";}
    if(m.equalsIgnoreCase("-Aug")){m="-08";}
    if(m.equalsIgnoreCase("-Sep")){m="-09";}
    if(m.equalsIgnoreCase("-Oct")){m="-10";}
    if(m.equalsIgnoreCase("-Nov")){m="-11";}
    if(m.equalsIgnoreCase("-Dec")){m="-12";}
    y = dor.substring(dor.lastIndexOf('-'));
    registrationdate = (d+m+y);
    
String doi= request.getParameter("informeddate");
    d = doi.substring(0, doi.indexOf('-'));
    m = doi.substring(doi.indexOf('-'), doi.lastIndexOf('-'));
    y = doi.substring(doi.lastIndexOf('-'));
    informeddate = (d+m+y);
    
    String dod= request.getParameter("deathdate");
    d = dod.substring(0, dod.indexOf('-'));
    m = dod.substring(dod.indexOf('-'), dod.lastIndexOf('-'));
    y = dod.substring(dod.lastIndexOf('-'));
    deathdate = (d+m+y);
    

    Class.forName("com.mysql.jdbc.Driver");
    
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/pithampur?useUnicode=true&characterEncoding=UTF-8", "root", "root");

//ResultSet rs = null;

Statement statement = connection.createStatement();

if(prefix!=null&&registrationnumber!=null)

{
String query = "set names utf8";
 statement.execute(query); 
{      
 String sql = "INSERT INTO deathcertificate (prefix, registrationno, registrationdate, deathdate, age, name, namehindi, fatherhusbandname, fatherhusbandnamehindi, address, addresshindi, informerdetail, informerdetailhindi, gender, genderhindi, agestatus, agestatushindi, deathplace, deathplacehindi, placename, placenamehindi, familyreligion, familyreligionhindi, occupation, occupationhindi, medicaltreatmentbeforedeath, medicaltreatmentbeforedeathhindi, deathreasonbydr, deathreasonbydrhindi, mobileno, emailid, informeddate, informerrelation, informerrelationhindi, city, cityhindi, state, statehindi, wardname, wardnamehindi, registrar, remark, mothername, mothernamehindi) VALUES ('"+prefix+"', '"+registrationnumber+"', '"+registrationdate+"', '"+deathdate+"', '"+age+"', '"+name+"', '"+name1+"', '"+fatherhusbandname+"', '"+fatherhusbandname1+"', '"+address+"', '"+address1+"', '"+informerdetail+"', '"+informerdetail1+"', '"+gender+"', '"+gender1+"', '"+agestatus+"', '"+agestatus1+"', '"+deathplace+"', '"+deathplace1+"', '"+deathplaceaddress+"', '"+deathplaceaddress1+"', '"+familyreligion+"', '"+familyreligion1+"', '"+occupation+"', '"+occupation1+"', '"+medicaltreatment+"', '"+medicaltreatment1+"', '"+deathreason+"', '"+deathreason1+"', '"+mobilenumber+"', '"+emailid+"', '"+informeddate+"', '"+informerrelation+"', '"+informerrelation1+"', '"+city+"', '"+city1+"', '"+state+"', '"+state1+"', '"+wardname+"', '"+wardname1+"', '"+registrar+"', '"+remark+"', '"+mothername+"', '"+mothername1+"')";
statement.executeUpdate(sql);
}
}
//rs.close();
connection.close();
}
catch(Exception e)
        {
    out.println(e);
}
response.sendRedirect("deathcertificate1.jsp");
%> 
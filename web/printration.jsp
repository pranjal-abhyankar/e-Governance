<%-- 
    Document   : printration
    Created on : Jul 30, 2014, 9:16:00 AM
    Author     : Nivedita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style> 
            div#border {
                border: 2px solid #000;
                padding: 0px 10px 20px 10px; 
                width: 300px;
                border-radius: 0px;
                margin-left: 82px;
                } 
           
        </style>
        <title>Ration Card Print</title>
        <%@page import ="java.sql.*"%>
        <%@page import ="java.util.*"%>
    </head>
    <body>
        <%
            HttpSession ration = request.getSession();
            String regno = ration.getAttribute("regno").toString();
            String zone = ration.getAttribute("zone").toString();
            
              try 
                {
                    
                     HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   
                    
                Class.forName("com.mysql.jdbc.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");
                Statement statement = null; 
                ResultSet rs = null; 
                statement = connection.createStatement();
                String query = "set names utf8";
                statement.execute(query);
                String currentdate = null;
                String d = null;
                String m = null;
                String y = null;
                String shopward = null;
                int male = 0;
                int female = 0;
                String maleno = "select count(gender) from rccandform2 where regNo = '"+regno+"' and zone = '"+zone+"' and gender = 'पुरुष'";
                //out.print(maleno);
                rs = statement.executeQuery(maleno);
                while(rs.next()){male = rs.getInt(1);//out.print(male);
                
                }
                String femaleno = "select count(gender) from rccandform2 where regNo = '"+regno+"' and zone = '"+zone+"' and gender = 'महिला'";
                //out.print(femaleno);
                rs = statement.executeQuery(femaleno);
                while(rs.next()){female = rs.getInt(1);//out.print(female);
                }
                String shopname=null;
                String shopadd = null;
                String ward = "select wardNo from rccandform1 where regNo = '"+regno+"' and zone = '"+zone+"'";
                rs = statement.executeQuery(ward);
                while(rs.next())
                    {shopward = rs.getString(1);}
                
                String shops = "select * from shops where LicenseNo = '"+shopward+"'";
                rs=statement.executeQuery(shops);
                while(rs.next())
                {
                    shopname = rs.getString(2);
                    shopadd = rs.getString(4);
                            
                }
                
                String dates = "select curdate()";
                rs = statement.executeQuery(dates);
                while(rs.next())
                {
                    currentdate=rs.getString(1);
                }
                y = currentdate.substring(0, currentdate.indexOf('-'));
                m = currentdate.substring(currentdate.indexOf('-'), currentdate.lastIndexOf('-'));
                d = currentdate.substring(currentdate.lastIndexOf('-')+1);
                currentdate = (d+m+"-"+y);
                 
                String zonepre =null; 
                String selzone="select prefix_rat from zonename where zonename='"+zone+"'";
                rs=statement.executeQuery(selzone);
                while(rs.next())
                {
                   zonepre=rs.getString(1); 
                }
                
                
                String family = null;
                String name = null;
                String father = null;
                String wards= null;
                String previous = "Select * from rccandform1 where regNo = '"+regno+"' and zone = '"+zone+"'";
                //out.print(previous);
                rs = statement.executeQuery(previous);
               
                while(rs.next()){
                    family = rs.getString("fmNo");
                    name = rs.getString("hcandname");
                    father = rs.getString("hfname");
                    wards= rs.getString("wardNo");

    
%>

        <div id="border" style="height: 67%; width: 85%">
            <div style=" padding-top: 3%; font-size: 15pt"><center><b>खाद्य नागरिक आपूर्ति एवं उपभोक्ता सरंक्षण विभाग<br>परिवार पत्र</b></center></div>
            <div style=" font-size: 13pt"><center><b>( म.प्र.फ़ूडस्टफ्स डिस्ट्रीब्युशन कंट्रोल आर्डर 1960 के अंतर्गत जारी किया गया)</b></center></div>
                <br>
         
            <div style="display:table;width:100%;">
                <div style="display:table-row">
                    <div style="display:table-cell;width:50%"><b>वार्ड क्रमांक : <%=wards%></b></div>
                    <div align="right" style="display:table-cell;width:50%"><b>खाता क्रमांक : <%=zonepre%></b></div>
                </div>
            </div>
            <div align="right" style="width:100%"><b>दिनांक :  <%=currentdate%></b></div>
   
            <div style=" font-size: 11pt;">
                1. परिवार के मुखिया का पूरा नाम : <%=rs.getString("hcandname")%></b><br><br>&nbsp;&nbsp;&nbsp;पिता या पति का नाम &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%=rs.getString("hfname")%></b>
            </div>
            <br>
            <div style=" font-size: 11pt;">
                2. वार्ड क्रमांक : <%=wards%></b>   घर क्रमांक : <%=rs.getString("houseNo")%> </b>     मोहल्ला :  <%=rs.getString("hcolony")%></b>  
            </div>
            <br><div style=" font-size: 11pt;">
                3. वर्तमान पता : <%=rs.getString("hcaddress")%></b><br><br>&nbsp;&nbsp;&nbsp;विकास खंड : नालछा</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;तहसील : धार</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;जिला : धार</b>
            </div>
            <br><div style=" font-size: 11pt;">
                4. गरीबी रेखा सर्वे सूची क्रमांक 2007(बीपीएल सर्वेक्षण 2002-2003)में क्रमांक :वार्ड क्रमांक : <%=wards%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                5. व्यवसाय : <%=rs.getString("occupation")%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;मासिक आय 
            </div>
            <br><div style=" font-size: 11pt;">
                6. कार्यस्थल का पता : <%=rs.getString("hoaddress")%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                7. गैस कनेक्शनधारी का नाम : <%=rs.getString("hgconame")%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;उपभोक्ता क्रमांक : <%=rs.getString("gasconsumerNo")%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                8. परिवार के सदस्यों की कुल संख्या : <%=rs.getString("fmno")%></b>&nbsp;&nbsp;पुरुष : <%=male%></b>&nbsp;&nbsp;महिला : <%=female%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                9. शा.उ.मुल्य दुकान क्रमांक : <%=shopname%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                10. दुकान का नाम व पता : <%=shopname+" "+shopadd%></b>
            </div>
            <br><div style=" font-size: 11pt;">
                11. हस्ताक्षर मुखिया : 
            </div>
            <br><div style=" font-size: 11pt;">
                12. हस्ताक्षर दुकानदार : 
            </div>
            <br>
            <br>
            <br>
            <div style="display:table;width:100%;">
                <div style="display:table-row">
                    <div style="display:table-cell;width:50%">राशनकार्ड तेयार करने वाले का <br>नाम व हस्ताक्षर</b></div>
                    <div align="right" style="display:table-cell;width:50%">जारी करने वाले अधिकृत अधिकारी</b></div>
                </div>
            </div>

        </div>
           <% } %>
        <br><br><br><br><br><br><br><br><br><br>
        <div id="border" style="height: 67%; width: 85%">
            <div style=" padding-top: 6%; font-size: 15pt"><center> परिवार में सम्मिलित सदस्यों का विवरण</b></center></div>
                <br>
             
                <center> <div id="border" style="height: 100px; width: 100px"></div></center>
            <br>
            <div>
                <table border="1" style="width: 100%;border: #000; border-spacing: 0">
                    <tr><th style="width: 10%">क्रमांक</th><th style="width: 40%">नाम</th><th style="width: 10%">उम्र</th><th style="width: 40%">मुखिया से सदस्य का रिश्ता</th></tr>
                    <%
                    
                    String family1 = "select * from rccandform2 where regNo = '"+regno+"' and zone = '"+zone+"'";
                    rs = statement.executeQuery(family1);
                    int i =0;
                    while(rs.next())
                    {
                    %>
                    <tr>
                        <td><center><%= ++i%></center></td>
                        <td><%=rs.getString("name")%></td>
                        <td><center><%=rs.getString("age")%></center></td>
                        <td><center><%=rs.getString("reletion")%></center></td>
                    </tr>
                    <% } %>
                    
                </table>
            </div>
            <br>
            <div style=" font-size: 11pt;">
                कुल : <%=family%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                पुरुष : <%=male%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;महिला : <%=female%>
            </div>
            <br>
            <div style=" font-size: 11pt;">
               <center>घोषणा पत्र </b></center>
            </div>
            <br>
            <div style=" font-size: 11pt;">
                मै <%=name%> पिता/पति <%=father%> घोषणा करता / करती हूँ कि उपर दर्शाये गये व्यक्ति मेरे साथ ही सम्मिलित परिवार में रहते है इनमे से किसी भी व्यक्ति का किसी भी परिवार-पत्र राशन कार्ड में कहीँ भी दर्ज नहीं है | मै इसके लिए पुर्णरूपेण जिम्मेदार हूँ |</b>
          
            </div>
            <br><br><br><br>
            <div align="right">मुखिया के हस्ताक्षर</div>
                         <% }
               catch(Exception ex)
                    {out.print(ex);}%>
           
        </div>
    </body>
</html>
<%-- 
    Document   : printvoucher
    Created on : 6 Sep, 2014, 4:09:20 PM
    Author     : axiom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<style> 
            .border {
               border-style: solid;
               border-width:1px;
                } 
             #border{
                border: 2px solid #000;
                padding: 0px 10px 20px 10px; 
                width: 300px;
                border-radius: 0px;
                margin-left: 82px;
                }
            
        </style>        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@page import ="java.sql.*"%>
        <%@page import ="java.util.*"%>
    </head>
    <body>
        <%
           /* String s1;
            HttpSession session1;
            session1=request.getSession();
            s1=session1.getAttribute("uname").toString();
            String voucherno = request.getParameter("voucher_no");
          */
            
              try 
                {
                   HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();
                   String voucherno = request.getParameter("voucher_no");
                   
/* Create string of connection url within specified format with machinename, port number and database name. Here machine name id mysql3000.mochahost.com and database name is mydb. */ 
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");                Statement statement = null; 
                ResultSet rs = null; 
                statement = connection.createStatement();
                String query = "set names utf8";
                statement.execute(query);
                String voucher_no = null;
                String cheque_no = null;
                String voucher_date = null;
                String narration = null;
                String partyname = null;
                String ActualAmount=null;
                String d = null;
                String m = null;
                String y = null;
                String cityhin=null;
               
                String query1 = "select * from payment where voucherno = '"+voucherno+"'";
                String info = "select cityhin from master";
                rs=statement.executeQuery(info);
                while(rs.next())
                {
                   cityhin=rs.getString("cityhin");   // obtaining city name to be printed on voucher
    //cmo=rs.getString("cmo");
    // cmohin=rs.getString("cmohin");
                }       
                //out.print(maleno);
                rs = statement.executeQuery(query1);
                while(rs.next())
                {
                 partyname=rs.getString("partyname");
                 cheque_no = rs.getString("chequeno");
                 voucher_no = rs.getString("voucherno");
                 voucher_date=rs.getString("voucherdate");
                 narration=rs.getString("narration");
                 ActualAmount=rs.getString("actualamount");
               }
                int y1=voucher_date.indexOf('-');
                y = voucher_date.substring(0, voucher_date.indexOf('-'));
                m = voucher_date.substring(y1+1, voucher_date.lastIndexOf('-'));
                d = voucher_date.substring(voucher_date.lastIndexOf('-')+1);
                voucher_date=(d+"-"+m+"-"+y);
                                  
        

    
%>
            <table width="100%">
                <tr>
                    <td align="left" width="10%"><b>बजट शीर्ष</b></td>
                    <td>...............</td>
                    
                    <td align="right"><b>प्रारूप 62(नियम 81 को टिप)</b></td>
                </tr>        
            </table>
            <div width="100%" style="font-size: 15pt">
                <center><h1>कार्यालय नगर पालिका परिषद्, <%=cityhin%></h1></center><!-- City Name     -->
            </div>
            <table>
                <tr>
                    <td align="left" style="display:table-cell;width:10%"></td>
                    <td align="right"><b>जमा : .............</b></td>
                </tr>
                <tr>
                    <td align="left" width="10%"><b>व्हाउचर क्रमांक :<%=voucher_no%> </b></td>
 
                    <td width="20%" style="text-align: center" align="center"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[....................... :</b></td>
                </tr>
                <tr>
                    <td align="left" style="display:table-cell;width:10%"></td>
                    <td align="right"> <div style="display:table-cell;width:100%"><b>खर्च : .............</b></div></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td ><B> व्.दि. : </b></td>
                    <td style="text-align:left"><%=d%></td>
                    <td ><b> माह : </b></td>
                    <td style="text-align:left"><%=m%></td>
                    <td><b> सन् : </b></td>
                    <td style="text-align:left"><%=y%></td>
                </tr>
            </table>
            <table style="padding-left:15%">
                <tr>
                    <td style="text-align: right"> प्रति, <%=partyname%></td>
                </tr>
            </table><br>
            
    <div width="100%">
   
        <table class="border" style="float:left;width:80%" >
            <tr align="center">
                <td><b>किये गए कार्य या बिक्री किये गए माल का विवरण</b></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <table class="border" style="float:right;width:20%;">
        <tr>
            <td colspan="2"><b><center>रकम</center></b></td>
        </tr>
        <tr>
            <th>&nbsp; रूपये &nbsp;</th>
            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; पैसे  &nbsp;</th> 
        </tr>
        </table>
   </div>
   <div>     
        <div class="border "style="float:left;width:79.7%;height:140px;">
            <div align="center">
                <%=narration%>
            </div >
        </div>
        
       <div class="border" style="float:right;width:19.5%;height:140px;">
       <div>&nbsp;</div>
       <div>&nbsp;</div>
      </div>
   </div>   
  <div>&nbsp;</div>
  <div align="center"><b> कटोत्रा </b></div>
            <table table border="1" style="width: 100%;border: #000; border-spacing: 0">
                <tr>
                    <th> विभाग </th>
                    <th> बैंक </th>
                    <th> चेक क्र. </th>
                    <th> राशि </th>
                </tr>
                <!--
                Sql atatements goes here
                
                
                
                -->
                <%   String query2 =("select * from tax where voucherno = '"+voucherno+"'");
                 rs = statement.executeQuery(query2);
                 String ded_cheque_no =null;
                 String ded_cheque_bank=null;
                 String ded_tax_amount=null;
                 String ded_taxtype=null;
                    while(rs.next())
                {
                 ded_taxtype = rs.getString("taxtype");       
                 ded_cheque_no = rs.getString("chequeno");
                 ded_cheque_bank=rs.getString("chequebank");
                 ded_tax_amount=rs.getString("taxamount");
                %>
                <tr>
                    <th> <%=ded_taxtype%> </th>
                    <th> <%=ded_cheque_bank%> </th>
                    <th> <%=ded_cheque_no%></th>
                    <th> <%=ded_tax_amount%></th>
                </tr>
              <% } %>  
                 
                <!--
                --->
                
            </table> 
    <div>&nbsp;</div>
            <div width=100% align="left">
                योग&nbsp;<%=ActualAmount%> &nbsp;शब्दों में....
            </div>
     <div>&nbsp;</div>
            <div width=100% align="right" style="padding-right:20% ">
                 लेखापाल 
            </div>
     <div>
          &nbsp;
          &nbsp;
     </div>
     <div>
          &nbsp;
          &nbsp;
     </div>
     <div width=100% align="right" style="padding-right:5% ">
         अध्यक्ष/मुख्य नगर पालिका अधिकारी
     </div>
     
     <h1><center>रसीद</center></h1>
     <div width="100%">सदर व्हाउचर के रूपये &nbsp;<%=ActualAmount%> &nbsp;शब्दों में....................................................................................</div>
     <div width="100%">.............................नगदी/चेक नं &nbsp; &nbsp; <%=cheque_no%>  &nbsp; &nbsp;दिनांक &nbsp; &nbsp;<%=voucher_date%> &nbsp; &nbsp; के द्वारा प्राप्त हुए |</div>
     <div width="100%" >5000 रू. से अधिक होने पर | रसीद टिकिट लगाया जावें |</div>  
     <div align="right"  style="height:50px;width:20px ;border: 1px solid #000;padding-right:10%;margin-left:70%"></div>
     <div align="right" style="padding-right: 20%">हस्ताक्षर</div>
    <% }catch(Exception ex)
              {
                   out.print(ex);
              }%>
    </body>
</html>
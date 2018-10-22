<!DOCTYPE HTML>
<html>
<title>Outward</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
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
    <%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>

<meta name="generator" content="Web Page Maker">
<script language="JavaScript" src="js/htmlDatePicker.js" type="text/javascript"></script>
<link href="css/htmlDatePicker.css" rel="stylesheet" />

 <script src="js/jquery-1.6.1.min.js"></script>
</head>

<body>

    <form method="post" action="outward.jsp" name="trans">
        
         
            
             
                
                 
    <%
try
               {
                   
                     HttpSession nagarpalika=request.getSession();
                   String database=nagarpalika.getAttribute("database").toString();
                   String username=nagarpalika.getAttribute("username").toString();
                   String password=nagarpalika.getAttribute("password").toString();
                   String emp_name=nagarpalika.getAttribute("emp_name").toString();

    Class.forName("com.mysql.jdbc.Driver");

Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/"+database+"", ""+username+"", ""+password+"");


ResultSet rs = null;

Statement statement = connection.createStatement();
String regno = null;
String outwardprefix=null;

{
 String sql = ("SELECT max(outwardno) FROM outward");
rs = statement.executeQuery(sql);
while(rs.next())
       {
regno = rs.getString(1);
}
 }
int a = Integer.parseInt(regno);
int c = a+1;

String outwardpre="select outwardprefix from master";
rs=statement.executeQuery(outwardpre);
while(rs.next())
{outwardprefix=rs.getString(1);}

String zonename="select zonename from zonename";

%>
                    <script>
   $(document).ready(function(){
  $("*").focus(function(){
    $(this).css("background-color","lightblue");
  });
  $("*").blur(function(){
    $(this).css("background-color","#ffffff");
  });
});    


</script>
    <TABLE  style="width: 100%; color: black; vertical-align:middle"> 
                        
                        <TR>
                            <TD align="center" width=179> 
                                      <font face="Arial">Outward Type</font>  
                                  
                            </TD>
                            <TD align="left" width=153> 
                                     
                                        <input class="form-control"name="outtype" type="text" id="outtype" value="Outward" size="26">
                                      
                                  
                            </TD>
                            <TD align="center" width=166> 
                                      <font face="Arial">Outward Date</font>  
                                  
                            </TD>
                            <TD width=166> 
                                     
                                        <input class="form-control"type="date" name="outdate" id="outdate">
                                      
                                  
                            </TD>
                            <TD align="center" width=166> 
                                      <font face="Arial">Prefix </font>  
                                  
                            </TD>
                            <TD width=166> 
                                     
                                <input class="form-control"size="26" name="prefix" type="text" id="prefix" value="<%=outwardprefix%>">
                                      
                                  
                            </TD>
                        </TR>
                        
                       <tr> 
                            <TD align="center" width=179> 
                                      <font face="Arial">Outward No.</font>  
                                  
                            </TD>
                            <TD width=153> 
                                     
                                        <input class="form-control"size="26" name="outno" type="text" id="outno">
                                      
                                  
                            </TD>
                            <TD align="center" width=166> 
                                      <font face="Arial">Zone<BR></font>  
                                  
                            </TD>
                            <TD width=166> 
                                      
                                      <select class="form-control"name="zone" id="zone">
                                          <%
                                          rs=statement.executeQuery(zonename);
                                          while(rs.next())
                                          {
                                          %>
                                          <option><%=rs.getString("zonename")%></option>
                                      <%}%>
                                      </select>
                                      
                                  
                            </TD>
                            
                        </TR>
                        
                       <tr> 
                          <TD align="center"> 
                              <font face="Arial">Department</font>  
                            </TD>
                          <TD> 
                             
                              <select class="form-control"name="dep1" id="dep1">
                               <option selected="selected">नगर पालिका</option>
                                <option>लेखा</option>
                                <option>लेखा सहायक</option>
                                <option>स्थापना</option>
                                <option>राजस्व</option>
                                <option>गोदाम</option>
                                <option>आवक/जावक</option>
                                <option>जन्म/मृत्यु</option>
                                <option>विवाह</option>
                                <option>जल</option>
                                <option>पेंशन</option>
                                <option>राशन कार्ड</option>
                                <option>आभियांत्रिकी</option>
                                <option>प्रशासन</option>
                                <option>व्यवस्थापक</option>
                                <option>वरिष्ठ ऑपरेटर</option>
                                <option>जूनियर ऑपरेटर</option>
                                <option>इ गवर्नेस</option>
                                <option>सफाई विभाग</option>
                                <option>झोन प्रभारी</option>
                              </select>
                              
                            </TD>
                          <TD align="center"> 
                              <font face="Arial">Status</font>  
                            </TD>
                          <TD> 
                             
                              <select class="form-control"name="status1" id="status1">
                                <option>Hold</option>
                                <option>Approved</option>
                                <option>Closed</option>
                                <option>Permitted</option>
                                <option>Reject</option>
                                <option>Suspend</option>
                              </select>
                              
                            </TD>
                          <TD align="center"> 
                              <font face="Arial">File Type</font>  
                            </TD>
                          <TD> 
                             
                              <input class="form-control"name="filetype1" type="text" id="filetype1" value="NA" size="26">
                              
                            </TD>
                        </TR>
                        
                       <tr> 
                            <TD width=179>&nbsp;</TD>
                            <TD width=153>&nbsp;</TD>
                            <TD width=166> 
                                       
                                  
                            </TD>
                            <TD width=166>&nbsp;</TD>
                            <TD width=166>&nbsp;</TD>
                            <TD width=166> 
                                       
                                  
                            </TD>
                        </TR>
               
                       <tr> 
                            <TD align="center" width=179> 
                                      <font face="Arial">File Date</font>  
                                  
                            </TD>
                            <TD width=153> 
                                     
<input class="form-control"type="date" name="filedate" id="filedate">                                      
                                  
                            </TD>
                            <TD align="center" width=166> 
                                      <font face="Arial">File No.</font>  
                                  
                            </TD>
                            <TD width=166> 
                                     
                                        <input class="form-control"size="26" name="fileno" type="text" id="fileno">
                                      
                                  
                            </TD><TD width=120><div>
                                    <div align=right><font face="Arial">Letter No. &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=120><div>
                                    <div align="center">
                                      <input class="form-control" size="26" name="letterno" type="text" id="letterno">
                                    </div>
                                </div>
                            </TD>
                            
                        </TR>
                       <tr> 
                          <TD align="center"> 
                              <font face="Arial">Outward Final Date</font>  
                            </TD>
                          <TD> 
                                     
<input class="form-control"type="date" name="infdate" id="infdate">                                      
                                  
                          <TD align="center"> 
                              <font face="Arial">Enclose Copy No.</font>  
                            </TD>
                          <TD> 
                             
                              <input class="form-control"size="26" name="copyno" type="text" id="copyno">
                              
                            </TD>
                          <TD align="center"> 
                              <font face="Arial">Remark</font>  
                            </TD>
                          <TD>
                             
                              <textarea class="form-control" name="remark" id="remark" ></textarea>
                              
                            </TD>
                        </TR>
               
                       <TR valign=top>
                            <TD width=179><div>
                                    <div align=right><font face="Arial">पत्र संधर्ब &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=153><div>
                                    <div align="center"><textarea class="form-control"  name="lref1" id="lref1" onkeypress="return AllowAlphabet1()"></textarea></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial">
                                      <textarea class="form-control"  name="lref" id="lref" ></textarea>
                                    <BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD><div>
                              <div align=right><font face="Arial">पत्र विषय &nbsp;&nbsp;</font></div>
                            </div></TD>
                            <TD><div>
                              <div align="center">
                                <textarea class="form-control"  name="lsub1" id="lsub1"  onkeypress="return AllowAlphabet2()"></textarea>
                              </div>
                            </div></TD>
                            <TD><div>
                              <div><font face="Arial">
                                <textarea class="form-control"  name="lsub" id="lsub" ></textarea>
                                <BR>
                               &nbsp;&nbsp;</font></div>
                            </div></TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179>&nbsp;</TD>
                            <TD width=153>&nbsp;</TD>
                            <TD width=166>&nbsp;</TD>
                            <TD width=166><div>
                                    <div align=right></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div align="center"></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179><div>
                                    <div align=right><font face="Arial"> पत्र प्राप्त करने वाले का नाम, विभाग &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=153><div>
                                    <div align="center"><textarea class="form-control"  name="to1" id="to1" onkeypress="return AllowAlphabet3()" ></textarea></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial">
                                      <textarea class="form-control"  name="to" id="to" ></textarea>
                                    <BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD><div>
                              <div align=right><font face="Arial">पत्र भेजने वाले का नाम, विभाग &nbsp;&nbsp;</font></div>
                            </div></TD>
                            <TD><div>
                              <div align="center">
                                <textarea class="form-control"  name="by1" id="by1" onkeypress="return AllowAlphabet4()" ></textarea>
                              </div>
                            </div></TD>
                            <TD><div>
                              <div><font face="Arial">
                                <textarea class="form-control"  name="by" id="by" ></textarea>
                                <BR>
                               &nbsp;&nbsp;</font></div>
                            </div></TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179>&nbsp;</TD>
                            <TD width=153>&nbsp;</TD>
                            <TD width=166>&nbsp;</TD>
                            <TD width=166><div>
                                    <div align=right></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div align="center"></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179 height=14><div>
                                    <div align=right><font face="Arial">पत्र प्राप्त करने वाले का पता  &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=153 height=14><div>
                                    <div align="center"><textarea class="form-control"  name="receiver1" id="receiver1" onkeypress="return AllowAlphabet5()" ></textarea></div>
                                </div>
                            </TD>
                            <TD width=166 height=14><div>
                                    <div><font face="Arial">
                                      <textarea class="form-control"  name="receiver" id="receiver" ></textarea>
                                    <BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=179><div>
                                                     <div align=right><font face="Arial">वर्णन परिबद्ध</font></div>
                                </div>
                            </TD>
                            <TD width=153><div>
                                    <div align="center"><textarea class="form-control"  name="des1" id="des1" onkeypress="return AllowAlphabet6()" ></textarea></div>
                                </div>
                            </TD>
                            <TD width=166 height=14><div>
                                    <div><font face="Arial">
                                      <textarea class="form-control"  name="des" id="des" ></textarea>
                                    <BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=153><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                           <TD width=166><div>
                                   <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                               </div>
                           </TD>
                        </TR>
                        
                        <TR valign=top>
                            <TD width=179><div>
                                    <div align=right><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=153><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div align="center">
                                        <input class="form-control" size="26" type="submit" name="Submit" value="SUBMIT" onClick="return validate()">
                                    </div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div align=right><input class="form-control" size="26" type="reset" name="reset" value="RESET"></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                            <TD width=166><div>
                                    <div><font face="Arial"><BR> &nbsp;&nbsp;</font></div>
                                </div>
                            </TD>
                        </TR>

                        
                    </TABLE>
                    
                  
              
          
        
    </form>

       <%@ page import = "java.sql.*" %>
           

 
<%@ page import = "java.util.*" %>         
 
<%@ page import = "java.sql.*" %>
<%
               {
request.setCharacterEncoding("UTF-8");
String outtype= request.getParameter("outtype");   
String outdate= request.getParameter("outdate");
String prefix= request.getParameter("prefix");
String outno= request.getParameter("outno");
String zone= request.getParameter("zone");
String ward= request.getParameter("ward");
String dep1= request.getParameter("dep1");
String status1= request.getParameter("status1");
String filetype1= request.getParameter("filetype1");
String filedate= request.getParameter("filedate");
String fileno= request.getParameter("fileno");
String letterno= request.getParameter("letterno");
String lref= request.getParameter("lref");
String lref1= request.getParameter("lref1");
String lsub= request.getParameter("lsub");
String lsub1= request.getParameter("lsub1");
String to= request.getParameter("to");
String to1= request.getParameter("to1");
String by= request.getParameter("by");
String by1= request.getParameter("by1");
String receiver= request.getParameter("receiver");
String receiver1= request.getParameter("receiver1");
String infdate= request.getParameter("infdate");
String copyno= request.getParameter("copyno");
String remark= request.getParameter("remark");
String des= request.getParameter("des");
String des1= request.getParameter("des1");

//session.setAttribute("registrationnumber", registrationnumber);
//session.setAttribute("prefix", prefix);

    

if(outdate!=null&&prefix!=null&&outno!=null)

{
 
{      
 String sql = "INSERT INTO outward (Outwardtype, Outwarddate, prefix, Outwardno, zone, ward, department1, status1, filetype1, filedate, fileno, letterno, letterreference, letterreference1, lettersubject, lettersubject1, sendreceiveto, sendreceiveto1, sendreceiveby, sendreceiveby1, receiveraddress, receiveraddress1, Outwardfinaldate, enclosecopyno, remark, enclosedescription, enclosedescription1) VALUES ('"+outtype+"', '"+outdate+"', '"+prefix+"', '"+outno+"', '"+zone+"',  '"+ward+"',   '"+dep1+"',  '"+status1+"', '"+filetype1+"', '"+filedate+"', '"+fileno+"', '"+letterno+"', '"+lref+"', '"+lref1+"', '"+lsub+"', '"+lsub1+"', '"+to+"', '"+to1+"', '"+by+"', '"+by1+"', '"+receiver+"', '"+receiver1+"', '"+infdate+"', '"+copyno+"', '"+remark+"', '"+des+"', '"+des1+"')";
statement.executeUpdate(sql);
}
}

//rs.close();
connection.close();
}}
catch(Exception e)
        {
    out.println(e);
}
%>    
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
          // Load the Google Transliteration API
          google.load("elements", "1", {
                packages: "transliteration"
              });
          function onLoad() {
            var options = {
              sourceLanguage: 'en',
              destinationLanguage: ['hi'],
              shortcutKey: 'ctrl+g',
              transliterationEnabled: true
              
              
            };
            // Create an instance on TransliterationControl with the required
            // options.
            var control = new google.elements.transliteration.TransliterationControl(options);
            // Enable transliteration in the textfields with the given ids.
            var ids = ["zone","dep1","status1","filetype1","lref1", "lsub1", "to1", "by1", "receiver1", "des1"];
            control.makeTransliteratable(ids);
            // Show the transliteration control which can be used to toggle between
            // English and Hindi and also choose other destination language.
            control.showControl('translControl');
          }
          google.setOnLoadCallback(onLoad);
        </script>
<script type="text/javascript">
function AllowAlphabet1()
{
               if (!trans.lref1.value.match(/^[A-Za-z0-9]+$/) && trans.lref1.value !="")
               {
                    var lref = document.getElementById('lref').value; 
                    var lref1 = document.getElementById('lref1').value;
                    document.getElementById('lref').value = lref+lref1.charAt((lref1.length)-1);  

               }
               else
               {
                   var lref1 = document.getElementById('lref1').value;
                   document.getElementById('lref').value = lref1;
               }
}
function AllowAlphabet2()
{
                if (!trans.lsub1.value.match(/^[A-Za-z0-9]+$/) && trans.lsub1.value !="")
               {
                    var lsub = document.getElementById('lsub').value; 
                    var lsub1 = document.getElementById('lsub1').value;
                    document.getElementById('lsub').value = lsub+lsub1.charAt((lsub1.length)-1);  

               }
               else
               {
                   var lsub1 = document.getElementById('lsub1').value;
                   document.getElementById('lsub').value = lsub1;
               }
}
function AllowAlphabet4()
{
                if (!trans.by1.value.match(/^[A-Za-z0-9]+$/) && trans.by1.value !="")
               {
                    var by = document.getElementById('by').value; 
                    var by1 = document.getElementById('by1').value;
                    document.getElementById('by').value = by+by1.charAt((by1.length)-1);  

               }
               else
               {
                   var by1 = document.getElementById('by1').value;
                   document.getElementById('by').value = by1;
               }
}      
function AllowAlphabet3()
{
               if (!trans.to1.value.match(/^[A-Za-z0-9]+$/) && trans.to1.value !="")
               {
                    var to = document.getElementById('to').value; 
                    var to1 = document.getElementById('to1').value;
                    document.getElementById('to').value = to+to1.charAt((to1.length)-1);  

               }
               else
               {
                   var to1 = document.getElementById('to1').value;
                   document.getElementById('to').value = to1;
               }
}
function AllowAlphabet5()
{
                if (!trans.receiver1.value.match(/^[A-Za-z0-9]+$/) && trans.receiver1.value !="")
               {
                    var receiver = document.getElementById('receiver').value; 
                    var receiver1 = document.getElementById('receiver1').value;
                    document.getElementById('receiver').value = receiver+receiver1.charAt((receiver1.length)-1);  

               }
               else
               {
                   var receiver1 = document.getElementById('receiver1').value;
                   document.getElementById('receiver').value = receiver1;
               }
}
function AllowAlphabet6()
{
                if (!trans.des1.value.match(/^[A-Za-z0-9]+$/) && trans.des1.value !="")
               {
                    var des = document.getElementById('des').value; 
                    var des1 = document.getElementById('des1').value;
                    document.getElementById('des').value = des+des1.charAt((des1.length)-1);  

               }
               else
               {
                   var des1 = document.getElementById('des1').value;
                   document.getElementById('des').value = des1;
               }
}      
</script>
<script type="text/javascript">document.onload = ctck();</script>

</body>
</html>


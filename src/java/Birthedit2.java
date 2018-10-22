/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.SQLException;
/*   6:    */ import java.sql.Statement;
/*   7:    */ import java.util.logging.Level;
/*   8:    */ import java.util.logging.Logger;
/*   9:    */ import javax.servlet.ServletException;
/*  10:    */ import javax.servlet.http.HttpServlet;
/*  11:    */ import javax.servlet.http.HttpServletRequest;
/*  12:    */ import javax.servlet.http.HttpServletResponse;
/*  13:    */ import javax.servlet.http.HttpSession;
/*  14:    */ 
/*  15:    */ public class Birthedit2
/*  16:    */   extends HttpServlet
/*  17:    */ {
/*  18:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  19:    */     throws ServletException, IOException, ClassNotFoundException, SQLException
/*  20:    */   {
/*  21: 38 */     response.setContentType("text/html;charset=UTF-8");
/*  22: 39 */     PrintWriter out = response.getWriter();
/*  23:    */     try
/*  24:    */     {
/*  25: 41 */       HttpSession nagarpalika = request.getSession();
/*  26: 42 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 43 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 44 */       String database = nagarpalika.getAttribute("database").toString();
/*  29: 45 */       response.setContentType("text/plain; charset=utf-8");
/*  30: 46 */       response.setCharacterEncoding("UTF-8");
/*  31: 47 */       Class.forName("com.mysql.jdbc.Driver");
/*  32:    */       
/*  33: 49 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=yes&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  34:    */       
/*  35:    */ 
/*  36:    */ 
/*  37: 53 */       Statement statement = connection.createStatement();
/*  38:    */       
/*  39:    */ 
/*  40:    */ 
/*  41: 57 */       request.setCharacterEncoding("UTF-8");
/*  42: 58 */       String registrationdate = request.getParameter("registrationdate");
/*  43: 59 */       String prefix = request.getParameter("prefix");
/*  44: 60 */       String registrationnumber = request.getParameter("registrationnumber");
/*  45: 61 */       String gender = request.getParameter("gender");
/*  46: 62 */       String gender1 = request.getParameter("gender1");
/*  47: 63 */       String birthdate = request.getParameter("birthdate");
/*  48: 64 */       String childname = request.getParameter("childname");
/*  49: 65 */       String childname1 = request.getParameter("childname1");
/*  50: 66 */       String fathername = request.getParameter("fathername");
/*  51: 67 */       String fathername1 = request.getParameter("fathername1");
/*  52: 68 */       String mothername = request.getParameter("mothername");
/*  53: 69 */       String mothername1 = request.getParameter("mothername1");
/*  54: 70 */       String address = request.getParameter("address");
/*  55: 71 */       String address1 = request.getParameter("address1");
/*  56: 72 */       String birthplace = request.getParameter("birthplace");
/*  57: 73 */       String birthplace1 = request.getParameter("birthplace1");
/*  58: 74 */       String birthplaceaddress = request.getParameter("birthplaceaddress");
/*  59: 75 */       String birthplaceaddress1 = request.getParameter("birthplaceaddress1");
/*  60: 76 */       String wardname = request.getParameter("wardname");
/*  61: 77 */       String wardname1 = request.getParameter("wardname1");
/*  62: 78 */       String city = request.getParameter("city");
/*  63: 79 */       String city1 = request.getParameter("city1");
/*  64: 80 */       String state = request.getParameter("state");
/*  65: 81 */       String state1 = request.getParameter("state1");
/*  66: 82 */       String division = request.getParameter("division");
/*  67: 83 */       String division1 = request.getParameter("division1");
/*  68: 84 */       String familyreligion = request.getParameter("familyreligion");
/*  69: 85 */       String fatherreligion = request.getParameter("fatherreligion");
/*  70: 86 */       String motherreligion = request.getParameter("motherreligion");
/*  71: 87 */       String fathereducation = request.getParameter("fathereducation");
/*  72: 88 */       String mothereducation = request.getParameter("mothereducation");
/*  73: 89 */       String fatheroccupation = request.getParameter("fatheroccupation");
/*  74: 90 */       String motheroccupation = request.getParameter("motheroccupation");
/*  75: 91 */       String totalchild = request.getParameter("totalchild");
/*  76: 92 */       String motherdeliveryage = request.getParameter("motherdeliveryage");
/*  77: 93 */       String mothermarriageage = request.getParameter("mothermarriageage");
/*  78: 94 */       String nursestatus = request.getParameter("nursestatus");
/*  79: 95 */       String childweight = request.getParameter("childweight");
/*  80: 96 */       String deliverytype = request.getParameter("deliverytype");
/*  81: 97 */       String pregnancytime = request.getParameter("pregnancytime");
/*  82: 98 */       String mobilenumber = request.getParameter("mobilenumber");
/*  83: 99 */       String emailid = request.getParameter("emailid");
/*  84:100 */       String registrationunit = request.getParameter("registrationunit");
/*  85:101 */       String registrar = request.getParameter("registrar");
/*  86:102 */       String informerdetail = request.getParameter("informerdetail");
/*  87:103 */       String informeddate = request.getParameter("informeddate");
/*  88:104 */       String informerrelation = request.getParameter("informerrelation");
/*  89:105 */       String createuser = request.getParameter("createuser");
/*  90:106 */       String approval = request.getParameter("approval");
/*  91:107 */       String remarks = request.getParameter("remarks");
/*  92:    */       
/*  93:109 */       String query = "set names utf8";
/*  94:110 */       statement.execute(query);
/*  95:    */       
/*  96:112 */       String sql = "UPDATE birthcertificate2000 SET registrationdate='" + registrationdate + "', prefix='" + prefix + "', registrationnumber='" + registrationnumber + "', gender='" + gender + "', genderhindi='" + gender1 + "', birthdate='" + birthdate + "', childname='" + childname + "', childnamehindi='" + childname1 + "', fathername='" + fathername + "', fathernamehindi='" + fathername1 + "', mothername='" + mothername + "', mothernamehindi='" + mothername1 + "', address='" + address + "', addresshindi='" + address1 + "', birthplace='" + birthplace + "', birthplacehindi='" + birthplace1 + "', birthplaceaddress='" + birthplaceaddress + "', birthplaceaddresshindi='" + birthplaceaddress1 + "', wardname='" + wardname + "', wardnamehindi='" + wardname1 + "', city='" + city + "', cityhindi='" + city1 + "', state='" + state + "', statehindi='" + state1 + "', division='" + division + "', divisionhindi='" + division1 + "' where registrationnumber = '" + registrationnumber + "'";
/*  97:113 */       statement.executeUpdate(sql);
/*  98:    */       
/*  99:    */ 
/* 100:116 */       String query2 = "UPDATE birthcertificate2000 SET familyreligion=('" + familyreligion + "'), fatherreligion=('" + fatherreligion + "'), motherreligion=('" + motherreligion + "'), fathereducationstatus=('" + fathereducation + "'), mothereducationstatus=('" + mothereducation + "'), fatheroccupation=('" + fatheroccupation + "'), motheroccupation=('" + motheroccupation + "'), totalnumberchildalive=('" + totalchild + "'), ageatthetimedelivery=('" + motherdeliveryage + "'), ageatthetimemarriage=('" + mothermarriageage + "'), timeofdeliverystatusofnurse=('" + nursestatus + "'), weightattimeofbirth=('" + childweight + "'), typeofdelivery=('" + deliverytype + "'), timeofpregnancy=('" + pregnancytime + "'), mobilenumber=('" + mobilenumber + "'), emailid=('" + emailid + "'), registrationunit=('" + registrationunit + "'), registrar=('" + registrar + "'), informerdetail=('" + informerdetail + "'), informeddate=('" + informeddate + "'), informerrelation=('" + informerrelation + "'), createuser=('" + createuser + "'), approvalperson=('" + approval + "'), remark = ('" + remarks + "') WHERE prefix=('" + prefix + "') && registrationnumber=('" + registrationnumber + "') ";
/* 101:117 */       statement.executeUpdate(query2);
/* 102:118 */       response.sendRedirect("birthedithome.jsp");
/* 103:    */     }
/* 104:    */     finally
/* 105:    */     {
/* 106:121 */       out.close();
/* 107:    */     }
/* 108:    */   }
/* 109:    */   
/* 110:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 111:    */     throws ServletException, IOException
/* 112:    */   {
/* 113:    */     try
/* 114:    */     {
/* 115:139 */       processRequest(request, response);
/* 116:    */     }
/* 117:    */     catch (ClassNotFoundException ex)
/* 118:    */     {
/* 119:141 */       Logger.getLogger(Birthedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 120:    */     }
/* 121:    */     catch (SQLException ex)
/* 122:    */     {
/* 123:143 */       Logger.getLogger(Birthedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 124:    */     }
/* 125:    */   }
/* 126:    */   
/* 127:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 128:    */     throws ServletException, IOException
/* 129:    */   {
/* 130:    */     try
/* 131:    */     {
/* 132:160 */       processRequest(request, response);
/* 133:    */     }
/* 134:    */     catch (ClassNotFoundException ex)
/* 135:    */     {
/* 136:162 */       Logger.getLogger(Birthedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 137:    */     }
/* 138:    */     catch (SQLException ex)
/* 139:    */     {
/* 140:164 */       Logger.getLogger(Birthedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 141:    */     }
/* 142:    */   }
/* 143:    */   
/* 144:    */   public String getServletInfo()
/* 145:    */   {
/* 146:175 */     return "Short description";
/* 147:    */   }
/* 148:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Birthedit2
 * JD-Core Version:    0.7.1
 */
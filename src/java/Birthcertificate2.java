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
/*  15:    */ public class Birthcertificate2
/*  16:    */   extends HttpServlet
/*  17:    */ {
/*  18:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  19:    */     throws ServletException, IOException, SQLException, ClassNotFoundException
/*  20:    */   {
/*  21: 36 */     response.setContentType("text/html;charset=UTF-8");
/*  22: 37 */     PrintWriter out = response.getWriter();
/*  23:    */     try
/*  24:    */     {
/*  25: 39 */       HttpSession nagarpalika = request.getSession();
/*  26: 40 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 41 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 42 */       String database = nagarpalika.getAttribute("database").toString();
/*  29: 43 */       response.setContentType("text/plain; charset=utf-8");
/*  30: 44 */       Class.forName("com.mysql.jdbc.Driver");
/*  31:    */       
/*  32: 46 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=yes&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  33:    */       
/*  34:    */ 
/*  35:    */ 
/*  36: 50 */       Statement statement = connection.createStatement();
/*  37:    */       
/*  38: 52 */       request.setCharacterEncoding("UTF-8");
/*  39:    */       
/*  40: 54 */       String registrationdate = request.getParameter("registrationdate");
/*  41: 55 */       String prefix = request.getParameter("prefix");
/*  42: 56 */       String registrationnumber = request.getParameter("registrationnumber");
/*  43: 57 */       String gender = request.getParameter("gender");
/*  44: 58 */       String gender1 = request.getParameter("gender1");
/*  45: 59 */       String birthdate = request.getParameter("birthdate");
/*  46: 60 */       String childname = request.getParameter("childname");
/*  47: 61 */       String childname1 = request.getParameter("childname1");
/*  48: 62 */       String fathername = request.getParameter("fathername");
/*  49: 63 */       String fathername1 = request.getParameter("fathername1");
/*  50: 64 */       String mothername = request.getParameter("mothername");
/*  51: 65 */       String mothername1 = request.getParameter("mothername1");
/*  52: 66 */       String address = request.getParameter("address");
/*  53: 67 */       String address1 = request.getParameter("address1");
/*  54: 68 */       String birthplace = request.getParameter("birthplace");
/*  55: 69 */       String birthplace1 = request.getParameter("birthplace1");
/*  56: 70 */       String birthplaceaddress = request.getParameter("birthplaceaddress");
/*  57: 71 */       String birthplaceaddress1 = request.getParameter("birthplaceaddress1");
/*  58: 72 */       String wardname = request.getParameter("wardname");
/*  59: 73 */       String wardname1 = request.getParameter("wardname1");
/*  60: 74 */       String city = request.getParameter("city");
/*  61: 75 */       String city1 = request.getParameter("city1");
/*  62: 76 */       String state = request.getParameter("state");
/*  63: 77 */       String state1 = request.getParameter("state1");
/*  64: 78 */       String division = request.getParameter("division");
/*  65: 79 */       String division1 = request.getParameter("division1");
/*  66: 80 */       String familyreligion = request.getParameter("familyreligion");
/*  67: 81 */       String fatherreligion = request.getParameter("fatherreligion");
/*  68: 82 */       String motherreligion = request.getParameter("motherreligion");
/*  69: 83 */       String fathereducation = request.getParameter("fathereducation");
/*  70: 84 */       String mothereducation = request.getParameter("mothereducation");
/*  71: 85 */       String fatheroccupation = request.getParameter("fatheroccupation");
/*  72: 86 */       String motheroccupation = request.getParameter("motheroccupation");
/*  73: 87 */       String totalchild = request.getParameter("totalchild");
/*  74: 88 */       String motherdeliveryage = request.getParameter("motherdeliveryage");
/*  75: 89 */       String mothermarriageage = request.getParameter("mothermarriageage");
/*  76: 90 */       String nursestatus = request.getParameter("nursestatus");
/*  77: 91 */       String childweight = request.getParameter("childweight");
/*  78: 92 */       String deliverytype = request.getParameter("deliverytype");
/*  79: 93 */       String pregnancytime = request.getParameter("pregnancytime");
/*  80: 94 */       String mobilenumber = request.getParameter("mobilenumber");
/*  81: 95 */       String emailid = request.getParameter("emailid");
/*  82: 96 */       String registrationunit = request.getParameter("registrationunit");
/*  83: 97 */       String registrar = request.getParameter("registrar");
/*  84: 98 */       String informerdetail = request.getParameter("informerdetail");
/*  85: 99 */       String informeddate = request.getParameter("informeddate");
/*  86:100 */       String informerrelation = request.getParameter("informerrelation");
/*  87:101 */       String createuser = request.getParameter("createuser");
/*  88:102 */       String approval = request.getParameter("approval");
/*  89:103 */       String remarks = request.getParameter("remarks");
/*  90:    */       
/*  91:105 */       String query = "set names utf8";
/*  92:106 */       statement.execute(query);
/*  93:    */       
/*  94:108 */       String query1 = "INSERT INTO birthcertificate2000 (registrationdate, prefix, registrationnumber, gender, genderhindi, birthdate, childname, childnamehindi, fathername, fathernamehindi, mothername, mothernamehindi, address, addresshindi, placename, placenamehindi, birthplaceaddress, birthplaceaddresshindi, wardname, wardnamehindi, city, cityhindi, state, statehindi, division, divisionhindi) VALUES ('" + registrationdate + "', '" + prefix + "', '" + registrationnumber + "', '" + gender + "', '" + gender1 + "', '" + birthdate + "', '" + childname + "', '" + childname1 + "', '" + fathername + "', '" + fathername1 + "', '" + mothername + "', '" + mothername1 + "', '" + address + "', '" + address1 + "', '" + birthplace + "', '" + birthplace1 + "', '" + birthplaceaddress + "', '" + birthplaceaddress1 + "', '" + wardname + "', '" + wardname1 + "', '" + city + "', '" + city1 + "', '" + state + "', '" + state1 + "', '" + division + "', '" + division1 + "')";
/*  95:109 */       statement.executeUpdate(query1);
/*  96:110 */       String query2 = "UPDATE birthcertificate2000 SET familyreligion=('" + familyreligion + "'), fatherreligion=('" + fatherreligion + "'), motherreligion=('" + motherreligion + "'), fathereducationstatus=('" + fathereducation + "'), mothereducationstatus=('" + mothereducation + "'), fatheroccupation=('" + fatheroccupation + "'), motheroccupation=('" + motheroccupation + "'), totalnumberchildalive=('" + totalchild + "'), ageatthetimedelivery=('" + motherdeliveryage + "'), ageatthetimemarriage=('" + mothermarriageage + "'), timeofdeliverystatusofnurse=('" + nursestatus + "'), weightattimeofbirth=('" + childweight + "'), typeofdelivery=('" + deliverytype + "'), timeofpregnancy=('" + pregnancytime + "'), mobilenumber=('" + mobilenumber + "'), emailid=('" + emailid + "'), registrationunit=('" + registrationunit + "'), registrar=('" + registrar + "'), informerdetail=('" + informerdetail + "'), informeddate=('" + informeddate + "'), informerrelation=('" + informerrelation + "'), createuser=('" + createuser + "'), approvalperson=('" + approval + "'), remark = ('" + remarks + "') WHERE prefix=('" + prefix + "') && registrationnumber=('" + registrationnumber + "') ";
/*  97:111 */       statement.executeUpdate(query2);
/*  98:112 */       response.sendRedirect("birthcertificate1.jsp");
/*  99:    */     }
/* 100:    */     finally
/* 101:    */     {
/* 102:114 */       out.close();
/* 103:    */     }
/* 104:    */   }
/* 105:    */   
/* 106:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 107:    */     throws ServletException, IOException
/* 108:    */   {
/* 109:    */     try
/* 110:    */     {
/* 111:132 */       processRequest(request, response);
/* 112:    */     }
/* 113:    */     catch (SQLException ex)
/* 114:    */     {
/* 115:134 */       Logger.getLogger(Birthcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 116:    */     }
/* 117:    */     catch (ClassNotFoundException ex)
/* 118:    */     {
/* 119:136 */       Logger.getLogger(Birthcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 120:    */     }
/* 121:    */   }
/* 122:    */   
/* 123:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 124:    */     throws ServletException, IOException
/* 125:    */   {
/* 126:    */     try
/* 127:    */     {
/* 128:153 */       processRequest(request, response);
/* 129:    */     }
/* 130:    */     catch (SQLException ex)
/* 131:    */     {
/* 132:155 */       Logger.getLogger(Birthcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 133:    */     }
/* 134:    */     catch (ClassNotFoundException ex)
/* 135:    */     {
/* 136:157 */       Logger.getLogger(Birthcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 137:    */     }
/* 138:    */   }
/* 139:    */   
/* 140:    */   public String getServletInfo()
/* 141:    */   {
/* 142:168 */     return "Short description";
/* 143:    */   }
/* 144:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Birthcertificate2
 * JD-Core Version:    0.7.1
 */
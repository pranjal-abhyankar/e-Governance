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
/*  15:    */ public class Deathcertificate2
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
/*  29: 45 */       Class.forName("com.mysql.jdbc.Driver");
/*  30: 46 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  31:    */       
/*  32:    */ 
/*  33:    */ 
/*  34: 50 */       Statement statement = connection.createStatement();
/*  35:    */       
/*  36:    */ 
/*  37:    */ 
/*  38: 54 */       request.setCharacterEncoding("UTF-8");
/*  39: 55 */       String prefix = request.getParameter("prefix");
/*  40: 56 */       String registrationnumber = request.getParameter("registrationnumber");
/*  41: 57 */       String registrationdate = request.getParameter("registrationdate");
/*  42: 58 */       String deathdate = request.getParameter("deathdate");
/*  43: 59 */       String age = request.getParameter("age");
/*  44: 60 */       String name = request.getParameter("name");
/*  45: 61 */       String name1 = request.getParameter("name1");
/*  46: 62 */       String fatherhusbandname = request.getParameter("fatherhusbandname");
/*  47: 63 */       String fatherhusbandname1 = request.getParameter("fatherhusbandname1");
/*  48: 64 */       String address = request.getParameter("address");
/*  49: 65 */       String address1 = request.getParameter("address1");
/*  50: 66 */       String informerdetail = request.getParameter("informerdetail");
/*  51: 67 */       String informerdetail1 = request.getParameter("informerdetail1");
/*  52: 68 */       String gender = request.getParameter("gender");
/*  53: 69 */       String gender1 = request.getParameter("gender1");
/*  54: 70 */       String agestatus = request.getParameter("agestatus");
/*  55: 71 */       String agestatus1 = request.getParameter("agestatus1");
/*  56: 72 */       String deathplace = request.getParameter("deathplace");
/*  57: 73 */       String deathplace1 = request.getParameter("deathplace1");
/*  58: 74 */       String deathplaceaddress = request.getParameter("deathplaceaddress");
/*  59: 75 */       String deathplaceaddress1 = request.getParameter("deathplaceaddress1");
/*  60: 76 */       String familyreligion = request.getParameter("familyreligion");
/*  61: 77 */       String familyreligion1 = request.getParameter("familyreligion1");
/*  62: 78 */       String occupation = request.getParameter("occupation");
/*  63: 79 */       String occupation1 = request.getParameter("occupation1");
/*  64: 80 */       String medicaltreatment = request.getParameter("medicaltreatment");
/*  65: 81 */       String medicaltreatment1 = request.getParameter("medicaltreatment1");
/*  66: 82 */       String deathreason = request.getParameter("deathreason");
/*  67: 83 */       String deathreason1 = request.getParameter("deathreason1");
/*  68: 84 */       String mobilenumber = request.getParameter("mobilenumber");
/*  69: 85 */       String emailid = request.getParameter("emailid");
/*  70: 86 */       String informeddate = request.getParameter("informeddate");
/*  71:    */       
/*  72: 88 */       String informerrelation = request.getParameter("informerrelation");
/*  73: 89 */       String informerrelation1 = request.getParameter("informerrelation1");
/*  74: 90 */       String city = request.getParameter("city");
/*  75: 91 */       String city1 = request.getParameter("city1");
/*  76: 92 */       String state = request.getParameter("state");
/*  77: 93 */       String state1 = request.getParameter("state1");
/*  78: 94 */       String wardname = request.getParameter("wardname");
/*  79: 95 */       String wardname1 = request.getParameter("wardname1");
/*  80: 96 */       String mothername = request.getParameter("mothername");
/*  81: 97 */       String mothername1 = request.getParameter("mothername1");
/*  82: 98 */       String registrar = request.getParameter("registrar");
/*  83: 99 */       String remark = request.getParameter("remark");
/*  84:100 */       String dor = request.getParameter("registrationdate");
/*  85:101 */       String d = null;
/*  86:102 */       String m = null;
/*  87:103 */       String y = null;
/*  88:104 */       d = dor.substring(0, dor.indexOf('-'));
/*  89:105 */       m = dor.substring(dor.indexOf('-'), dor.lastIndexOf('-'));
/*  90:106 */       if (m.equalsIgnoreCase("-Jan")) {
/*  91:106 */         m = "-01";
/*  92:    */       }
/*  93:107 */       if (m.equalsIgnoreCase("-Feb")) {
/*  94:107 */         m = "-02";
/*  95:    */       }
/*  96:108 */       if (m.equalsIgnoreCase("-Mar")) {
/*  97:108 */         m = "-03";
/*  98:    */       }
/*  99:109 */       if (m.equalsIgnoreCase("-Apr")) {
/* 100:109 */         m = "-04";
/* 101:    */       }
/* 102:110 */       if (m.equalsIgnoreCase("-May")) {
/* 103:110 */         m = "-05";
/* 104:    */       }
/* 105:111 */       if (m.equalsIgnoreCase("-Jun")) {
/* 106:111 */         m = "-06";
/* 107:    */       }
/* 108:112 */       if (m.equalsIgnoreCase("-Jul")) {
/* 109:112 */         m = "-07";
/* 110:    */       }
/* 111:113 */       if (m.equalsIgnoreCase("-Aug")) {
/* 112:113 */         m = "-08";
/* 113:    */       }
/* 114:114 */       if (m.equalsIgnoreCase("-Sep")) {
/* 115:114 */         m = "-09";
/* 116:    */       }
/* 117:115 */       if (m.equalsIgnoreCase("-Oct")) {
/* 118:115 */         m = "-10";
/* 119:    */       }
/* 120:116 */       if (m.equalsIgnoreCase("-Nov")) {
/* 121:116 */         m = "-11";
/* 122:    */       }
/* 123:117 */       if (m.equalsIgnoreCase("-Dec")) {
/* 124:117 */         m = "-12";
/* 125:    */       }
/* 126:118 */       y = dor.substring(dor.lastIndexOf('-'));
/* 127:119 */       registrationdate = d + m + y;
/* 128:    */       
/* 129:121 */       String doi = request.getParameter("informeddate");
/* 130:122 */       d = doi.substring(0, doi.indexOf('-'));
/* 131:123 */       m = doi.substring(doi.indexOf('-'), doi.lastIndexOf('-'));
/* 132:124 */       y = doi.substring(doi.lastIndexOf('-'));
/* 133:125 */       informeddate = d + m + y;
/* 134:    */       
/* 135:127 */       String dod = request.getParameter("deathdate");
/* 136:128 */       d = dod.substring(0, dod.indexOf('-'));
/* 137:129 */       m = dod.substring(dod.indexOf('-'), dod.lastIndexOf('-'));
/* 138:130 */       y = dod.substring(dod.lastIndexOf('-'));
/* 139:131 */       deathdate = d + m + y;
/* 140:135 */       if ((prefix != null) && (registrationnumber != null))
/* 141:    */       {
/* 142:138 */         String query = "set names utf8";
/* 143:139 */         statement.execute(query);
/* 144:    */         
/* 145:141 */         String sql = "INSERT INTO deathcertificate (prefix, registrationno, registrationdate, deathdate, age, name, namehindi, fatherhusbandname, fatherhusbandnamehindi, address, addresshindi, informerdetail, informerdetailhindi, gender, genderhindi, agestatus, agestatushindi, deathplace, deathplacehindi, placename, placenamehindi, familyreligion, familyreligionhindi, occupation, occupationhindi, medicaltreatmentbeforedeath, medicaltreatmentbeforedeathhindi, deathreasonbydr, deathreasonbydrhindi, mobileno, emailid, informeddate, informerrelation, informerrelationhindi, city, cityhindi, state, statehindi, wardname, wardnamehindi, registrar, remark, mothername, mothernamehindi) VALUES ('" + prefix + "', '" + registrationnumber + "', '" + registrationdate + "', '" + deathdate + "', '" + age + "', '" + name + "', '" + name1 + "', '" + fatherhusbandname + "', '" + fatherhusbandname1 + "', '" + address + "', '" + address1 + "', '" + informerdetail + "', '" + informerdetail1 + "', '" + gender + "', '" + gender1 + "', '" + agestatus + "', '" + agestatus1 + "', '" + deathplace + "', '" + deathplace1 + "', '" + deathplaceaddress + "', '" + deathplaceaddress1 + "', '" + familyreligion + "', '" + familyreligion1 + "', '" + occupation + "', '" + occupation1 + "', '" + medicaltreatment + "', '" + medicaltreatment1 + "', '" + deathreason + "', '" + deathreason1 + "', '" + mobilenumber + "', '" + emailid + "', '" + informeddate + "', '" + informerrelation + "', '" + informerrelation1 + "', '" + city + "', '" + city1 + "', '" + state + "', '" + state1 + "', '" + wardname + "', '" + wardname1 + "', '" + registrar + "', '" + remark + "', '" + mothername + "', '" + mothername1 + "')";
/* 146:142 */         statement.executeUpdate(sql);
/* 147:    */       }
/* 148:147 */       connection.close();
/* 149:    */     }
/* 150:    */     finally
/* 151:    */     {
/* 152:152 */       out.close();
/* 153:    */     }
/* 154:    */   }
/* 155:    */   
/* 156:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 157:    */     throws ServletException, IOException
/* 158:    */   {
/* 159:    */     try
/* 160:    */     {
/* 161:170 */       processRequest(request, response);
/* 162:    */     }
/* 163:    */     catch (ClassNotFoundException ex)
/* 164:    */     {
/* 165:172 */       Logger.getLogger(Deathcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 166:    */     }
/* 167:    */     catch (SQLException ex)
/* 168:    */     {
/* 169:174 */       Logger.getLogger(Deathcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 170:    */     }
/* 171:    */   }
/* 172:    */   
/* 173:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 174:    */     throws ServletException, IOException
/* 175:    */   {
/* 176:    */     try
/* 177:    */     {
/* 178:191 */       processRequest(request, response);
/* 179:    */     }
/* 180:    */     catch (ClassNotFoundException ex)
/* 181:    */     {
/* 182:193 */       Logger.getLogger(Deathcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 183:    */     }
/* 184:    */     catch (SQLException ex)
/* 185:    */     {
/* 186:195 */       Logger.getLogger(Deathcertificate2.class.getName()).log(Level.SEVERE, null, ex);
/* 187:    */     }
/* 188:    */   }
/* 189:    */   
/* 190:    */   public String getServletInfo()
/* 191:    */   {
/* 192:206 */     return "Short description";
/* 193:    */   }
/* 194:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Deathcertificate2
 * JD-Core Version:    0.7.1
 */
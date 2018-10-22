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
/*  15:    */ public class Deathedit2
/*  16:    */   extends HttpServlet
/*  17:    */ {
/*  18:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  19:    */     throws ServletException, IOException, ClassNotFoundException, SQLException
/*  20:    */   {
/*  21: 38 */     response.setContentType("text/html;charset=UTF-8");
/*  22: 39 */     PrintWriter out = response.getWriter();
/*  23:    */     try
/*  24:    */     {
/*  25: 42 */       request.setCharacterEncoding("UTF-8");
/*  26:    */       
/*  27: 44 */       String prefix = request.getParameter("prefix");
/*  28: 45 */       String registrationnumber = request.getParameter("registrationnumber");
/*  29: 46 */       String registrationdate = request.getParameter("registrationdate");
/*  30: 47 */       String deathdate = request.getParameter("deathdate");
/*  31: 48 */       String age = request.getParameter("age");
/*  32: 49 */       String name = request.getParameter("name");
/*  33: 50 */       String name1 = request.getParameter("name1");
/*  34: 51 */       String fatherhusbandname = request.getParameter("fatherhusbandname");
/*  35: 52 */       String fatherhusbandname1 = request.getParameter("fatherhusbandname1");
/*  36: 53 */       String address = request.getParameter("address");
/*  37: 54 */       String address1 = request.getParameter("address1");
/*  38: 55 */       String informerdetail = request.getParameter("informerdetail");
/*  39: 56 */       String informerdetail1 = request.getParameter("informerdetail1");
/*  40: 57 */       String gender = request.getParameter("gender");
/*  41: 58 */       String gender1 = request.getParameter("gender1");
/*  42: 59 */       String agestatus = request.getParameter("agestatus");
/*  43: 60 */       String agestatus1 = request.getParameter("agestatus1");
/*  44: 61 */       String deathplace = request.getParameter("deathplace");
/*  45: 62 */       String deathplace1 = request.getParameter("deathplace1");
/*  46: 63 */       String deathplaceaddress = request.getParameter("deathplaceaddress");
/*  47: 64 */       String deathplaceaddress1 = request.getParameter("deathplaceaddress1");
/*  48: 65 */       String familyreligion = request.getParameter("familyreligion");
/*  49: 66 */       String familyreligion1 = request.getParameter("familyreligion1");
/*  50: 67 */       String occupation = request.getParameter("occupation");
/*  51: 68 */       String occupation1 = request.getParameter("occupation1");
/*  52: 69 */       String medicaltreatment = request.getParameter("medicaltreatment");
/*  53: 70 */       String medicaltreatment1 = request.getParameter("medicaltreatment1");
/*  54: 71 */       String deathreason = request.getParameter("deathreason");
/*  55: 72 */       String deathreason1 = request.getParameter("deathreason1");
/*  56: 73 */       String mobilenumber = request.getParameter("mobilenumber");
/*  57: 74 */       String emailid = request.getParameter("emailid");
/*  58: 75 */       String informeddate = request.getParameter("informeddate");
/*  59:    */       
/*  60: 77 */       String informerrelation = request.getParameter("informerrelation");
/*  61: 78 */       String informerrelation1 = request.getParameter("informerrelation1");
/*  62: 79 */       String city = request.getParameter("city");
/*  63: 80 */       String city1 = request.getParameter("city1");
/*  64: 81 */       String state = request.getParameter("state");
/*  65: 82 */       String state1 = request.getParameter("state1");
/*  66: 83 */       String wardname = request.getParameter("wardname");
/*  67: 84 */       String wardname1 = request.getParameter("wardname1");
/*  68: 85 */       String registrar = request.getParameter("registrar");
/*  69: 86 */       String registrar1 = request.getParameter("registrar1");
/*  70: 87 */       String MotherName = request.getParameter("mothername");
/*  71: 88 */       String MotherNameHindi = request.getParameter("mothername1");
/*  72: 89 */       String remark = request.getParameter("remark");
/*  73:    */       
/*  74: 91 */       HttpSession session = request.getSession();
/*  75: 92 */       session.setAttribute("registrationnumber", registrationnumber);
/*  76: 93 */       session.setAttribute("prefix", prefix);
/*  77:    */       
/*  78: 95 */       HttpSession nagarpalika = request.getSession();
/*  79: 96 */       String username = nagarpalika.getAttribute("username").toString();
/*  80: 97 */       String password = nagarpalika.getAttribute("password").toString();
/*  81: 98 */       String database = nagarpalika.getAttribute("database").toString();
/*  82: 99 */       response.setContentType("text/plain; charset=utf-8");
/*  83:100 */       response.setCharacterEncoding("UTF-8");
/*  84:101 */       Class.forName("com.mysql.jdbc.Driver");
/*  85:    */       
/*  86:103 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=yes&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  87:    */       
/*  88:    */ 
/*  89:    */ 
/*  90:107 */       Statement statement = connection.createStatement();
/*  91:    */       
/*  92:    */ 
/*  93:    */ 
/*  94:    */ 
/*  95:    */ 
/*  96:113 */       String query = "set names utf8";
/*  97:114 */       statement.execute(query);
/*  98:    */       
/*  99:116 */       String sql = "UPDATE deathcertificate SET RegistrationNo = '" + registrationnumber + "', RegistrationDate = '" + registrationdate + "', DeathDate = '" + deathdate + "', NameHindi = '" + name1 + "', FatherHusbandNameHindi = '" + fatherhusbandname1 + "', GenderHindi = '" + gender1 + "', Age = '" + age + "', AddressHindi = '" + address1 + "', Name = '" + name + "', FatherHusbandName = '" + fatherhusbandname + "', MotherName = '" + MotherName + "', MotherNameHindi = '" + MotherNameHindi + "', Address = '" + address + "', InformerDetail = '" + informerdetail + "', InformerDetailHindi = '" + informerdetail1 + "', InformedDate = '" + informeddate + "', PlaceName = '" + deathplaceaddress + "', PlaceNameHindi = '" + deathplaceaddress1 + "', DeathReasonByDr = '" + deathreason + "', DeathReasonByDrHindi = '" + deathreason1 + "', MobileNo = '" + mobilenumber + "', EmailId = '" + emailid + "', Remark = '" + remark + "' , WardName = '" + wardname + "', WardNameHindi = '" + wardname1 + "', Prefix = '" + prefix + "', Gender = '" + gender + "', AgeStatus = '" + agestatus + "', AgeStatusHindi = '" + agestatus1 + "', DeathPlace = '" + deathplace + "', DeathPlaceHindi = '" + deathplace1 + "', InformerRelation = '" + informerrelation + "', InformerRelationHindi = '" + informerrelation1 + "', City = '" + city + "', CityHindi = '" + city1 + "', State = '" + state + "', StateHindi = '" + state1 + "', FamilyReligion = '" + familyreligion + "', FamilyReligionHindi = '" + familyreligion1 + "', Occupation = '" + occupation + "', OccupationHindi = '" + occupation1 + "', MedicalTreatmentBeforeDeath = '" + medicaltreatment + "', MedicalTreatmentBeforeDeathHindi = '" + medicaltreatment1 + "', Registrar = '" + registrar + "', RegistrarHindi = '" + registrar1 + "' WHERE RegistrationNo = '" + registrationnumber + "'";
/* 100:117 */       statement.executeUpdate(sql);
/* 101:    */     }
/* 102:    */     catch (Exception e)
/* 103:    */     {
/* 104:122 */       out.print(e);
/* 105:    */     }
/* 106:    */     finally
/* 107:    */     {
/* 108:125 */       response.sendRedirect("deathedit1.jsp");
/* 109:    */       
/* 110:127 */       out.close();
/* 111:    */     }
/* 112:    */   }
/* 113:    */   
/* 114:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 115:    */     throws ServletException, IOException
/* 116:    */   {
/* 117:    */     try
/* 118:    */     {
/* 119:145 */       processRequest(request, response);
/* 120:    */     }
/* 121:    */     catch (ClassNotFoundException ex)
/* 122:    */     {
/* 123:147 */       Logger.getLogger(Deathedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 124:    */     }
/* 125:    */     catch (SQLException ex)
/* 126:    */     {
/* 127:149 */       Logger.getLogger(Deathedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 128:    */     }
/* 129:    */   }
/* 130:    */   
/* 131:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 132:    */     throws ServletException, IOException
/* 133:    */   {
/* 134:    */     try
/* 135:    */     {
/* 136:165 */       processRequest(request, response);
/* 137:    */     }
/* 138:    */     catch (ClassNotFoundException ex)
/* 139:    */     {
/* 140:167 */       Logger.getLogger(Deathedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 141:    */     }
/* 142:    */     catch (SQLException ex)
/* 143:    */     {
/* 144:169 */       Logger.getLogger(Deathedit2.class.getName()).log(Level.SEVERE, null, ex);
/* 145:    */     }
/* 146:    */   }
/* 147:    */   
/* 148:    */   public String getServletInfo()
/* 149:    */   {
/* 150:180 */     return "Short description";
/* 151:    */   }
/* 152:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Deathedit2
 * JD-Core Version:    0.7.1
 */
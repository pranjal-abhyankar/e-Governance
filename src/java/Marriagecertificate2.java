/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.Statement;
/*   6:    */ import javax.servlet.ServletException;
/*   7:    */ import javax.servlet.http.HttpServlet;
/*   8:    */ import javax.servlet.http.HttpServletRequest;
/*   9:    */ import javax.servlet.http.HttpServletResponse;
/*  10:    */ import javax.servlet.http.HttpSession;
/*  11:    */ 
/*  12:    */ public class Marriagecertificate2
/*  13:    */   extends HttpServlet
/*  14:    */ {
/*  15:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  16:    */     throws ServletException, IOException
/*  17:    */   {
/*  18: 38 */     response.setContentType("text/html;charset=UTF-8");
/*  19: 39 */     PrintWriter out = response.getWriter();
/*  20:    */     try
/*  21:    */     {
/*  22: 42 */       HttpSession nagarpalika = request.getSession();
/*  23: 43 */       String database = nagarpalika.getAttribute("database").toString();
/*  24: 44 */       String username = nagarpalika.getAttribute("username").toString();
/*  25: 45 */       String password = nagarpalika.getAttribute("password").toString();
/*  26: 46 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  27:    */       
/*  28:    */ 
/*  29: 49 */       request.setCharacterEncoding("UTF-8");
/*  30: 50 */       String prefix = request.getParameter("prefix");
/*  31: 51 */       String regno = request.getParameter("regno");
/*  32: 52 */       String regdate = request.getParameter("regdate");
/*  33: 53 */       String bname = request.getParameter("bname");
/*  34: 54 */       String bname1 = request.getParameter("bname1");
/*  35: 55 */       String gname = request.getParameter("gname");
/*  36: 56 */       String gname1 = request.getParameter("gname1");
/*  37: 57 */       String bage = request.getParameter("bage");
/*  38: 58 */       String gage = request.getParameter("gage");
/*  39: 59 */       String bbirthdate = request.getParameter("bbirthdate");
/*  40: 60 */       String gbirthdate = request.getParameter("gbirthdate");
/*  41: 61 */       String bfather = request.getParameter("bfather");
/*  42: 62 */       String bfather1 = request.getParameter("bfather1");
/*  43: 63 */       String gfather = request.getParameter("gfather");
/*  44: 64 */       String gfather1 = request.getParameter("gfather1");
/*  45: 65 */       String bmstatus = request.getParameter("bmstatus");
/*  46: 66 */       String bmstatus1 = request.getParameter("bmstatus1");
/*  47: 67 */       String gmstatus = request.getParameter("gmstatus");
/*  48: 68 */       String gmstatus1 = request.getParameter("gmstatus1");
/*  49: 69 */       String baddress = request.getParameter("baddress");
/*  50: 70 */       String baddress1 = request.getParameter("baddress1");
/*  51: 71 */       String gaddress = request.getParameter("gaddress");
/*  52: 72 */       String gaddress1 = request.getParameter("gaddress1");
/*  53: 73 */       String bcity = request.getParameter("bcity");
/*  54: 74 */       String bcity1 = request.getParameter("bcity1");
/*  55: 75 */       String gcity = request.getParameter("gcity");
/*  56: 76 */       String gcity1 = request.getParameter("gcity1");
/*  57: 77 */       String bpost = request.getParameter("bpost");
/*  58: 78 */       String bpost1 = request.getParameter("bpost1");
/*  59: 79 */       String gpost = request.getParameter("gpost");
/*  60: 80 */       String gpost1 = request.getParameter("gpost1");
/*  61: 81 */       String bpolice = request.getParameter("bpolice");
/*  62: 82 */       String bpolice1 = request.getParameter("bpolice1");
/*  63: 83 */       String gpolice = request.getParameter("gpolice");
/*  64: 84 */       String gpolice1 = request.getParameter("gpolice1");
/*  65: 85 */       String marriagedate = request.getParameter("marriagedate");
/*  66: 86 */       String marriageplace = request.getParameter("marriageplace");
/*  67: 87 */       String marriageplace1 = request.getParameter("marriageplace1");
/*  68: 88 */       String wardno = request.getParameter("wardno");
/*  69: 89 */       String marriagetype = request.getParameter("marriagetype");
/*  70: 90 */       String marriagetype1 = request.getParameter("marriagetype1");
/*  71: 91 */       String mobile = request.getParameter("mobile");
/*  72: 92 */       String email = request.getParameter("email");
/*  73: 93 */       String regunit = request.getParameter("regunit");
/*  74: 94 */       String regunit1 = request.getParameter("regunit1");
/*  75: 95 */       String registrar = request.getParameter("registrar");
/*  76: 96 */       String registrar1 = request.getParameter("registrar1");
/*  77: 97 */       String remarks = request.getParameter("remarks");
/*  78: 98 */       String remarks1 = request.getParameter("remarks1");
/*  79:    */       
/*  80:100 */       Class.forName("com.mysql.jdbc.Driver");
/*  81:    */       
/*  82:102 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  83:    */       
/*  84:104 */       Statement statement = connection.createStatement();
/*  85:106 */       if ((prefix != null) && (regno != null))
/*  86:    */       {
/*  87:109 */         String query = "set names utf8";
/*  88:110 */         statement.execute(query);
/*  89:    */         
/*  90:112 */         String sql = "INSERT INTO marriagecertificate (Prefix, MarriageRegistrationNo, MarriageRegistrationDate, BoyName, BoyNameHindi, GirlName, GirlNameHindi, BoyAge, GirlAge, BoyBirthDate, GirlBirthDate, BoyFatherName, BoyFatherNameHindi, GirlFatherName, GirlFatherNameHindi, BoyMarriageStatus, BoyMarriageStatusHindi, GirlMarriageStatus, GirlMarriageStatusHindi, BoyAddress, BoyAddressHindi, GirlAddress, GirlAddressHindi, BoyCity, BoyCityHindi, GirlCity, GirlCityHindi, BoyPostOffice, BoyPostOfficeHindi, GirlPostOffice, GirlPostOfficeHindi, BoyPoliceStation, BoyPoliceStationHindi, GirlPoliceStation, GirlPoliceStationHindi, MarriageDate, MarriagePlace, MarriagePlaceHindi, WardNo, MarriageType, MarriageTypeHindi, MobileNo, EmailId, RegistrationUnit, RegistrationUnitHindi, Registrar, RegistrarHindi, Remarks, RemarksHindi) VALUES ('" + prefix + "', '" + regno + "', '" + regdate + "', '" + bname + "', '" + bname1 + "', '" + gname + "', '" + gname1 + "', '" + bage + "', '" + gage + "', '" + bbirthdate + "', '" + gbirthdate + "', '" + bfather + "', '" + bfather1 + "', '" + gfather + "', '" + gfather1 + "', '" + bmstatus + "', '" + bmstatus1 + "', '" + gmstatus + "', '" + gmstatus1 + "', '" + baddress + "', '" + baddress1 + "', '" + gaddress + "', '" + gaddress1 + "', '" + bcity + "', '" + bcity1 + "', '" + gcity + "', '" + gcity1 + "', '" + bpost + "',  '" + bpost1 + "', '" + gpost + "',  '" + gpost1 + "', '" + bpolice + "', '" + bpolice1 + "', '" + gpolice + "',  '" + gpolice1 + "', '" + marriagedate + "', '" + marriageplace + "', '" + marriageplace1 + "', '" + wardno + "', '" + marriagetype + "', '" + marriagetype1 + "', '" + mobile + "', '" + email + "', '" + regunit + "', '" + regunit1 + "', '" + registrar + "', '" + registrar1 + "', '" + remarks + "', '" + remarks1 + "')";
/*  91:113 */         statement.executeUpdate(sql);
/*  92:    */       }
/*  93:116 */       connection.close();
/*  94:    */     }
/*  95:    */     catch (Exception e)
/*  96:    */     {
/*  97:120 */       out.println(e);
/*  98:    */     }
/*  99:    */     finally
/* 100:    */     {
/* 101:123 */       out.close();
/* 102:    */     }
/* 103:125 */     response.sendRedirect("marriagecertificate1.jsp");
/* 104:    */   }
/* 105:    */   
/* 106:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 107:    */     throws ServletException, IOException
/* 108:    */   {
/* 109:141 */     processRequest(request, response);
/* 110:    */   }
/* 111:    */   
/* 112:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 113:    */     throws ServletException, IOException
/* 114:    */   {
/* 115:155 */     processRequest(request, response);
/* 116:    */   }
/* 117:    */   
/* 118:    */   public String getServletInfo()
/* 119:    */   {
/* 120:165 */     return "Short description";
/* 121:    */   }
/* 122:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Marriagecertificate2
 * JD-Core Version:    0.7.1
 */
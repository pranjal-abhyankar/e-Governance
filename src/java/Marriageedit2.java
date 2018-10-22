/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.ResultSet;
/*   6:    */ import java.sql.Statement;
/*   7:    */ import javax.servlet.ServletException;
/*   8:    */ import javax.servlet.annotation.WebServlet;
/*   9:    */ import javax.servlet.http.HttpServlet;
/*  10:    */ import javax.servlet.http.HttpServletRequest;
/*  11:    */ import javax.servlet.http.HttpServletResponse;
/*  12:    */ import javax.servlet.http.HttpSession;
/*  13:    */ 
/*  14:    */ @WebServlet(urlPatterns={"/Marriageedit2"})
/*  15:    */ public class Marriageedit2
/*  16:    */   extends HttpServlet
/*  17:    */ {
/*  18:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  19:    */     throws ServletException, IOException
/*  20:    */   {
/*  21: 37 */     response.setContentType("text/html;charset=UTF-8");
/*  22: 38 */     PrintWriter out = response.getWriter();
/*  23:    */     try
/*  24:    */     {
/*  25: 42 */       HttpSession nagarpalika = request.getSession();
/*  26: 43 */       String database = nagarpalika.getAttribute("database").toString();
/*  27: 44 */       String username = nagarpalika.getAttribute("username").toString();
/*  28: 45 */       String password = nagarpalika.getAttribute("password").toString();
/*  29: 46 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  30:    */       
/*  31: 48 */       Class.forName("com.mysql.jdbc.Driver");
/*  32:    */       
/*  33:    */ 
/*  34:    */ 
/*  35: 52 */       ResultSet rs = null;
/*  36:    */       
/*  37:    */ 
/*  38: 55 */       request.setCharacterEncoding("UTF-8");
/*  39: 56 */       String prefix = request.getParameter("prefix");
/*  40: 57 */       String regno = request.getParameter("regno");
/*  41: 58 */       String regdate = request.getParameter("regdate");
/*  42: 59 */       String bname = request.getParameter("bname");
/*  43: 60 */       String bname1 = request.getParameter("bname1");
/*  44: 61 */       String gname = request.getParameter("gname");
/*  45: 62 */       String gname1 = request.getParameter("gname1");
/*  46: 63 */       String bage = request.getParameter("bage");
/*  47: 64 */       String gage = request.getParameter("gage");
/*  48: 65 */       String bbirthdate = request.getParameter("bbirthdate");
/*  49: 66 */       String gbirthdate = request.getParameter("gbirthdate");
/*  50: 67 */       String bfather = request.getParameter("bfather");
/*  51: 68 */       String bfather1 = request.getParameter("bfather1");
/*  52: 69 */       String gfather = request.getParameter("gfather");
/*  53: 70 */       String gfather1 = request.getParameter("gfather1");
/*  54: 71 */       String bmstatus = request.getParameter("bmstatus");
/*  55: 72 */       String bmstatus1 = request.getParameter("bmstatus1");
/*  56: 73 */       String gmstatus = request.getParameter("gmstatus");
/*  57: 74 */       String gmstatus1 = request.getParameter("gmstatus1");
/*  58: 75 */       String baddress = request.getParameter("baddress");
/*  59: 76 */       String baddress1 = request.getParameter("baddress1");
/*  60: 77 */       String gaddress = request.getParameter("gaddress");
/*  61: 78 */       String gaddress1 = request.getParameter("gaddress1");
/*  62: 79 */       String bcity = request.getParameter("bcity");
/*  63: 80 */       String bcity1 = request.getParameter("bcity1");
/*  64: 81 */       String gcity = request.getParameter("gcity");
/*  65: 82 */       String gcity1 = request.getParameter("gcity1");
/*  66: 83 */       String bdistrict = request.getParameter("bdistrict");
/*  67: 84 */       String bdistrict1 = request.getParameter("bdistrict1");
/*  68: 85 */       String gdistrict = request.getParameter("gdistrict");
/*  69: 86 */       String gdistrict1 = request.getParameter("gdistrict1");
/*  70: 87 */       String bpost = request.getParameter("bpost");
/*  71: 88 */       String bpost1 = request.getParameter("bpost1");
/*  72: 89 */       String gpost = request.getParameter("gpost");
/*  73: 90 */       String gpost1 = request.getParameter("gpost1");
/*  74: 91 */       String bpolice = request.getParameter("bpolice");
/*  75: 92 */       String bpolice1 = request.getParameter("bpolice1");
/*  76: 93 */       String gpolice = request.getParameter("gpolice");
/*  77: 94 */       String gpolice1 = request.getParameter("gpolice1");
/*  78: 95 */       String marriagedate = request.getParameter("marriagedate");
/*  79: 96 */       String marriageplace = request.getParameter("marriageplace");
/*  80: 97 */       String marriageplace1 = request.getParameter("marriageplace1");
/*  81: 98 */       String wardno = request.getParameter("wardno");
/*  82: 99 */       String marriagetype = request.getParameter("marriagetype");
/*  83:100 */       String marriagetype1 = request.getParameter("marriagetype1");
/*  84:101 */       String mobile = request.getParameter("mobile");
/*  85:102 */       String email = request.getParameter("email");
/*  86:103 */       String regunit = request.getParameter("regunit");
/*  87:104 */       String regunit1 = request.getParameter("regunit1");
/*  88:105 */       String registrar = request.getParameter("registrar");
/*  89:106 */       String registrar1 = request.getParameter("registrar1");
/*  90:107 */       String remarks = request.getParameter("remarks");
/*  91:108 */       String remarks1 = request.getParameter("remarks1");
/*  92:    */       
/*  93:110 */       Class.forName("com.mysql.jdbc.Driver");
/*  94:    */       
/*  95:112 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  96:    */       
/*  97:114 */       Statement statement = connection.createStatement();
/*  98:116 */       if ((prefix != null) && (regno != null))
/*  99:    */       {
/* 100:119 */         String query = "set names utf8";
/* 101:120 */         statement.execute(query);
/* 102:    */         
/* 103:122 */         String sql = "update marriagecertificate set Prefix = '" + prefix + "', MarriageRegistrationNo = '" + regno + "', MarriageRegistrationDate = '" + regdate + "', BoyName =  '" + bname + "', BoyNameHindi = '" + bname1 + "', GirlName = '" + gname + "', GirlNameHindi = '" + gname1 + "', BoyAge = '" + bage + "', GirlAge = '" + gage + "', BoyBirthDate = '" + bbirthdate + "', GirlBirthDate = '" + gbirthdate + "', BoyFatherName = '" + bfather + "', BoyFatherNameHindi = '" + bfather1 + "', GirlFatherName = '" + gfather + "', GirlFatherNameHindi = '" + gfather1 + "', BoyMarriageStatus = '" + bmstatus + "', BoyMarriageStatusHindi = '" + bmstatus1 + "', GirlMarriageStatus = '" + gmstatus + "', GirlMarriageStatusHindi = '" + gmstatus1 + "', BoyAddress = '" + baddress + "', BoyAddressHindi = '" + baddress1 + "', GirlAddress = '" + gaddress + "', GirlAddressHindi = '" + gaddress1 + "', BoyCity = '" + bcity + "', BoyCityHindi = '" + bcity1 + "', GirlCity = '" + gcity + "', GirlCityHindi = '" + gcity1 + "',BoyDistrict = '" + bdistrict + "',BoyDistrictHindi = '" + bdistrict1 + "' ,GirlDistrict = '" + gdistrict + "', GirlDistrictHindi = '" + gdistrict1 + "', BoyPostOffice = '" + bpost + "', BoyPostOfficeHindi = '" + bpost1 + "', GirlPostOffice = '" + gpost + "', GirlPostOfficeHindi = '" + gpost1 + "', BoyPoliceStation = '" + bpolice + "', BoyPoliceStationHindi = '" + bpolice1 + "', GirlPoliceStation ='" + gpolice + "' , GirlPoliceStationHindi = '" + gpolice1 + "', MarriageDate = '" + marriagedate + "', MarriagePlace = '" + marriageplace + "', MarriagePlaceHindi = '" + marriageplace1 + "', WardNo = '" + wardno + "', MarriageType = '" + marriagetype + "', MarriageTypeHindi = '" + marriagetype1 + "', MobileNo = '" + mobile + "', EmailId = '" + email + "', RegistrationUnit = '" + regunit + "', RegistrationUnitHindi = '" + regunit1 + "', Registrar = '" + registrar + "', RegistrarHindi = '" + registrar1 + "', Remarks = '" + remarks + "', RemarksHindi = '" + remarks1 + "' where prefix = '" + prefix + "' and MarriageRegistrationNo = '" + regno + "'";
/* 104:123 */         statement.executeUpdate(sql);
/* 105:    */       }
/* 106:126 */       connection.close();
/* 107:    */     }
/* 108:    */     catch (Exception e)
/* 109:    */     {
/* 110:130 */       out.println(e);
/* 111:    */     }
/* 112:    */     finally
/* 113:    */     {
/* 114:133 */       out.close();
/* 115:    */     }
/* 116:135 */     response.sendRedirect("marriageedithome.jsp");
/* 117:    */   }
/* 118:    */   
/* 119:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 120:    */     throws ServletException, IOException
/* 121:    */   {
/* 122:150 */     processRequest(request, response);
/* 123:    */   }
/* 124:    */   
/* 125:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 126:    */     throws ServletException, IOException
/* 127:    */   {
/* 128:164 */     processRequest(request, response);
/* 129:    */   }
/* 130:    */   
/* 131:    */   public String getServletInfo()
/* 132:    */   {
/* 133:174 */     return "Short description";
/* 134:    */   }
/* 135:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Marriageedit2
 * JD-Core Version:    0.7.1
 */
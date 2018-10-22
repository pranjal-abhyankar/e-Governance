/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.ResultSet;
/*   6:    */ import java.sql.SQLException;
/*   7:    */ import java.sql.Statement;
/*   8:    */ import java.util.logging.Level;
/*   9:    */ import java.util.logging.Logger;
/*  10:    */ import javax.servlet.ServletException;
/*  11:    */ import javax.servlet.http.HttpServlet;
/*  12:    */ import javax.servlet.http.HttpServletRequest;
/*  13:    */ import javax.servlet.http.HttpServletResponse;
/*  14:    */ import javax.servlet.http.HttpSession;
/*  15:    */ 
/*  16:    */ public class Propertyreceipt4
/*  17:    */   extends HttpServlet
/*  18:    */ {
/*  19:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  20:    */     throws ServletException, IOException, ClassNotFoundException, SQLException
/*  21:    */   {
/*  22: 37 */     response.setContentType("text/html;charset=UTF-8");
/*  23: 38 */     PrintWriter out = response.getWriter();
/*  24:    */     
/*  25:    */ 
/*  26: 41 */     HttpSession session1 = request.getSession();
/*  27: 42 */     String bookno = session1.getAttribute("bookno").toString();
/*  28: 43 */     String receiptno = session1.getAttribute("receiptno").toString();
/*  29: 44 */     String zone = session1.getAttribute("zone").toString();
/*  30: 45 */     String year = session1.getAttribute("year").toString();
/*  31:    */     try
/*  32:    */     {
/*  33: 52 */       HttpSession nagarpalika = request.getSession();
/*  34: 53 */       String database = nagarpalika.getAttribute("database").toString();
/*  35: 54 */       String username = nagarpalika.getAttribute("username").toString();
/*  36: 55 */       String password = nagarpalika.getAttribute("password").toString();
/*  37: 56 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  38:    */       
/*  39:    */ 
/*  40: 59 */       Class.forName("com.mysql.jdbc.Driver");
/*  41: 60 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  42: 61 */       Statement statement = null;
/*  43: 62 */       ResultSet rs = null;
/*  44: 63 */       statement = connection.createStatement();
/*  45:    */       
/*  46: 65 */       String propertybal = request.getParameter("propertybal");
/*  47: 66 */       String propertycurrent = request.getParameter("propertycurrent");
/*  48: 67 */       String consolidatebal = request.getParameter("consolidatebal");
/*  49: 68 */       String consolidatecurrent = request.getParameter("consolidatecurrent");
/*  50: 69 */       String urbanbal = request.getParameter("urbanbal");
/*  51: 70 */       String urbancurrent = request.getParameter("urbancurrent");
/*  52: 71 */       String educationbal = request.getParameter("educationbal");
/*  53: 72 */       String educationcurrent = request.getParameter("educationcurrent");
/*  54: 73 */       String otherbal = request.getParameter("otherbal");
/*  55: 74 */       String othercurrent = request.getParameter("othercurrent");
/*  56: 75 */       String surchargebal = request.getParameter("surchargebal");
/*  57: 76 */       String surchargecurrent = request.getParameter("surchargecurrent");
/*  58: 77 */       String ward = request.getParameter("ward");
/*  59: 78 */       String serviceno = request.getParameter("serviceno");
/*  60: 79 */       String property_holder = null;
/*  61: 80 */       String father = null;
/*  62: 81 */       String payment = request.getParameter("payment");
/*  63: 82 */       String remarks = request.getParameter("remarks");
/*  64: 83 */       String receiptdate = request.getParameter("date");
/*  65: 84 */       String verify = "yes";
/*  66: 85 */       String operator = emp_name;
/*  67: 86 */       String prefix = serviceno.substring(0, serviceno.lastIndexOf('/'));
/*  68: 87 */       String regno = serviceno.substring(serviceno.lastIndexOf('/') + 1);
/*  69:    */       
/*  70: 89 */       String ph = "select property_holder, father, ward_no from property where prefix = '" + prefix + "' and regno = '" + regno + "'";
/*  71: 90 */       rs = statement.executeQuery(ph);
/*  72: 91 */       while (rs.next())
/*  73:    */       {
/*  74: 93 */         property_holder = rs.getString(1);
/*  75: 94 */         father = rs.getString(2);
/*  76: 95 */         ward = rs.getString(3);
/*  77:    */       }
/*  78: 98 */       out.print(father);
/*  79: 99 */       out.print(property_holder);
/*  80:    */       
/*  81:101 */       String receipt = "INSERT INTO property_receipt (receiptdate,zone,bookno,receiptno,serviceno,property_holder,father,ward_no,property_bal,consolidate_bal,education_bal,urban_bal,other_bal,surcharge_bal,property_current,consolidate_current,education_current,urban_current,other_current,surcharge_current,payment,remarks,operator,verify,year) VALUES ('" + receiptdate + "','" + zone + "','" + bookno + "','" + receiptno + "','" + serviceno + "','" + property_holder + "','" + father + "','" + ward + "','" + propertybal + "','" + consolidatebal + "','" + educationbal + "','" + urbanbal + "','" + otherbal + "','" + surchargebal + "','" + propertycurrent + "','" + consolidatecurrent + "','" + educationcurrent + "','" + urbancurrent + "','" + othercurrent + "','" + surchargecurrent + "','" + payment + "','" + remarks + "','" + operator + "','" + verify + "','" + year + "')";
/*  82:102 */       statement.executeUpdate(receipt);
/*  83:    */       
/*  84:104 */       out.print(receipt);
/*  85:    */       
/*  86:106 */       session1.setAttribute("receiptno", Integer.valueOf(Integer.parseInt(receiptno) + 1));
/*  87:107 */       response.sendRedirect("propertyreceipt3.jsp");
/*  88:108 */       statement.close();
/*  89:109 */       connection.close();
/*  90:    */     }
/*  91:    */     catch (Exception e)
/*  92:    */     {
/*  93:110 */       out.print(e);
/*  94:    */     }
/*  95:    */     finally
/*  96:    */     {
/*  97:112 */       out.close();
/*  98:    */     }
/*  99:    */   }
/* 100:    */   
/* 101:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 102:    */     throws ServletException, IOException
/* 103:    */   {
/* 104:    */     try
/* 105:    */     {
/* 106:129 */       processRequest(request, response);
/* 107:    */     }
/* 108:    */     catch (ClassNotFoundException ex)
/* 109:    */     {
/* 110:131 */       Logger.getLogger(Propertyreceipt4.class.getName()).log(Level.SEVERE, null, ex);
/* 111:    */     }
/* 112:    */     catch (SQLException ex)
/* 113:    */     {
/* 114:133 */       Logger.getLogger(Propertyreceipt4.class.getName()).log(Level.SEVERE, null, ex);
/* 115:    */     }
/* 116:    */   }
/* 117:    */   
/* 118:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 119:    */     throws ServletException, IOException
/* 120:    */   {
/* 121:    */     try
/* 122:    */     {
/* 123:149 */       processRequest(request, response);
/* 124:    */     }
/* 125:    */     catch (ClassNotFoundException ex)
/* 126:    */     {
/* 127:151 */       Logger.getLogger(Propertyreceipt4.class.getName()).log(Level.SEVERE, null, ex);
/* 128:    */     }
/* 129:    */     catch (SQLException ex)
/* 130:    */     {
/* 131:153 */       Logger.getLogger(Propertyreceipt4.class.getName()).log(Level.SEVERE, null, ex);
/* 132:    */     }
/* 133:    */   }
/* 134:    */   
/* 135:    */   public String getServletInfo()
/* 136:    */   {
/* 137:164 */     return "Short description";
/* 138:    */   }
/* 139:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Propertyreceipt4
 * JD-Core Version:    0.7.1
 */
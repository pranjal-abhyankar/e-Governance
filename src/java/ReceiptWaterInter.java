/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import java.sql.Connection;
/*  4:   */ import java.sql.DriverManager;
/*  5:   */ import java.sql.ResultSet;
/*  6:   */ import java.sql.Statement;
/*  7:   */ import javax.servlet.ServletException;
/*  8:   */ import javax.servlet.http.HttpServlet;
/*  9:   */ import javax.servlet.http.HttpServletRequest;
/* 10:   */ import javax.servlet.http.HttpServletResponse;
/* 11:   */ import javax.servlet.http.HttpSession;
/* 12:   */ 
/* 13:   */ public class ReceiptWaterInter
/* 14:   */   extends HttpServlet
/* 15:   */ {
/* 16:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 17:   */     throws ServletException, IOException
/* 18:   */   {
/* 19:32 */     response.setContentType("text/html;charset=UTF-8");
/* 20:33 */     PrintWriter out = response.getWriter();
/* 21:   */     try
/* 22:   */     {
/* 23:35 */       String zone = request.getParameter("zone");
/* 24:   */       
/* 25:   */ 
/* 26:   */ 
/* 27:   */ 
/* 28:40 */       HttpSession session1 = request.getSession();
/* 29:41 */       String s1 = session1.getAttribute("uname").toString();
/* 30:42 */       String bookno = null;
/* 31:43 */       String receiptno = null;
/* 32:   */       
/* 33:45 */       HttpSession nagarpalika = request.getSession();
/* 34:46 */       String username = nagarpalika.getAttribute("username").toString();
/* 35:47 */       String password = nagarpalika.getAttribute("password").toString();
/* 36:48 */       String database = nagarpalika.getAttribute("database").toString();
/* 37:   */       
/* 38:50 */       Class.forName("com.mysql.jdbc.Driver");
/* 39:51 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/* 40:52 */       Statement statement = null;
/* 41:53 */       ResultSet rs = null;
/* 42:54 */       ResultSet rs1 = null;
/* 43:55 */       statement = connection.createStatement();
/* 44:56 */       String v1 = null;
/* 45:57 */       String previous = "Select * from temp1water_" + s1 + " where operator = '" + s1 + "'";
/* 46:58 */       rs = statement.executeQuery(previous);
/* 47:59 */       for (; rs.next(); receiptno = rs.getString(4)) {
/* 48:59 */         zone = rs.getString(2);
/* 49:   */       }
/* 50:60 */       String verify = "select verify from receiptwater_" + s1 + " where operator = '" + s1 + "' and receiptno = '" + receiptno + "'";
/* 51:61 */       rs1 = statement.executeQuery(verify);
/* 52:62 */       while (rs1.next()) {
/* 53:63 */         v1 = rs1.getString(1);
/* 54:   */       }
/* 55:65 */       String waterbal = request.getParameter("waterbal");
/* 56:66 */       String watercurrent = request.getParameter("watercurrent");
/* 57:67 */       String surchargebal = request.getParameter("surchargebal");
/* 58:68 */       String surchargecurrent = request.getParameter("surchargecurrent");
/* 59:69 */       String ward = request.getParameter("ward");
/* 60:70 */       String serviceno = request.getParameter("service");
/* 61:71 */       String property_holder = request.getParameter("propertyholder");
/* 62:72 */       String father = request.getParameter("father");
/* 63:73 */       String payment = request.getParameter("payment");
/* 64:74 */       String remarks = request.getParameter("remarks");
/* 65:75 */       String receipt = receiptno.substring(receiptno.indexOf('/') + 1);
/* 66:76 */       String book = receiptno.substring(0, receiptno.indexOf('/'));
/* 67:77 */       String receiptdate = request.getParameter("date");
/* 68:78 */       String prefix_year = request.getParameter("prefix_year");
/* 69:79 */       int a = Integer.parseInt(receipt);
/* 70:80 */       int c = a + 1;
/* 71:81 */       int b = a;
/* 72:82 */       String update = "UPDATE receiptwater_" + s1 + " SET receiptdate = '" + receiptdate + "', serviceno = '" + serviceno + "', property_holder = '" + property_holder + "', father = '" + father + "', ward_no = '" + ward + "', water_bal = '" + waterbal + "', surcharge_bal = '" + surchargebal + "', water_current = '" + watercurrent + "' , surcharge_current = '" + surchargecurrent + "', payment = '" + payment + "', remarks = '" + remarks + "', operator = '" + s1 + "', verify = 'YES' WHERE receiptno = '" + book + "/" + b + "'";
/* 73:83 */       statement.executeUpdate(update);
/* 74:84 */       String total = "update receiptwater_" + s1 + " set total = water_bal + water_current + surcharge_bal + surcharge_current";
/* 75:85 */       statement.executeUpdate(total);
/* 76:86 */       String up = "Update temp1water_" + s1 + " set no = '" + book + "/" + c + "', receiptdate = '" + receiptdate + "'";
/* 77:87 */       statement.executeUpdate(up);
/* 78:   */       
/* 79:   */ 
/* 80:90 */       String sql1 = "insert into receiptwater_" + s1 + " (receiptdate, zone, receiptno, operator) values ('" + receiptdate + "' , '" + zone + "' , '" + book + "/" + c + "' , '" + s1 + "')";
/* 81:91 */       statement.executeUpdate(sql1);
/* 82:   */       
/* 83:93 */       response.sendRedirect("enterreceiptwater.jsp");
/* 84:94 */       statement.close();
/* 85:95 */       connection.close();
/* 86:   */     }
/* 87:   */     catch (Exception ex) {}
/* 88:   */   }
/* 89:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     ReceiptWaterInter
 * JD-Core Version:    0.7.1
 */
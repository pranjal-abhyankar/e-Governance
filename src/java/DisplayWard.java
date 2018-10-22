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
/* 13:   */ public class DisplayWard
/* 14:   */   extends HttpServlet
/* 15:   */ {
/* 16:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 17:   */     throws ServletException, IOException
/* 18:   */   {
/* 19:32 */     response.setContentType("text/html;charset=UTF-8");
/* 20:33 */     PrintWriter out = response.getWriter();
/* 21:34 */     String str = request.getParameter("queryString");
/* 22:   */     try
/* 23:   */     {
/* 24:36 */       HttpSession nagarpalika = request.getSession();
/* 25:37 */       String database = nagarpalika.getAttribute("database").toString();
/* 26:38 */       String username = nagarpalika.getAttribute("username").toString();
/* 27:39 */       String password = nagarpalika.getAttribute("password").toString();
/* 28:40 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 29:41 */       String connectionURL = "jdbc:mysql://";
/* 30:   */       
/* 31:43 */       Class.forName("com.mysql.jdbc.Driver");
/* 32:   */       
/* 33:45 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 34:   */       
/* 35:47 */       String sql = "SELECT ward_name FROM zone WHERE zone LIKE '" + str + "%'";
/* 36:48 */       Statement stm = con.createStatement();
/* 37:49 */       stm.executeQuery(sql);
/* 38:50 */       ResultSet rs = stm.getResultSet();
/* 39:52 */       while (rs.next()) {
/* 40:53 */         out.println("<option>" + rs.getString(1) + "</option>");
/* 41:   */       }
/* 42:   */     }
/* 43:   */     catch (Exception e)
/* 44:   */     {
/* 45:57 */       out.println("Exception is ;" + e);
/* 46:   */     }
/* 47:   */   }
/* 48:   */   
/* 49:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 50:   */     throws ServletException, IOException
/* 51:   */   {
/* 52:73 */     processRequest(request, response);
/* 53:   */   }
/* 54:   */   
/* 55:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 56:   */     throws ServletException, IOException
/* 57:   */   {
/* 58:87 */     processRequest(request, response);
/* 59:   */   }
/* 60:   */   
/* 61:   */   public String getServletInfo()
/* 62:   */   {
/* 63:97 */     return "Short description";
/* 64:   */   }
/* 65:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     DisplayWard
 * JD-Core Version:    0.7.1
 */
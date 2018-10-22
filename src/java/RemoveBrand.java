/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import java.sql.Connection;
/*  4:   */ import java.sql.DriverManager;
/*  5:   */ import java.sql.Statement;
/*  6:   */ import javax.servlet.ServletException;
/*  7:   */ import javax.servlet.http.HttpServlet;
/*  8:   */ import javax.servlet.http.HttpServletRequest;
/*  9:   */ import javax.servlet.http.HttpServletResponse;
/* 10:   */ import javax.servlet.http.HttpSession;
/* 11:   */ 
/* 12:   */ public class RemoveBrand
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:32 */     response.setContentType("text/html;charset=UTF-8");
/* 19:33 */     PrintWriter out = response.getWriter();
/* 20:   */     try
/* 21:   */     {
/* 22:35 */       HttpSession nagarpalika = request.getSession();
/* 23:36 */       String username = nagarpalika.getAttribute("username").toString();
/* 24:37 */       String password = nagarpalika.getAttribute("password").toString();
/* 25:38 */       String database = nagarpalika.getAttribute("database").toString();
/* 26:39 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 27:   */       
/* 28:   */ 
/* 29:42 */       Class.forName("com.mysql.jdbc.Driver");
/* 30:43 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 31:44 */       Statement statement = connection.createStatement();
/* 32:   */       
/* 33:   */ 
/* 34:47 */       String brandid = request.getParameter("rbrandid");
/* 35:   */       
/* 36:49 */       String sql = "delete from brand where brand_id='" + brandid + "' ";
/* 37:50 */       statement.executeUpdate(sql);
/* 38:   */     }
/* 39:   */     catch (Exception w)
/* 40:   */     {
/* 41:56 */       out.print(w);
/* 42:   */     }
/* 43:   */   }
/* 44:   */   
/* 45:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 46:   */     throws ServletException, IOException
/* 47:   */   {
/* 48:72 */     processRequest(request, response);
/* 49:   */   }
/* 50:   */   
/* 51:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 52:   */     throws ServletException, IOException
/* 53:   */   {
/* 54:86 */     processRequest(request, response);
/* 55:   */   }
/* 56:   */   
/* 57:   */   public String getServletInfo()
/* 58:   */   {
/* 59:96 */     return "Short description";
/* 60:   */   }
/* 61:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RemoveBrand
 * JD-Core Version:    0.7.1
 */
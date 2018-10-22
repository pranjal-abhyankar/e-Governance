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
/* 12:   */ public class RemoveQuantity
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:32 */     response.setContentType("text/html;charset=UTF-8");
/* 19:33 */     PrintWriter out = response.getWriter();
/* 20:   */     
/* 21:35 */     String quantity = request.getParameter("quantity");
/* 22:36 */     String unit = request.getParameter("unit");
/* 23:37 */     String id = request.getParameter("hidden");
/* 24:   */     try
/* 25:   */     {
/* 26:41 */       HttpSession nagarpalika = request.getSession();
/* 27:42 */       String username = nagarpalika.getAttribute("username").toString();
/* 28:43 */       String password = nagarpalika.getAttribute("password").toString();
/* 29:44 */       String database = nagarpalika.getAttribute("database").toString();
/* 30:45 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 31:   */       
/* 32:   */ 
/* 33:48 */       String connectionURL = "jdbc:mysql://";
/* 34:49 */       Class.forName("com.mysql.jdbc.Driver");
/* 35:   */       
/* 36:51 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 37:   */       
/* 38:53 */       String sql = "update brand set quantity=quantity-'" + quantity + "' where brand_id='" + id + "' ";
/* 39:54 */       out.print(sql);
/* 40:55 */       Statement stm = connection.createStatement();
/* 41:56 */       stm.executeUpdate(sql);
/* 42:   */     }
/* 43:   */     catch (Exception e)
/* 44:   */     {
/* 45:58 */       out.println("Exception is ;" + e);
/* 46:   */     }
/* 47:60 */     response.sendRedirect("addstores.jsp");
/* 48:   */   }
/* 49:   */   
/* 50:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 51:   */     throws ServletException, IOException
/* 52:   */   {
/* 53:75 */     processRequest(request, response);
/* 54:   */   }
/* 55:   */   
/* 56:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 57:   */     throws ServletException, IOException
/* 58:   */   {
/* 59:89 */     processRequest(request, response);
/* 60:   */   }
/* 61:   */   
/* 62:   */   public String getServletInfo()
/* 63:   */   {
/* 64:99 */     return "Short description";
/* 65:   */   }
/* 66:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RemoveQuantity
 * JD-Core Version:    0.7.1
 */
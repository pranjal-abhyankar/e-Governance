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
/* 12:   */ public class RemoveCategory
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:32 */     response.setContentType("text/html;charset=UTF-8");
/* 19:33 */     PrintWriter out = response.getWriter();
/* 20:   */     try
/* 21:   */     {
/* 22:37 */       HttpSession nagarpalika = request.getSession();
/* 23:38 */       String username = nagarpalika.getAttribute("username").toString();
/* 24:39 */       String password = nagarpalika.getAttribute("password").toString();
/* 25:40 */       String database = nagarpalika.getAttribute("database").toString();
/* 26:41 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 27:   */       
/* 28:   */ 
/* 29:44 */       Class.forName("com.mysql.jdbc.Driver");
/* 30:45 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 31:46 */       Statement statement = connection.createStatement();
/* 32:47 */       String catname = request.getParameter("rcatname");
/* 33:48 */       String catid = request.getParameter("rcatid");
/* 34:   */       
/* 35:   */ 
/* 36:51 */       String sql = "delete from category where category_id='" + catid + "' ";
/* 37:52 */       statement.executeUpdate(sql);
/* 38:   */     }
/* 39:   */     catch (Exception w)
/* 40:   */     {
/* 41:56 */       out.print(w);
/* 42:   */     }
/* 43:58 */     response.sendRedirect("setupstores.jsp");
/* 44:   */   }
/* 45:   */   
/* 46:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 47:   */     throws ServletException, IOException
/* 48:   */   {
/* 49:73 */     processRequest(request, response);
/* 50:   */   }
/* 51:   */   
/* 52:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 53:   */     throws ServletException, IOException
/* 54:   */   {
/* 55:87 */     processRequest(request, response);
/* 56:   */   }
/* 57:   */   
/* 58:   */   public String getServletInfo()
/* 59:   */   {
/* 60:97 */     return "Short description";
/* 61:   */   }
/* 62:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RemoveCategory
 * JD-Core Version:    0.7.1
 */
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
/* 12:   */ public class AddCategory
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:33 */     response.setContentType("text/html;charset=UTF-8");
/* 19:34 */     PrintWriter out = response.getWriter();
/* 20:   */     try
/* 21:   */     {
/* 22:38 */       HttpSession nagarpalika = request.getSession();
/* 23:39 */       String username = nagarpalika.getAttribute("username").toString();
/* 24:40 */       String password = nagarpalika.getAttribute("password").toString();
/* 25:41 */       String database = nagarpalika.getAttribute("database").toString();
/* 26:42 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 27:   */       
/* 28:   */ 
/* 29:45 */       Class.forName("com.mysql.jdbc.Driver");
/* 30:46 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 31:47 */       Statement statement = connection.createStatement();
/* 32:48 */       String newcat = request.getParameter("catname");
/* 33:49 */       String sql = "insert into category (category_name) values ('" + newcat + "')";
/* 34:50 */       statement.executeUpdate(sql);
/* 35:   */     }
/* 36:   */     catch (Exception w) {}
/* 37:56 */     response.sendRedirect("setupstores.jsp");
/* 38:   */   }
/* 39:   */   
/* 40:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 41:   */     throws ServletException, IOException
/* 42:   */   {
/* 43:73 */     processRequest(request, response);
/* 44:   */   }
/* 45:   */   
/* 46:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 47:   */     throws ServletException, IOException
/* 48:   */   {
/* 49:87 */     processRequest(request, response);
/* 50:   */   }
/* 51:   */   
/* 52:   */   public String getServletInfo()
/* 53:   */   {
/* 54:97 */     return "Short description";
/* 55:   */   }
/* 56:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     AddCategory
 * JD-Core Version:    0.7.1
 */
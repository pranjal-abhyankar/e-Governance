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
/* 12:   */ public class AddItem
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:33 */     response.setContentType("text/html;charset=UTF-8");
/* 19:34 */     PrintWriter out = response.getWriter();
/* 20:   */     try
/* 21:   */     {
/* 22:36 */       HttpSession nagarpalika = request.getSession();
/* 23:37 */       String username = nagarpalika.getAttribute("username").toString();
/* 24:38 */       String password = nagarpalika.getAttribute("password").toString();
/* 25:39 */       String database = nagarpalika.getAttribute("database").toString();
/* 26:40 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/* 27:   */       
/* 28:   */ 
/* 29:43 */       Class.forName("com.mysql.jdbc.Driver");
/* 30:44 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 31:45 */       Statement statement = connection.createStatement();
/* 32:46 */       String newitem = request.getParameter("itemname");
/* 33:47 */       String catid = request.getParameter("itemname1");
/* 34:48 */       String sql = "insert into item (category_id,item_name) values (" + catid + ",'" + newitem + "')";
/* 35:49 */       statement.executeUpdate(sql);
/* 36:   */     }
/* 37:   */     catch (Exception w) {}
/* 38:54 */     response.sendRedirect("setupstores.jsp");
/* 39:   */   }
/* 40:   */   
/* 41:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 42:   */     throws ServletException, IOException
/* 43:   */   {
/* 44:69 */     processRequest(request, response);
/* 45:   */   }
/* 46:   */   
/* 47:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 48:   */     throws ServletException, IOException
/* 49:   */   {
/* 50:83 */     processRequest(request, response);
/* 51:   */   }
/* 52:   */   
/* 53:   */   public String getServletInfo()
/* 54:   */   {
/* 55:93 */     return "Short description";
/* 56:   */   }
/* 57:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     AddItem
 * JD-Core Version:    0.7.1
 */
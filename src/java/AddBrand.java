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
/* 12:   */ public class AddBrand
/* 13:   */   extends HttpServlet
/* 14:   */ {
/* 15:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 16:   */     throws ServletException, IOException
/* 17:   */   {
/* 18:33 */     response.setContentType("text/html;charset=UTF-8");
/* 19:34 */     PrintWriter out = response.getWriter();
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
/* 32:47 */       String itemid = request.getParameter("brandname1");
/* 33:48 */       String brandname = request.getParameter("brandname");
/* 34:49 */       String quantity = request.getParameter("Quantity");
/* 35:50 */       String unit = request.getParameter("Unit");
/* 36:51 */       String sql = "insert into brand (item_id,brand_name,quantity,unit) values (" + itemid + ",'" + brandname + "','" + quantity + "','" + unit + "')";
/* 37:52 */       statement.executeUpdate(sql);
/* 38:   */     }
/* 39:   */     catch (Exception w) {}
/* 40:58 */     response.sendRedirect("setupstores.jsp");
/* 41:   */   }
/* 42:   */   
/* 43:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 44:   */     throws ServletException, IOException
/* 45:   */   {
/* 46:74 */     processRequest(request, response);
/* 47:   */   }
/* 48:   */   
/* 49:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 50:   */     throws ServletException, IOException
/* 51:   */   {
/* 52:88 */     processRequest(request, response);
/* 53:   */   }
/* 54:   */   
/* 55:   */   public String getServletInfo()
/* 56:   */   {
/* 57:98 */     return "Short description";
/* 58:   */   }
/* 59:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     AddBrand
 * JD-Core Version:    0.7.1
 */
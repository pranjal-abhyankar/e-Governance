/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.ResultSet;
/*   6:    */ import java.sql.Statement;
/*   7:    */ import javax.servlet.ServletException;
/*   8:    */ import javax.servlet.http.HttpServlet;
/*   9:    */ import javax.servlet.http.HttpServletRequest;
/*  10:    */ import javax.servlet.http.HttpServletResponse;
/*  11:    */ import javax.servlet.http.HttpSession;
/*  12:    */ 
/*  13:    */ public class PaymentIntermediate
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 35 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 36 */     PrintWriter out = response.getWriter();
/*  21:    */     try
/*  22:    */     {
/*  23: 38 */       HttpSession nagarpalika = request.getSession();
/*  24: 39 */       String username = nagarpalika.getAttribute("username").toString();
/*  25: 40 */       String password = nagarpalika.getAttribute("password").toString();
/*  26: 41 */       String database = nagarpalika.getAttribute("database").toString();
/*  27: 42 */       String str = request.getParameter("queryString");
/*  28:    */       
/*  29:    */ 
/*  30:    */ 
/*  31: 46 */       Class.forName("com.mysql.jdbc.Driver");
/*  32: 47 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=yes&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  33: 48 */       Statement statement = connection.createStatement();
/*  34: 49 */       request.setCharacterEncoding("UTF-8");
/*  35: 50 */       String query = "set names utf8";
/*  36:    */       
/*  37: 52 */       String sql = "SELECT * FROM tax_info";
/*  38: 53 */       ResultSet rs = null;
/*  39: 54 */       rs = statement.executeQuery(sql);
/*  40: 55 */       while (rs.next()) {
/*  41: 57 */         out.println("<option>" + rs.getString(1) + "</option>");
/*  42:    */       }
/*  43:    */     }
/*  44:    */     catch (Exception e)
/*  45:    */     {
/*  46: 61 */       out.print(e);
/*  47:    */     }
/*  48:    */   }
/*  49:    */   
/*  50:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  51:    */     throws ServletException, IOException
/*  52:    */   {
/*  53: 77 */     processRequest(request, response);
/*  54:    */   }
/*  55:    */   
/*  56:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  57:    */     throws ServletException, IOException
/*  58:    */   {
/*  59: 91 */     processRequest(request, response);
/*  60:    */   }
/*  61:    */   
/*  62:    */   public String getServletInfo()
/*  63:    */   {
/*  64:101 */     return "Short description";
/*  65:    */   }
/*  66:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     PaymentIntermediate
 * JD-Core Version:    0.7.1
 */
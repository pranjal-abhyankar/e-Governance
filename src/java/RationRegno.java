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
/*  13:    */ public class RationRegno
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21: 34 */     String temp = request.getParameter("queryString");
/*  22:    */     try
/*  23:    */     {
/*  24: 37 */       HttpSession nagarpalika = request.getSession();
/*  25: 38 */       String database = nagarpalika.getAttribute("database").toString();
/*  26: 39 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 40 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 41 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  29:    */       
/*  30: 43 */       String connectionURL = "jdbc:mysql://";
/*  31:    */       
/*  32: 45 */       Class.forName("com.mysql.jdbc.Driver");
/*  33:    */       
/*  34: 47 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  35:    */       
/*  36: 49 */       String sql = "SELECT max(regno) FROM rccandform1 WHERE zone = '" + temp + "'";
/*  37: 50 */       Statement stm = con.createStatement();
/*  38: 51 */       stm.executeQuery(sql);
/*  39: 52 */       ResultSet rs = stm.getResultSet();
/*  40: 54 */       while (rs.next())
/*  41:    */       {
/*  42: 55 */         int regno = rs.getInt(1);
/*  43: 56 */         regno++;
/*  44: 57 */         out.print(regno);
/*  45:    */       }
/*  46:    */     }
/*  47:    */     catch (Exception e)
/*  48:    */     {
/*  49: 61 */       out.println("Exception is ;" + e);
/*  50:    */     }
/*  51:    */   }
/*  52:    */   
/*  53:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  54:    */     throws ServletException, IOException
/*  55:    */   {
/*  56: 77 */     processRequest(request, response);
/*  57:    */   }
/*  58:    */   
/*  59:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  60:    */     throws ServletException, IOException
/*  61:    */   {
/*  62: 91 */     processRequest(request, response);
/*  63:    */   }
/*  64:    */   
/*  65:    */   public String getServletInfo()
/*  66:    */   {
/*  67:101 */     return "Short description";
/*  68:    */   }
/*  69:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RationRegno
 * JD-Core Version:    0.7.1
 */
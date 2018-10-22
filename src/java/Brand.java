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
/*  13:    */ public class Brand
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21: 34 */     HttpSession nagarpalika = request.getSession();
/*  22: 35 */     String username = nagarpalika.getAttribute("username").toString();
/*  23: 36 */     String password = nagarpalika.getAttribute("password").toString();
/*  24: 37 */     String database = nagarpalika.getAttribute("database").toString();
/*  25: 38 */     String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  26:    */     
/*  27:    */ 
/*  28: 41 */     String str = request.getParameter("queryString");
/*  29:    */     try
/*  30:    */     {
/*  31: 44 */       String connectionURL = "jdbc:mysql://";
/*  32:    */       
/*  33: 46 */       Class.forName("com.mysql.jdbc.Driver");
/*  34:    */       
/*  35: 48 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  36:    */       
/*  37: 50 */       String sql = "SELECT brand_name, brand_id FROM brand where item_id='" + str + "'";
/*  38: 51 */       Statement stm = con.createStatement();
/*  39: 52 */       stm.executeQuery(sql);
/*  40: 53 */       ResultSet rs = stm.getResultSet();
/*  41: 56 */       while (rs.next()) {
/*  42: 57 */         out.println("<option value=\"" + rs.getString(2) + "\" >" + rs.getString(1) + "</option>");
/*  43:    */       }
/*  44:    */     }
/*  45:    */     catch (Exception e)
/*  46:    */     {
/*  47: 61 */       out.println("Exception is ;" + e);
/*  48:    */     }
/*  49:    */   }
/*  50:    */   
/*  51:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  52:    */     throws ServletException, IOException
/*  53:    */   {
/*  54: 78 */     processRequest(request, response);
/*  55:    */   }
/*  56:    */   
/*  57:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  58:    */     throws ServletException, IOException
/*  59:    */   {
/*  60: 92 */     processRequest(request, response);
/*  61:    */   }
/*  62:    */   
/*  63:    */   public String getServletInfo()
/*  64:    */   {
/*  65:102 */     return "Short description";
/*  66:    */   }
/*  67:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Brand
 * JD-Core Version:    0.7.1
 */
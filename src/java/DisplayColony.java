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
/*  13:    */ public class DisplayColony
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21:    */     try
/*  22:    */     {
/*  23: 35 */       HttpSession nagarpalika = request.getSession();
/*  24: 36 */       String database = nagarpalika.getAttribute("database").toString();
/*  25: 37 */       String username = nagarpalika.getAttribute("username").toString();
/*  26: 38 */       String password = nagarpalika.getAttribute("password").toString();
/*  27: 39 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  28:    */       
/*  29: 41 */       String str = request.getParameter("queryString");
/*  30:    */       
/*  31:    */ 
/*  32: 44 */       String connectionURL = "jdbc:mysql://";
/*  33:    */       
/*  34: 46 */       Class.forName("com.mysql.jdbc.Driver");
/*  35:    */       
/*  36: 48 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  37:    */       
/*  38: 50 */       String sql = "SELECT colony_name FROM ward WHERE ward_name LIKE '" + str + "%'";
/*  39: 51 */       Statement stm = con.createStatement();
/*  40: 52 */       stm.executeQuery(sql);
/*  41: 53 */       ResultSet rs = stm.getResultSet();
/*  42: 55 */       while (rs.next()) {
/*  43: 56 */         out.println("<option>" + rs.getString(1) + "</option>");
/*  44:    */       }
/*  45:    */     }
/*  46:    */     catch (Exception e)
/*  47:    */     {
/*  48: 60 */       out.println("Exception is ;" + e);
/*  49:    */     }
/*  50:    */   }
/*  51:    */   
/*  52:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  53:    */     throws ServletException, IOException
/*  54:    */   {
/*  55: 76 */     processRequest(request, response);
/*  56:    */   }
/*  57:    */   
/*  58:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  59:    */     throws ServletException, IOException
/*  60:    */   {
/*  61: 90 */     processRequest(request, response);
/*  62:    */   }
/*  63:    */   
/*  64:    */   public String getServletInfo()
/*  65:    */   {
/*  66:100 */     return "Short description";
/*  67:    */   }
/*  68:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     DisplayColony
 * JD-Core Version:    0.7.1
 */
/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.Statement;
/*   6:    */ import javax.servlet.ServletException;
/*   7:    */ import javax.servlet.http.HttpServlet;
/*   8:    */ import javax.servlet.http.HttpServletRequest;
/*   9:    */ import javax.servlet.http.HttpServletResponse;
/*  10:    */ import javax.servlet.http.HttpSession;
/*  11:    */ 
/*  12:    */ public class AddQuantity
/*  13:    */   extends HttpServlet
/*  14:    */ {
/*  15:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  16:    */     throws ServletException, IOException
/*  17:    */   {
/*  18: 33 */     response.setContentType("text/html;charset=UTF-8");
/*  19: 34 */     PrintWriter out = response.getWriter();
/*  20:    */     try
/*  21:    */     {
/*  22: 37 */       HttpSession nagarpalika = request.getSession();
/*  23: 38 */       String username = nagarpalika.getAttribute("username").toString();
/*  24: 39 */       String password = nagarpalika.getAttribute("password").toString();
/*  25: 40 */       String database = nagarpalika.getAttribute("database").toString();
/*  26: 41 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  27:    */       
/*  28:    */ 
/*  29: 44 */       String quantity = request.getParameter("quantity");
/*  30: 45 */       String unit = request.getParameter("unit");
/*  31: 46 */       String id = request.getParameter("hidden");
/*  32:    */       
/*  33:    */ 
/*  34: 49 */       String connectionURL = "jdbc:mysql://";
/*  35:    */       
/*  36: 51 */       Class.forName("com.mysql.jdbc.Driver");
/*  37:    */       
/*  38: 53 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  39:    */       
/*  40: 55 */       String sql = "update brand set quantity=quantity+'" + quantity + "' where brand_id='" + id + "' ";
/*  41: 56 */       out.print(sql);
/*  42: 57 */       Statement stm = con.createStatement();
/*  43: 58 */       stm.executeUpdate(sql);
/*  44:    */     }
/*  45:    */     catch (Exception e)
/*  46:    */     {
/*  47: 64 */       out.println("Exception is ;" + e);
/*  48:    */     }
/*  49: 66 */     response.sendRedirect("addstores.jsp");
/*  50:    */   }
/*  51:    */   
/*  52:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  53:    */     throws ServletException, IOException
/*  54:    */   {
/*  55: 82 */     processRequest(request, response);
/*  56:    */   }
/*  57:    */   
/*  58:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  59:    */     throws ServletException, IOException
/*  60:    */   {
/*  61: 96 */     processRequest(request, response);
/*  62:    */   }
/*  63:    */   
/*  64:    */   public String getServletInfo()
/*  65:    */   {
/*  66:106 */     return "Short description";
/*  67:    */   }
/*  68:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     AddQuantity
 * JD-Core Version:    0.7.1
 */
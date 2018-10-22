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
/*  12:    */ public class TaxSave
/*  13:    */   extends HttpServlet
/*  14:    */ {
/*  15:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  16:    */     throws ServletException, IOException
/*  17:    */   {
/*  18: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  19: 33 */     PrintWriter out = response.getWriter();
/*  20:    */     try
/*  21:    */     {
/*  22: 37 */       HttpSession nagarpalika = request.getSession();
/*  23: 38 */       String database = nagarpalika.getAttribute("database").toString();
/*  24: 39 */       String username = nagarpalika.getAttribute("username").toString();
/*  25: 40 */       String password = nagarpalika.getAttribute("password").toString();
/*  26: 41 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  27:    */       
/*  28:    */ 
/*  29: 44 */       String voucherno = request.getParameter("voucherno");
/*  30: 45 */       String head = request.getParameter("head");
/*  31: 46 */       String per = request.getParameter("per");
/*  32: 47 */       String dedamt = request.getParameter("dedamt");
/*  33: 48 */       String chequeno = request.getParameter("chequeno");
/*  34: 49 */       String partyname = request.getParameter("partyname");
/*  35: 50 */       String acchead = request.getParameter("acchead");
/*  36: 51 */       String through = request.getParameter("through");
/*  37: 52 */       String chequedate = request.getParameter("chequedate");
/*  38:    */       
/*  39: 54 */       String connectionURL = "jdbc:mysql://";
/*  40:    */       
/*  41: 56 */       Class.forName("com.mysql.jdbc.Driver");
/*  42:    */       
/*  43: 58 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  44:    */       
/*  45: 60 */       String sql = "insert into tax (taxtype,taxpercentage,accounthead,partyname,chequeno,chequedate,chequebank,taxamount,voucherno) values ('" + head + "','" + per + "','" + acchead + "','" + partyname + "','" + chequeno + "','" + chequedate + "','" + through + "','" + dedamt + "','" + voucherno + "')";
/*  46: 61 */       out.print(sql);
/*  47: 62 */       Statement stm = connection.createStatement();
/*  48: 63 */       stm.executeUpdate(sql);
/*  49:    */     }
/*  50:    */     catch (Exception e)
/*  51:    */     {
/*  52: 66 */       out.println("Exception is ;" + e);
/*  53:    */     }
/*  54:    */   }
/*  55:    */   
/*  56:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  57:    */     throws ServletException, IOException
/*  58:    */   {
/*  59: 82 */     processRequest(request, response);
/*  60:    */   }
/*  61:    */   
/*  62:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  63:    */     throws ServletException, IOException
/*  64:    */   {
/*  65: 96 */     processRequest(request, response);
/*  66:    */   }
/*  67:    */   
/*  68:    */   public String getServletInfo()
/*  69:    */   {
/*  70:106 */     return "Short description";
/*  71:    */   }
/*  72:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     TaxSave
 * JD-Core Version:    0.7.1
 */
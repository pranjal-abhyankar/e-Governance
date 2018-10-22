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
/*  13:    */ public class Payment2
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
/*  27: 42 */       response.setContentType("text/plain; charset=utf-8");
/*  28: 43 */       Class.forName("com.mysql.jdbc.Driver");
/*  29:    */       
/*  30: 45 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=yes&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  31:    */       
/*  32:    */ 
/*  33: 48 */       String voucherno = request.getParameter("paymentvoucherno");
/*  34: 49 */       String voucherdate = request.getParameter("voucherdate");
/*  35: 50 */       String chequebank = request.getParameter("chequebank");
/*  36: 51 */       String chequeamount = request.getParameter("chequeamount");
/*  37: 52 */       String chequeno = request.getParameter("chequeno");
/*  38: 53 */       String partyname = request.getParameter("partyname");
/*  39: 54 */       String acchead = request.getParameter("acchead");
/*  40: 55 */       String totalamount = request.getParameter("totalamount");
/*  41: 56 */       String totaladded = request.getParameter("totaladded");
/*  42: 57 */       String totaldeducted = request.getParameter("totaldeducted");
/*  43: 58 */       String chequedate = request.getParameter("chequedate");
/*  44: 59 */       String paymentmode = request.getParameter("paymentmode");
/*  45: 60 */       String narration = request.getParameter("narration");
/*  46: 61 */       Statement statement = connection.createStatement();
/*  47:    */       
/*  48: 63 */       request.setCharacterEncoding("UTF-8");
/*  49:    */       
/*  50:    */ 
/*  51: 66 */       String query = "set names utf8";
/*  52: 67 */       ResultSet rs = null;
/*  53: 68 */       String partysave = "insert into payment values ('" + voucherno + "','" + voucherdate + "','" + partyname + "','" + acchead + "','" + narration + "','" + paymentmode + "','" + totalamount + "','" + chequeamount + "','" + totaldeducted + "','" + totaladded + "','" + chequeno + "','" + chequebank + "','" + chequedate + "')";
/*  54: 69 */       statement.executeUpdate(partysave);
/*  55: 70 */       response.sendRedirect("payment1.jsp");
/*  56:    */     }
/*  57:    */     catch (Exception e)
/*  58:    */     {
/*  59: 72 */       out.print(e);
/*  60:    */     }
/*  61:    */   }
/*  62:    */   
/*  63:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  64:    */     throws ServletException, IOException
/*  65:    */   {
/*  66: 87 */     processRequest(request, response);
/*  67:    */   }
/*  68:    */   
/*  69:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  70:    */     throws ServletException, IOException
/*  71:    */   {
/*  72:101 */     processRequest(request, response);
/*  73:    */   }
/*  74:    */   
/*  75:    */   public String getServletInfo()
/*  76:    */   {
/*  77:111 */     return "Short description";
/*  78:    */   }
/*  79:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Payment2
 * JD-Core Version:    0.7.1
 */
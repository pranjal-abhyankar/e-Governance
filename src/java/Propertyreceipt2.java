/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.SQLException;
/*   6:    */ import java.sql.Statement;
/*   7:    */ import java.util.logging.Level;
/*   8:    */ import java.util.logging.Logger;
/*   9:    */ import javax.servlet.ServletException;
/*  10:    */ import javax.servlet.http.HttpServlet;
/*  11:    */ import javax.servlet.http.HttpServletRequest;
/*  12:    */ import javax.servlet.http.HttpServletResponse;
/*  13:    */ import javax.servlet.http.HttpSession;
/*  14:    */ 
/*  15:    */ public class Propertyreceipt2
/*  16:    */   extends HttpServlet
/*  17:    */ {
/*  18:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  19:    */     throws ServletException, IOException, ClassNotFoundException, SQLException
/*  20:    */   {
/*  21: 39 */     response.setContentType("text/html;charset=UTF-8");
/*  22: 40 */     PrintWriter out = response.getWriter();
/*  23:    */     try
/*  24:    */     {
/*  25: 43 */       HttpSession nagarpalika = request.getSession();
/*  26: 44 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 45 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 46 */       String database = nagarpalika.getAttribute("database").toString();
/*  29: 47 */       Class.forName("com.mysql.jdbc.Driver");
/*  30: 48 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  31:    */       
/*  32:    */ 
/*  33:    */ 
/*  34:    */ 
/*  35: 53 */       HttpSession session1 = request.getSession();
/*  36:    */       
/*  37: 55 */       Statement statement = connection.createStatement();
/*  38: 56 */       String receiptdate = request.getParameter("date");
/*  39: 57 */       String zone = request.getParameter("zone");
/*  40: 58 */       String bookno = request.getParameter("receiptno");
/*  41: 59 */       String receiptno = request.getParameter("startingno");
/*  42: 60 */       String year = request.getParameter("year");
/*  43:    */       
/*  44: 62 */       session1.setAttribute("receiptdate", receiptdate);
/*  45: 63 */       session1.setAttribute("zone", zone);
/*  46: 64 */       session1.setAttribute("bookno", bookno);
/*  47: 65 */       session1.setAttribute("receiptno", receiptno);
/*  48: 66 */       session1.setAttribute("year", year);
/*  49:    */       
/*  50:    */ 
/*  51:    */ 
/*  52:    */ 
/*  53: 71 */       response.sendRedirect("propertyreceipt3.jsp");
/*  54:    */     }
/*  55:    */     finally
/*  56:    */     {
/*  57: 74 */       out.close();
/*  58:    */     }
/*  59:    */   }
/*  60:    */   
/*  61:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  62:    */     throws ServletException, IOException
/*  63:    */   {
/*  64:    */     try
/*  65:    */     {
/*  66: 91 */       processRequest(request, response);
/*  67:    */     }
/*  68:    */     catch (ClassNotFoundException ex)
/*  69:    */     {
/*  70: 93 */       Logger.getLogger(Propertyreceipt2.class.getName()).log(Level.SEVERE, null, ex);
/*  71:    */     }
/*  72:    */     catch (SQLException ex)
/*  73:    */     {
/*  74: 95 */       Logger.getLogger(Propertyreceipt2.class.getName()).log(Level.SEVERE, null, ex);
/*  75:    */     }
/*  76:    */   }
/*  77:    */   
/*  78:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  79:    */     throws ServletException, IOException
/*  80:    */   {
/*  81:    */     try
/*  82:    */     {
/*  83:111 */       processRequest(request, response);
/*  84:    */     }
/*  85:    */     catch (ClassNotFoundException ex)
/*  86:    */     {
/*  87:113 */       Logger.getLogger(Propertyreceipt2.class.getName()).log(Level.SEVERE, null, ex);
/*  88:    */     }
/*  89:    */     catch (SQLException ex)
/*  90:    */     {
/*  91:115 */       Logger.getLogger(Propertyreceipt2.class.getName()).log(Level.SEVERE, null, ex);
/*  92:    */     }
/*  93:    */   }
/*  94:    */   
/*  95:    */   public String getServletInfo()
/*  96:    */   {
/*  97:126 */     return "Short description";
/*  98:    */   }
/*  99:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Propertyreceipt2
 * JD-Core Version:    0.7.1
 */
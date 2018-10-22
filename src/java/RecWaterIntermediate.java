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
/*  13:    */ public class RecWaterIntermediate
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21: 34 */     String receiptdate = request.getParameter("Date");
/*  22: 35 */     String zone = request.getParameter("zone");
/*  23: 36 */     String bookno = request.getParameter("receiptno");
/*  24: 37 */     String receiptno = request.getParameter("startingno");
/*  25:    */     
/*  26: 39 */     out.print(receiptdate);out.print(zone);out.print(bookno);out.print(receiptno);
/*  27:    */     try
/*  28:    */     {
/*  29: 42 */       HttpSession nagarpalika = request.getSession();
/*  30: 43 */       String username = nagarpalika.getAttribute("username").toString();
/*  31: 44 */       String password = nagarpalika.getAttribute("password").toString();
/*  32: 45 */       String database = nagarpalika.getAttribute("database").toString();
/*  33: 46 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  34:    */       
/*  35: 48 */       Class.forName("com.mysql.jdbc.Driver");
/*  36: 49 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  37: 50 */       Statement statement = null;
/*  38: 51 */       ResultSet rs = null;
/*  39: 52 */       statement = connection.createStatement();
/*  40:    */       
/*  41: 54 */       String delete = "delete from temp1water_" + emp_name + " where operator = '" + emp_name + "'";
/*  42: 55 */       out.print(delete);
/*  43: 56 */       statement.executeUpdate(delete);
/*  44: 57 */       String delete1 = "delete from receiptwater_" + emp_name + " where verify = 'No'";
/*  45: 58 */       statement.executeUpdate(delete1);
/*  46: 59 */       if (receiptdate != null)
/*  47:    */       {
/*  48: 60 */         String sql = "insert into temp1water_" + emp_name + " (receiptdate, zone, no, operator) values ('" + receiptdate + "' , '" + zone + "' , '" + bookno + "/" + receiptno + "' , '" + emp_name + "')";
/*  49: 61 */         out.print(sql);
/*  50: 62 */         statement.executeUpdate(sql);
/*  51: 63 */         String sql1 = "insert into receiptwater_" + emp_name + " (receiptdate, zone, receiptno, operator) values ('" + receiptdate + "' , '" + zone + "' , '" + bookno + "/" + receiptno + "' , '" + emp_name + "')";
/*  52: 64 */         out.print(sql1);
/*  53: 65 */         statement.executeUpdate(sql1);
/*  54: 66 */         statement.executeUpdate(sql);
/*  55:    */       }
/*  56: 67 */       response.sendRedirect("enterreceiptwater.jsp");
/*  57: 68 */       connection.close();
/*  58:    */     }
/*  59:    */     catch (Exception ex)
/*  60:    */     {
/*  61: 70 */       out.print(ex);
/*  62:    */     }
/*  63:    */   }
/*  64:    */   
/*  65:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  66:    */     throws ServletException, IOException
/*  67:    */   {
/*  68: 85 */     processRequest(request, response);
/*  69:    */   }
/*  70:    */   
/*  71:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  72:    */     throws ServletException, IOException
/*  73:    */   {
/*  74: 99 */     processRequest(request, response);
/*  75:    */   }
/*  76:    */   
/*  77:    */   public String getServletInfo()
/*  78:    */   {
/*  79:109 */     return "Short description";
/*  80:    */   }
/*  81:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RecWaterIntermediate
 * JD-Core Version:    0.7.1
 */
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
/*  13:    */ public class PropertyRegno
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21: 34 */     String type = request.getParameter("one");
/*  22: 35 */     String zonename = request.getParameter("two");
/*  23:    */     try
/*  24:    */     {
/*  25: 39 */       HttpSession nagarpalika = request.getSession();
/*  26: 40 */       String database = nagarpalika.getAttribute("database").toString();
/*  27: 41 */       String username = nagarpalika.getAttribute("username").toString();
/*  28: 42 */       String password = nagarpalika.getAttribute("password").toString();
/*  29: 43 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  30: 44 */       String zone_pre = null;
/*  31: 45 */       int regno = 0;
/*  32:    */       
/*  33:    */ 
/*  34: 48 */       String connectionURL = "jdbc:mysql://";
/*  35:    */       
/*  36: 50 */       Class.forName("com.mysql.jdbc.Driver");
/*  37:    */       
/*  38: 52 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  39: 53 */       Statement statement = con.createStatement();
/*  40: 54 */       ResultSet rs = null;
/*  41:    */       
/*  42:    */ 
/*  43: 57 */       String zonepre = "select prefix_pro from zonename where zonename='" + zonename + "'";
/*  44: 58 */       rs = statement.executeQuery(zonepre);
/*  45: 59 */       while (rs.next()) {
/*  46: 61 */         zone_pre = rs.getString(1);
/*  47:    */       }
/*  48: 64 */       if (type.equalsIgnoreCase("Commercial")) {
/*  49: 66 */         type = "COM";
/*  50:    */       }
/*  51: 68 */       if (type.equalsIgnoreCase("Residential")) {
/*  52: 70 */         type = "RASI";
/*  53:    */       }
/*  54: 73 */       String temp = zone_pre + "" + type;
/*  55:    */       
/*  56: 75 */       HttpSession propertysession = request.getSession();
/*  57: 76 */       propertysession.setAttribute("prefix", temp);
/*  58:    */       
/*  59:    */ 
/*  60: 79 */       String sql = "SELECT max(regno) FROM property WHERE prefix = '" + temp + "'";
/*  61: 80 */       rs = statement.executeQuery(sql);
/*  62: 83 */       while (rs.next())
/*  63:    */       {
/*  64: 84 */         regno = rs.getInt(1);
/*  65: 85 */         regno++;
/*  66:    */       }
/*  67: 87 */       out.print(regno);
/*  68:    */     }
/*  69:    */     catch (Exception e)
/*  70:    */     {
/*  71: 89 */       out.println("Exception is ;" + e);
/*  72:    */     }
/*  73:    */   }
/*  74:    */   
/*  75:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  76:    */     throws ServletException, IOException
/*  77:    */   {
/*  78:105 */     processRequest(request, response);
/*  79:    */   }
/*  80:    */   
/*  81:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  82:    */     throws ServletException, IOException
/*  83:    */   {
/*  84:119 */     processRequest(request, response);
/*  85:    */   }
/*  86:    */   
/*  87:    */   public String getServletInfo()
/*  88:    */   {
/*  89:129 */     return "Short description";
/*  90:    */   }
/*  91:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     PropertyRegno
 * JD-Core Version:    0.7.1
 */
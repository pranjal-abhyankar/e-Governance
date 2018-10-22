/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.ResultSet;
/*   6:    */ import java.sql.SQLException;
/*   7:    */ import java.sql.Statement;
/*   8:    */ import java.util.logging.Level;
/*   9:    */ import java.util.logging.Logger;
/*  10:    */ import javax.servlet.ServletException;
/*  11:    */ import javax.servlet.http.HttpServlet;
/*  12:    */ import javax.servlet.http.HttpServletRequest;
/*  13:    */ import javax.servlet.http.HttpServletResponse;
/*  14:    */ import javax.servlet.http.HttpSession;
/*  15:    */ 
/*  16:    */ public class Propertyverify
/*  17:    */   extends HttpServlet
/*  18:    */ {
/*  19:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  20:    */     throws ServletException, IOException, ClassNotFoundException, SQLException
/*  21:    */   {
/*  22: 37 */     response.setContentType("text/html;charset=UTF-8");
/*  23: 38 */     PrintWriter out = response.getWriter();
/*  24:    */     try
/*  25:    */     {
/*  26: 41 */       HttpSession nagarpalika = request.getSession();
/*  27: 42 */       String username = nagarpalika.getAttribute("username").toString();
/*  28: 43 */       String password = nagarpalika.getAttribute("password").toString();
/*  29: 44 */       String database = nagarpalika.getAttribute("database").toString();
/*  30: 45 */       Class.forName("com.mysql.jdbc.Driver");
/*  31: 46 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  32:    */       
/*  33:    */ 
/*  34: 49 */       String str = request.getParameter("queryString");
/*  35: 50 */       String regno = str.substring(str.lastIndexOf('/') + 1);
/*  36: 51 */       String prefix = str.substring(0, str.lastIndexOf('/'));
/*  37:    */       
/*  38: 53 */       String sql = "select property_holderhin, fatherhin, address, house_no from property where prefix = '" + prefix + "' and regno = '" + regno + "'";
/*  39: 54 */       Statement stm = connection.createStatement();
/*  40: 55 */       stm.executeQuery(sql);
/*  41: 56 */       ResultSet rs = stm.getResultSet();
/*  42: 58 */       while (rs.next())
/*  43:    */       {
/*  44: 59 */         out.print("Property Holder:   ");
/*  45: 60 */         out.println(rs.getString(1));
/*  46: 61 */         out.print("Father Name:   ");
/*  47: 62 */         out.println(rs.getString(2));
/*  48: 63 */         out.print("Address:   ");
/*  49: 64 */         out.println(rs.getString(3));
/*  50: 65 */         out.print("House No:   ");
/*  51: 66 */         out.println(rs.getString(4));
/*  52:    */       }
/*  53:    */     }
/*  54:    */     catch (Exception e)
/*  55:    */     {
/*  56: 70 */       out.print(e);
/*  57:    */     }
/*  58:    */     finally
/*  59:    */     {
/*  60: 73 */       out.close();
/*  61:    */     }
/*  62:    */   }
/*  63:    */   
/*  64:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  65:    */     throws ServletException, IOException
/*  66:    */   {
/*  67:    */     try
/*  68:    */     {
/*  69: 90 */       processRequest(request, response);
/*  70:    */     }
/*  71:    */     catch (ClassNotFoundException ex)
/*  72:    */     {
/*  73: 92 */       Logger.getLogger(Propertyverify.class.getName()).log(Level.SEVERE, null, ex);
/*  74:    */     }
/*  75:    */     catch (SQLException ex)
/*  76:    */     {
/*  77: 94 */       Logger.getLogger(Propertyverify.class.getName()).log(Level.SEVERE, null, ex);
/*  78:    */     }
/*  79:    */   }
/*  80:    */   
/*  81:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  82:    */     throws ServletException, IOException
/*  83:    */   {
/*  84:    */     try
/*  85:    */     {
/*  86:110 */       processRequest(request, response);
/*  87:    */     }
/*  88:    */     catch (ClassNotFoundException ex)
/*  89:    */     {
/*  90:112 */       Logger.getLogger(Propertyverify.class.getName()).log(Level.SEVERE, null, ex);
/*  91:    */     }
/*  92:    */     catch (SQLException ex)
/*  93:    */     {
/*  94:114 */       Logger.getLogger(Propertyverify.class.getName()).log(Level.SEVERE, null, ex);
/*  95:    */     }
/*  96:    */   }
/*  97:    */   
/*  98:    */   public String getServletInfo()
/*  99:    */   {
/* 100:125 */     return "Short description";
/* 101:    */   }
/* 102:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Propertyverify
 * JD-Core Version:    0.7.1
 */
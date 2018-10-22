/*  1:   */ import java.io.PrintStream;
/*  2:   */ import java.sql.Connection;
/*  3:   */ import java.sql.DriverManager;
/*  4:   */ import java.sql.ResultSet;
/*  5:   */ import java.sql.Statement;
/*  6:   */ 
/*  7:   */ public class Database
/*  8:   */ {
/*  9:   */   public static String validate(String name, String pass)
/* 10:   */   {
/* 11: 6 */     String status = "false";
/* 12: 7 */     String data = null;
/* 13:   */     try
/* 14:   */     {
/* 15: 9 */       String username = null;
/* 16:10 */       String password = null;
/* 17:11 */       String database = null;
/* 18:   */       
/* 19:   */ 
/* 20:14 */       Class.forName("com.mysql.jdbc.Driver");
/* 21:   */       
/* 22:16 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/aklkarni_pithampur", "aklkarni_root", "ajk_root");
/* 23:   */       
/* 24:18 */       String sql = "SELECT * FROM master WHERE name = 'Nagar Palika Pithampur'";
/* 25:19 */       Statement stm = con.createStatement();
/* 26:20 */       stm.executeQuery(sql);
/* 27:21 */       String url = null;
/* 28:22 */       String title = null;
/* 29:23 */       ResultSet rs = stm.getResultSet();
/* 30:25 */       while (rs.next())
/* 31:   */       {
/* 32:26 */         username = rs.getString("username");
/* 33:27 */         password = rs.getString("password");
/* 34:28 */         database = rs.getString("database");
/* 35:29 */         title = rs.getString("namehin");
/* 36:   */       }
/* 37:32 */       con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/* 38:33 */       stm = con.createStatement();
/* 39:34 */       int flag = 0;
/* 40:35 */       String check = "select * from employee where username = '" + name + "' and password = '" + pass + "'";
/* 41:36 */       rs = stm.executeQuery(check);
/* 42:37 */       while (rs.next()) {
/* 43:37 */         status = "true";
/* 44:   */       }
/* 45:38 */       data = status + "&" + name + "!" + username + "@" + password + "#" + database + "$" + title;
/* 46:   */     }
/* 47:   */     catch (Exception e)
/* 48:   */     {
/* 49:41 */       System.out.println(e);
/* 50:   */     }
/* 51:42 */     return data;
/* 52:   */   }
/* 53:   */ }




/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\

 * Qualified Name:     Database

 * JD-Core Version:    0.7.1

 */
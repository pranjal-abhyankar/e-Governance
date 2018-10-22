/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import javax.servlet.ServletException;
/*  4:   */ import javax.servlet.http.HttpServlet;
/*  5:   */ import javax.servlet.http.HttpServletRequest;
/*  6:   */ import javax.servlet.http.HttpServletResponse;
/*  7:   */ 
/*  8:   */ public class CheckUser
/*  9:   */   extends HttpServlet
/* 10:   */ {
/* 11:   */   public void doPost(HttpServletRequest request, HttpServletResponse response)
/* 12:   */     throws ServletException, IOException
/* 13:   */   {
/* 14:13 */     response.setContentType("text/html");
/* 15:14 */     boolean status = true;
/* 16:15 */     PrintWriter out = response.getWriter();
/* 17:16 */     String temp = request.getParameter("queryString");
/* 18:17 */     status = temp.equalsIgnoreCase("ajk_login");
/* 19:18 */     if (status) {
/* 20:20 */       out.print("already taken");
/* 21:   */     } else {
/* 22:24 */       out.print("username available");
/* 23:   */     }
/* 24:26 */     out.close();
/* 25:   */   }
/* 26:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     CheckUser
 * JD-Core Version:    0.7.1
 */
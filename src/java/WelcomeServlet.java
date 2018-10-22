/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import javax.servlet.ServletException;
/*  4:   */ import javax.servlet.http.HttpServlet;
/*  5:   */ import javax.servlet.http.HttpServletRequest;
/*  6:   */ import javax.servlet.http.HttpServletResponse;
/*  7:   */ 
/*  8:   */ public class WelcomeServlet
/*  9:   */   extends HttpServlet
/* 10:   */ {
/* 11:   */   public void doPost(HttpServletRequest request, HttpServletResponse response)
/* 12:   */     throws ServletException, IOException
/* 13:   */   {
/* 14:14 */     response.setContentType("text/html");
/* 15:15 */     PrintWriter out = response.getWriter();
/* 16:   */     
/* 17:17 */     String n = request.getParameter("username");
/* 18:18 */     out.print("Welcome " + n);
/* 19:   */     
/* 20:20 */     out.close();
/* 21:   */   }
/* 22:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     WelcomeServlet
 * JD-Core Version:    0.7.1
 */
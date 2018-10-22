/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import javax.servlet.ServletException;
/*  4:   */ import javax.servlet.http.HttpServlet;
/*  5:   */ import javax.servlet.http.HttpServletRequest;
/*  6:   */ import javax.servlet.http.HttpServletResponse;
/*  7:   */ 
/*  8:   */ public class Sample1
/*  9:   */   extends HttpServlet
/* 10:   */ {
/* 11:   */   private static final long serialVersionUID = 1L;
/* 12:   */   
/* 13:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 14:   */     throws ServletException, IOException
/* 15:   */   {
/* 16:18 */     response.setContentType("text/html");
/* 17:19 */     PrintWriter out = response.getWriter();
/* 18:20 */     String name = request.getParameter("username");
/* 19:21 */     String password = request.getParameter("password");
/* 20:23 */     if ((name.equals("kumar")) && (password.equals("kumar123"))) {
/* 21:26 */       response.sendRedirect("sucess.jsp");
/* 22:   */     } else {
/* 23:30 */       response.sendRedirect("failure.jsp");
/* 24:   */     }
/* 25:   */   }
/* 26:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Sample1
 * JD-Core Version:    0.7.1
 */
/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import javax.servlet.ServletException;
/*  4:   */ import javax.servlet.http.HttpServlet;
/*  5:   */ import javax.servlet.http.HttpServletRequest;
/*  6:   */ import javax.servlet.http.HttpServletResponse;
/*  7:   */ import javax.servlet.http.HttpSession;
/*  8:   */ 
/*  9:   */ public class RationSession
/* 10:   */   extends HttpServlet
/* 11:   */ {
/* 12:   */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/* 13:   */     throws ServletException, IOException
/* 14:   */   {
/* 15:31 */     response.setContentType("text/html;charset=UTF-8");
/* 16:32 */     PrintWriter out = response.getWriter();
/* 17:   */     try
/* 18:   */     {
/* 19:34 */       String regno = request.getParameter("regno");
/* 20:35 */       String zone = request.getParameter("zone");
/* 21:36 */       HttpSession ration = request.getSession();
/* 22:37 */       ration.setAttribute("regno", regno);
/* 23:38 */       ration.setAttribute("zone", zone);
/* 24:39 */       response.sendRedirect("printration.jsp");
/* 25:   */     }
/* 26:   */     finally
/* 27:   */     {
/* 28:41 */       out.close();
/* 29:   */     }
/* 30:   */   }
/* 31:   */   
/* 32:   */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 33:   */     throws ServletException, IOException
/* 34:   */   {
/* 35:57 */     processRequest(request, response);
/* 36:   */   }
/* 37:   */   
/* 38:   */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 39:   */     throws ServletException, IOException
/* 40:   */   {
/* 41:71 */     processRequest(request, response);
/* 42:   */   }
/* 43:   */   
/* 44:   */   public String getServletInfo()
/* 45:   */   {
/* 46:81 */     return "Short description";
/* 47:   */   }
/* 48:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RationSession
 * JD-Core Version:    0.7.1
 */
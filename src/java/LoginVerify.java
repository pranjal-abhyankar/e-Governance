/*  1:   */ import java.io.IOException;
/*  2:   */ import java.io.PrintWriter;
/*  3:   */ import javax.servlet.ServletException;
/*  4:   */ import javax.servlet.http.HttpServlet;
/*  5:   */ import javax.servlet.http.HttpServletRequest;
/*  6:   */ import javax.servlet.http.HttpServletResponse;
/*  7:   */ import javax.servlet.http.HttpSession;
/*  8:   */ 
/*  9:   */ public class LoginVerify
/* 10:   */   extends HttpServlet
/* 11:   */ {
/* 12:   */   public void doPost(HttpServletRequest request, HttpServletResponse response)
/* 13:   */     throws ServletException, IOException
/* 14:   */   {
/* 15:13 */     int ct = 0;
/* 16:14 */     response.setContentType("text/html");
/* 17:15 */     PrintWriter out = response.getWriter();
/* 18:   */     
/* 19:17 */     String n = request.getParameter("username");
/* 20:18 */     String p = request.getParameter("password");
/* 21:19 */     String data = Database.validate(n, p);
/* 22:20 */     if (data.substring(0, data.indexOf("&")).equals("true"))
/* 23:   */     {
/* 24:21 */       HttpSession nagarpalika = request.getSession();
/* 25:22 */       nagarpalika.setAttribute("emp_name", data.substring(data.indexOf("&") + 1, data.indexOf("!")));
/* 26:23 */       nagarpalika.setAttribute("username", data.substring(data.indexOf("!") + 1, data.indexOf("@")));
/* 27:24 */       nagarpalika.setAttribute("password", data.substring(data.indexOf("@") + 1, data.indexOf("#")));
/* 28:25 */       nagarpalika.setAttribute("database", data.substring(data.indexOf("#") + 1, data.indexOf("$")));
/* 29:26 */       nagarpalika.setAttribute("title", data.substring(data.indexOf("$") + 1));
/* 30:27 */       response.sendRedirect("home.jsp");
/* 31:28 */       out.print(data.substring(data.indexOf("$") + 1));
/* 32:   */     }
/* 33:   */     else
/* 34:   */     {
/* 35:33 */       HttpSession count = request.getSession();
/* 36:34 */       ct = Integer.parseInt(count.getAttribute("count").toString());
/* 37:35 */       ct++;
/* 38:36 */       count.setAttribute("count", Integer.valueOf(ct));
/* 39:37 */       response.sendRedirect("login.jsp");
/* 40:   */     }
/* 41:40 */     out.close();
/* 42:   */   }
/* 43:   */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     LoginVerify
 * JD-Core Version:    0.7.1
 */
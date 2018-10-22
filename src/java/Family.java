/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import javax.servlet.ServletException;
/*   6:    */ import javax.servlet.http.HttpServlet;
/*   7:    */ import javax.servlet.http.HttpServletRequest;
/*   8:    */ import javax.servlet.http.HttpServletResponse;
/*   9:    */ import javax.servlet.http.HttpSession;
/*  10:    */ 
/*  11:    */ public class Family
/*  12:    */   extends HttpServlet
/*  13:    */ {
/*  14:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  15:    */     throws ServletException, IOException
/*  16:    */   {
/*  17: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  18: 33 */     PrintWriter out = response.getWriter();
/*  19:    */     try
/*  20:    */     {
/*  21: 36 */       String str = request.getParameter("queryString");
/*  22: 37 */       int total = Integer.parseInt(str);
/*  23:    */       
/*  24:    */ 
/*  25: 40 */       HttpSession nagarpalika = request.getSession();
/*  26: 41 */       String database = nagarpalika.getAttribute("database").toString();
/*  27: 42 */       String username = nagarpalika.getAttribute("username").toString();
/*  28: 43 */       String password = nagarpalika.getAttribute("password").toString();
/*  29: 44 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  30: 45 */       String connectionURL = "jdbc:mysql://";
/*  31:    */       
/*  32: 47 */       Class.forName("com.mysql.jdbc.Driver");
/*  33:    */       
/*  34: 49 */       Connection con = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  35:    */       
/*  36: 51 */       out.print("<script type=\"text/javascript\" src=\"http://www.google.com/jsapi\"></script> ");
/*  37:    */       
/*  38: 53 */       out.print("<script type=\"text/javascript\">google.load(\"elements\", \"1\", {packages: \"transliteration\"});function onLoad() {var options = {sourceLanguage: google.elements.transliteration.LanguageCode.ENGLISH,destinationLanguage: [google.elements.transliteration.LanguageCode.HINDI],shortcutKey: 'ctrl+g',transliterationEnabled: true};var control = new google.elements.transliteration.TransliterationControl(options);var ids = [ \"hwitness1\" , \"hwitness2\" , \"name1\" , \"name2\" , \"name3\" , \"name4\" , \"name5\" , \"name6\" , \"name7\" , \"name8\" , \"name9\" , \"name10\" , \"name11\" , \"name12\" , \"name13\" , \"name14\" , \"name15\"];control.makeTransliteratable(ids);control.showControl('translControl');}google.setOnLoadCallback(onLoad);</script> ");
/*  39: 54 */       out.print("<table width=\"40%\" align=\"center\">");
/*  40: 55 */       for (int i = 1; i <= total - 1; i++) {
/*  41: 57 */         out.print("<tr><td> <input class=\"form-control\" type=\"text\" name=\"name" + i + "\" id=\"name" + i + "\"> </td><td> <input class=\"form-control\" type=\"text\" name=\"age" + i + "\" id=\"age" + i + "\"> </td><td> <select class=\"form-control\" name=\"gender" + i + "\" id=\"gender" + i + "\"><option>पुरुष</option> <option>महिला</option> </select></td><td> <select class=\"form-control\" name=\"relation" + i + "\" id=\"relation" + i + "\"><option>पत्नी</option><option>पिता</option><option>माता</option><option>पुत्र</option><option>पुत्री</option><option>भाई</option><option>बहन</option><option>चाचा</option><option>चाची</option><option>बहु</option><option>भांजा</option><option>भांजी</option><option>भतीजा</option><option>भतीजी</option><option>पोता</option><option>पोती</option><option>भाभी</option><option>दादा</option><option>दादी</option><option>पति</option><option>फुफा</option><option>फुफी</option><option>ससुर</option><option>सास</option><option>जीजा</option><option>साला</option><option>दामाद</option><option>नाती</option><option>नातिन</option><option>मामा</option><option>मामी</option><option>नाना</option><option>नानी</option><option>साली</option><option>पडोसी</option><option>चेला</option><option>परपोती</option><option>देवर </option><option>देवरानी </option></select> </td><tr>");
/*  42:    */       }
/*  43: 60 */       out.print("</table>");
/*  44:    */     }
/*  45:    */     catch (Exception e)
/*  46:    */     {
/*  47: 64 */       out.println("Exception is ;" + e);
/*  48:    */     }
/*  49:    */   }
/*  50:    */   
/*  51:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  52:    */     throws ServletException, IOException
/*  53:    */   {
/*  54: 80 */     processRequest(request, response);
/*  55:    */   }
/*  56:    */   
/*  57:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  58:    */     throws ServletException, IOException
/*  59:    */   {
/*  60: 94 */     processRequest(request, response);
/*  61:    */   }
/*  62:    */   
/*  63:    */   public String getServletInfo()
/*  64:    */   {
/*  65:104 */     return "Short description";
/*  66:    */   }
/*  67:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     Family
 * JD-Core Version:    0.7.1
 */
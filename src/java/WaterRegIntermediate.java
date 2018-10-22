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
/*  13:    */ public class WaterRegIntermediate
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 32 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 33 */     PrintWriter out = response.getWriter();
/*  21:    */     try
/*  22:    */     {
/*  23: 36 */       HttpSession nagarpalika = request.getSession();
/*  24: 37 */       String database = nagarpalika.getAttribute("database").toString();
/*  25: 38 */       String username = nagarpalika.getAttribute("username").toString();
/*  26: 39 */       String password = nagarpalika.getAttribute("password").toString();
/*  27: 40 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  28:    */       
/*  29:    */ 
/*  30:    */ 
/*  31: 44 */       Class.forName("com.mysql.jdbc.Driver");
/*  32:    */       
/*  33: 46 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "", "" + username + "", "" + password + "");
/*  34: 47 */       ResultSet rs = null;
/*  35: 48 */       Statement statement = connection.createStatement();
/*  36:    */       
/*  37:    */ 
/*  38:    */ 
/*  39: 52 */       String regdate = request.getParameter("regdate");
/*  40: 53 */       String uid = request.getParameter("uid");
/*  41: 54 */       String hname = request.getParameter("hname");
/*  42: 55 */       String name = request.getParameter("name");
/*  43: 56 */       String connstatus = request.getParameter("connstatus");
/*  44: 57 */       String meterstatus = request.getParameter("meterstatus");
/*  45: 58 */       String connappstatus = request.getParameter("connappstatus");
/*  46: 59 */       String connperdate = request.getParameter("connperdate");
/*  47: 60 */       String reconnperdate = request.getParameter("reconnperdate");
/*  48: 61 */       String connsize = request.getParameter("connsize");
/*  49: 62 */       String toti = request.getParameter("toti");
/*  50: 63 */       String fhname = request.getParameter("fhname");
/*  51: 64 */       String fname = request.getParameter("fname");
/*  52: 65 */       String zone = request.getParameter("zone");
/*  53: 66 */       String wardname = request.getParameter("wardname");
/*  54: 67 */       String houseno = request.getParameter("houseno");
/*  55: 68 */       String plotno = request.getParameter("plotno");
/*  56: 69 */       String buildno = request.getParameter("buildno");
/*  57: 70 */       String buildname = request.getParameter("buildname");
/*  58: 71 */       String hbuildname = request.getParameter("hbuildname");
/*  59: 72 */       String colony = request.getParameter("colony");
/*  60: 73 */       String landmark = request.getParameter("landmark");
/*  61: 74 */       String streetno = request.getParameter("streetno");
/*  62: 75 */       String streetname = request.getParameter("streetname");
/*  63: 76 */       String state = request.getParameter("state");
/*  64: 77 */       String city = request.getParameter("city");
/*  65: 78 */       String haddress = request.getParameter("haddress");
/*  66: 79 */       String address = request.getParameter("address");
/*  67: 80 */       String remark = request.getParameter("remark");
/*  68: 81 */       String email = request.getParameter("email");
/*  69: 82 */       String mobile = request.getParameter("mobile");
/*  70: 83 */       String oldconn = request.getParameter("oldconn");
/*  71: 84 */       String prefix = null;
/*  72:    */       
/*  73: 86 */       String selpre = "select prefix_water from zonename where zonename='" + zone + "'";
/*  74: 87 */       rs = statement.executeQuery(selpre);
/*  75: 88 */       while (rs.next()) {
/*  76: 89 */         prefix = rs.getString(1);
/*  77:    */       }
/*  78: 94 */       if (hname != null)
/*  79:    */       {
/*  80: 96 */         String sql = "Insert into watermaster_temp (prefix, namehin, fatherhin, oldconnectionno, addresshin,regdate,connectionapprovalstatus,connectionstatus,name,remark,houseno,father,colony,wardname,reconnectionpermissiondate,buildingno,streetname,address,emailid,connectionsize,buildingname,state,landmark,mobileno,connectionpermissiondate,nooftaps,zone,plotno,streetno,city,watermeterstatus,uniqueid,hindibuildingname) values ('" + prefix + "','" + hname + "' , '" + fhname + "' , '" + oldconn + "' , '" + haddress + "', '" + regdate + "', '" + connappstatus + "', '" + connstatus + "', '" + name + "', '" + remark + "', '" + houseno + "', '" + fname + "', '" + colony + "', '" + wardname + "', '" + reconnperdate + "', '" + buildno + "', '" + streetname + "', '" + address + "', '" + email + "', '" + connsize + "', '" + buildname + "', '" + state + "', '" + landmark + "', '" + mobile + "', '" + connperdate + "', '" + toti + "', '" + zone + "', '" + plotno + "', '" + streetno + "', '" + city + "', '" + meterstatus + "','" + uid + "','" + hbuildname + "')";
/*  81:    */         
/*  82:    */ 
/*  83: 99 */         statement.executeUpdate(sql);
/*  84:    */       }
/*  85:    */     }
/*  86:    */     catch (Exception e) {}
/*  87:107 */     response.sendRedirect("waterreg.jsp");
/*  88:    */   }
/*  89:    */   
/*  90:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*  91:    */     throws ServletException, IOException
/*  92:    */   {
/*  93:122 */     processRequest(request, response);
/*  94:    */   }
/*  95:    */   
/*  96:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*  97:    */     throws ServletException, IOException
/*  98:    */   {
/*  99:136 */     processRequest(request, response);
/* 100:    */   }
/* 101:    */   
/* 102:    */   public String getServletInfo()
/* 103:    */   {
/* 104:146 */     return "Short description";
/* 105:    */   }
/* 106:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     WaterRegIntermediate
 * JD-Core Version:    0.7.1
 */
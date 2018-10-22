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
/*  13:    */ public class RationCardEdit3
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
/*  30: 43 */       HttpSession session = request.getSession();
/*  31:    */       
/*  32:    */ 
/*  33:    */ 
/*  34: 47 */       request.setCharacterEncoding("UTF-8");
/*  35: 48 */       String witness1 = request.getParameter("witness1");
/*  36: 49 */       String hwitness1 = request.getParameter("hwitness1");
/*  37: 50 */       String prefix = request.getParameter("prefix");
/*  38: 51 */       String witness2 = request.getParameter("witness2");
/*  39: 52 */       String hwitness2 = request.getParameter("hwitness2");
/*  40: 53 */       String mobileno = request.getParameter("mobileno");
/*  41: 54 */       String documents = request.getParameter("documents");
/*  42: 55 */       String remarks = request.getParameter("remarks");
/*  43: 56 */       String hremarks = request.getParameter("hremarks");
/*  44: 57 */       String emailid = request.getParameter("emailid");
/*  45: 58 */       String registrationnumber = session.getAttribute("registrationnumber").toString();
/*  46:    */       
/*  47: 60 */       HttpSession page1 = request.getSession();
/*  48: 61 */       String fmno = page1.getAttribute("fmno").toString();
/*  49: 62 */       String hname = page1.getAttribute("hname").toString();
/*  50: 63 */       String registrationdate = page1.getAttribute("registrationdate").toString();
/*  51: 64 */       String gender = page1.getAttribute("gender").toString();
/*  52: 65 */       String name = page1.getAttribute("name").toString();
/*  53: 66 */       String fathername = page1.getAttribute("fathername").toString();
/*  54: 67 */       String fathername1 = page1.getAttribute("fathername1").toString();
/*  55: 68 */       String caste = page1.getAttribute("caste").toString();
/*  56: 69 */       String subcaste = page1.getAttribute("subcaste").toString();
/*  57: 70 */       String wardno = page1.getAttribute("wardno").toString();
/*  58: 71 */       String hstreetno = page1.getAttribute("hstreetno").toString();
/*  59: 72 */       String streetno = page1.getAttribute("streetno").toString();
/*  60: 73 */       String houseno = page1.getAttribute("houseno").toString();
/*  61: 74 */       String city = page1.getAttribute("city").toString();
/*  62: 75 */       String hcity = page1.getAttribute("hcity").toString();
/*  63: 76 */       String hcolony = page1.getAttribute("hcolony").toString();
/*  64: 77 */       String colony = page1.getAttribute("colony").toString();
/*  65: 78 */       String hlandmark = page1.getAttribute("hlandmark").toString();
/*  66: 79 */       String landmark = page1.getAttribute("landmark").toString();
/*  67: 80 */       String caddress = page1.getAttribute("caddress").toString();
/*  68: 81 */       String hcaddress = page1.getAttribute("hcaddress").toString();
/*  69: 82 */       String paddress = page1.getAttribute("paddress").toString();
/*  70: 83 */       String hpaddress = page1.getAttribute("hpaddress").toString();
/*  71: 84 */       String liveyear = page1.getAttribute("liveyear").toString();
/*  72: 85 */       String occupation = page1.getAttribute("occupation").toString();
/*  73: 86 */       String designation = page1.getAttribute("designation").toString();
/*  74: 87 */       String salarystatus = page1.getAttribute("salarystatus").toString();
/*  75: 88 */       String salary = page1.getAttribute("salary").toString();
/*  76: 89 */       String hofficeaddress = page1.getAttribute("hofficeaddress").toString();
/*  77: 90 */       String officeaddress = page1.getAttribute("officeaddress").toString();
/*  78: 91 */       String povertyno = page1.getAttribute("povertyno").toString();
/*  79: 92 */       String rationcardfor = page1.getAttribute("rationcardfor").toString();
/*  80: 93 */       String oldno = page1.getAttribute("oldno").toString();
/*  81: 94 */       String gasconnection = page1.getAttribute("gasconnection").toString();
/*  82: 95 */       String gasCNo = page1.getAttribute("gasCNo").toString();
/*  83: 96 */       String hgcownername = page1.getAttribute("hgcownername").toString();
/*  84: 97 */       String gcownername = page1.getAttribute("gcownername").toString();
/*  85: 98 */       String zone = page1.getAttribute("zone").toString();
/*  86: 99 */       Class.forName("com.mysql.jdbc.Driver");
/*  87:    */       
/*  88:101 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  89:    */       
/*  90:103 */       ResultSet rs = null;
/*  91:    */       
/*  92:105 */       Statement statement = connection.createStatement();
/*  93:106 */       String regzone = null;
/*  94:    */       
/*  95:    */ 
/*  96:109 */       String onereg = registrationnumber;
/*  97:110 */       String onename = request.getParameter("onename");
/*  98:111 */       String oneage = request.getParameter("oneage");
/*  99:112 */       String onegender = request.getParameter("onegender");
/* 100:113 */       String onerelation = request.getParameter("onerelation");
/* 101:    */       
/* 102:115 */       String reg1 = registrationnumber;
/* 103:116 */       String name1 = request.getParameter("name1");
/* 104:117 */       String age1 = request.getParameter("age1");
/* 105:118 */       String gender1 = request.getParameter("gender1");
/* 106:119 */       String relation1 = request.getParameter("relation1");
/* 107:    */       
/* 108:121 */       String reg8 = registrationnumber;
/* 109:122 */       String name8 = request.getParameter("name8");
/* 110:123 */       String age8 = request.getParameter("age8");
/* 111:124 */       String gender8 = request.getParameter("gender8");
/* 112:125 */       String relation8 = request.getParameter("relation8");
/* 113:    */       
/* 114:127 */       String reg9 = registrationnumber;
/* 115:128 */       String name9 = request.getParameter("name9");
/* 116:129 */       String age9 = request.getParameter("age9");
/* 117:130 */       String gender9 = request.getParameter("gender9");
/* 118:131 */       String relation9 = request.getParameter("relation9");
/* 119:    */       
/* 120:133 */       String reg10 = registrationnumber;
/* 121:134 */       String name10 = request.getParameter("name10");
/* 122:135 */       String age10 = request.getParameter("age10");
/* 123:136 */       String gender10 = request.getParameter("gender10");
/* 124:137 */       String relation10 = request.getParameter("relation10");
/* 125:    */       
/* 126:139 */       String reg11 = registrationnumber;
/* 127:140 */       String name11 = request.getParameter("name11");
/* 128:141 */       String age11 = request.getParameter("age11");
/* 129:142 */       String gender11 = request.getParameter("gender11");
/* 130:143 */       String relation11 = request.getParameter("relation11");
/* 131:    */       
/* 132:145 */       String reg12 = registrationnumber;
/* 133:146 */       String name12 = request.getParameter("name12");
/* 134:147 */       String age12 = request.getParameter("age12");
/* 135:148 */       String gender12 = request.getParameter("gender12");
/* 136:149 */       String relation12 = request.getParameter("relation12");
/* 137:    */       
/* 138:151 */       String reg13 = registrationnumber;
/* 139:152 */       String name13 = request.getParameter("name13");
/* 140:153 */       String age13 = request.getParameter("age13");
/* 141:154 */       String gender13 = request.getParameter("gender13");
/* 142:155 */       String relation13 = request.getParameter("relation13");
/* 143:    */       
/* 144:157 */       String reg14 = registrationnumber;
/* 145:158 */       String name14 = request.getParameter("name14");
/* 146:159 */       String age14 = request.getParameter("age14");
/* 147:160 */       String gender14 = request.getParameter("gender14");
/* 148:161 */       String relation14 = request.getParameter("relation14");
/* 149:    */       
/* 150:163 */       String reg15 = registrationnumber;
/* 151:164 */       String name15 = request.getParameter("name15");
/* 152:165 */       String age15 = request.getParameter("age15");
/* 153:166 */       String gender15 = request.getParameter("gender15");
/* 154:167 */       String relation15 = request.getParameter("relation15");
/* 155:    */       
/* 156:169 */       String reg2 = registrationnumber;
/* 157:170 */       String name2 = request.getParameter("name2");
/* 158:171 */       String age2 = request.getParameter("age2");
/* 159:172 */       String gender2 = request.getParameter("gender2");
/* 160:173 */       String relation2 = request.getParameter("relation2");
/* 161:    */       
/* 162:175 */       String reg3 = registrationnumber;
/* 163:176 */       String name3 = request.getParameter("name3");
/* 164:177 */       String age3 = request.getParameter("age3");
/* 165:178 */       String gender3 = request.getParameter("gender3");
/* 166:179 */       String relation3 = request.getParameter("relation3");
/* 167:    */       
/* 168:181 */       String reg4 = registrationnumber;
/* 169:182 */       String name4 = request.getParameter("name4");
/* 170:183 */       String age4 = request.getParameter("age4");
/* 171:184 */       String gender4 = request.getParameter("gender4");
/* 172:185 */       String relation4 = request.getParameter("relation4");
/* 173:    */       
/* 174:187 */       String reg5 = registrationnumber;
/* 175:188 */       String name5 = request.getParameter("name5");
/* 176:189 */       String age5 = request.getParameter("age5");
/* 177:190 */       String gender5 = request.getParameter("gender5");
/* 178:191 */       String relation5 = request.getParameter("relation5");
/* 179:    */       
/* 180:193 */       String reg6 = registrationnumber;
/* 181:194 */       String name6 = request.getParameter("name6");
/* 182:195 */       String age6 = request.getParameter("age6");
/* 183:196 */       String gender6 = request.getParameter("gender6");
/* 184:197 */       String relation6 = request.getParameter("relation6");
/* 185:    */       
/* 186:199 */       String reg7 = registrationnumber;
/* 187:200 */       String name7 = request.getParameter("name7");
/* 188:201 */       String age7 = request.getParameter("age7");
/* 189:202 */       String gender7 = request.getParameter("gender7");
/* 190:203 */       String relation7 = request.getParameter("relation7");
/* 191:204 */       out.print(name1);
/* 192:205 */       out.print(name2);
/* 193:206 */       out.print(onename);
/* 194:207 */       String registrationnumbers = registrationnumber;
/* 195:    */       
/* 196:209 */       out.print("<form name=\"myform\" id=\"myform\"><input name = \"regno\" id = \"regno\" value = \"<%=registrationnumbers%>\"></form>");
/* 197:    */       
/* 198:    */ 
/* 199:212 */       String delone = "delete from rccandform2 where regno = '" + registrationnumbers + "' and zone = '" + zone + "'";
/* 200:213 */       statement.executeUpdate(delone);
/* 201:    */       
/* 202:215 */       String one = "insert into rccandform2 (zone, regno, name, age, gender, reletion) values ('" + zone + "', '" + onereg + "' , '" + onename + "' , '" + oneage + "' , '" + onegender + "' , '" + onerelation + "') ,  ('" + zone + "', '" + reg1 + "' , '" + name1 + "' , '" + age1 + "' , '" + gender1 + "' , '" + relation1 + "') ,  ('" + zone + "', '" + reg2 + "' , '" + name2 + "' , '" + age2 + "' , '" + gender2 + "' , '" + relation2 + "') ,  ('" + zone + "', '" + reg3 + "' , '" + name3 + "' , '" + age3 + "' , '" + gender3 + "' , '" + relation3 + "') ,  ('" + zone + "', '" + reg4 + "' , '" + name4 + "' , '" + age4 + "' , '" + gender4 + "' , '" + relation4 + "') ,  ('" + zone + "', '" + reg5 + "' , '" + name5 + "' , '" + age5 + "' , '" + gender5 + "' , '" + relation5 + "') ,  ('" + zone + "', '" + reg6 + "' , '" + name6 + "' , '" + age6 + "' , '" + gender6 + "' , '" + relation6 + "') ,  ('" + zone + "', '" + reg7 + "' , '" + name7 + "' , '" + age7 + "' , '" + gender7 + "' , '" + relation7 + "') ,  ('" + zone + "', '" + reg8 + "' , '" + name8 + "' , '" + age8 + "' , '" + gender8 + "' , '" + relation8 + "') ,  ('" + zone + "', '" + reg9 + "' , '" + name9 + "' , '" + age9 + "' , '" + gender9 + "' , '" + relation9 + "') ,  ('" + zone + "', '" + reg10 + "' , '" + name10 + "' , '" + age10 + "' , '" + gender10 + "' , '" + relation10 + "') ,  ('" + zone + "', '" + reg11 + "' , '" + name11 + "' , '" + age11 + "' , '" + gender11 + "' , '" + relation11 + "') ,  ('" + zone + "', '" + reg12 + "' , '" + name12 + "' , '" + age12 + "' , '" + gender12 + "' , '" + relation12 + "') ,  ('" + zone + "', '" + reg13 + "' , '" + name13 + "' , '" + age13 + "' , '" + gender13 + "' , '" + relation13 + "') ,  ('" + zone + "', '" + reg14 + "' , '" + name14 + "' , '" + age14 + "' , '" + gender14 + "' , '" + relation14 + "') ,  ('" + zone + "', '" + reg15 + "' , '" + name15 + "' , '" + age15 + "' , '" + gender15 + "' , '" + relation15 + "')";
/* 203:216 */       out.print(one);
/* 204:217 */       statement.executeUpdate(one);
/* 205:    */       
/* 206:219 */       String delsql11 = "delete from rccandform1 where regno = '" + registrationnumbers + "' and zone = '" + zone + "'";
/* 207:220 */       statement.executeUpdate(delsql11);
/* 208:    */       
/* 209:222 */       String sql11 = "INSERT INTO rccandform1 (date, regNo, zone, candname, hcandname, fname, hfname, caste, subcaste, gender, wardNo, streetnn, hstreetnn, houseNo, colony, hcolony, landmark, hlandmark, city, hcity, paddress, hpaddress, caddress, hcaddress, liveyear, occupation, designation, salarystatus, salary, fmNo, oaddress, hoaddress, povertylevel, rashancardfor, orcNo, gasconnection, gasconsumerNo, gconame, hgconame) VALUES ('" + registrationdate + "', '" + registrationnumbers + "', '" + zone + "', '" + name + "', '" + hname + "', '" + fathername + "', '" + fathername1 + "', '" + caste + "', '" + subcaste + "', '" + gender + "', '" + wardno + "', '" + streetno + "', '" + hstreetno + "', '" + houseno + "', '" + colony + "', '" + hcolony + "', '" + landmark + "', '" + hlandmark + "', '" + city + "', '" + hcity + "', '" + paddress + "', '" + hpaddress + "', '" + caddress + "', '" + hcaddress + "', '" + liveyear + "', '" + occupation + "', '" + designation + "', '" + salarystatus + "' , '" + salary + "' , '" + fmno + "' , '" + officeaddress + "' , '" + hofficeaddress + "' , '" + povertyno + "' , '" + rationcardfor + "' , '" + oldno + "' , '" + gasconnection + "' , '" + gasCNo + "' , '" + gcownername + "' , '" + hgcownername + "')";
/* 210:223 */       out.print(sql11);
/* 211:224 */       statement.executeUpdate(sql11);
/* 212:    */       
/* 213:    */ 
/* 214:    */ 
/* 215:228 */       request.setCharacterEncoding("UTF-8");
/* 216:    */       
/* 217:    */ 
/* 218:231 */       String delone1 = "delete from rccandform2 where age= 'null' or age = ''";
/* 219:232 */       statement.executeUpdate(delone1);
/* 220:    */       
/* 221:234 */       String query = "set names 'utf8'";
/* 222:235 */       statement.execute(query);
/* 223:    */       
/* 224:237 */       String delsql = "delete from rcwitnessdetail where regno = '" + registrationnumbers + "' and zone = '" + zone + "'";
/* 225:238 */       statement.executeUpdate(delsql);
/* 226:    */       
/* 227:    */ 
/* 228:241 */       String sql = "INSERT INTO rcwitnessdetail ( regNo,zone, mobileno, emailid, witness1, hwitness1, witness2, hwitness2, document, remark, hremark) values ('" + registrationnumber + "' ,'" + zone + "', '" + mobileno + "' , '" + emailid + "' , '" + witness1 + "' , '" + hwitness1 + "' , '" + witness2 + "' , '" + hwitness2 + "' , '" + documents + "' , '" + remarks + "' , '" + hremarks + "')";
/* 229:242 */       out.print(sql);
/* 230:243 */       statement.executeUpdate(sql);
/* 231:    */       
/* 232:245 */       response.sendRedirect("rationedithome.jsp");
/* 233:    */       
/* 234:    */ 
/* 235:248 */       rs.close();
/* 236:249 */       connection.close();
/* 237:    */     }
/* 238:    */     catch (Exception e)
/* 239:    */     {
/* 240:253 */       out.print(e);
/* 241:    */     }
/* 242:    */   }
/* 243:    */   
/* 244:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 245:    */     throws ServletException, IOException
/* 246:    */   {
/* 247:269 */     processRequest(request, response);
/* 248:    */   }
/* 249:    */   
/* 250:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 251:    */     throws ServletException, IOException
/* 252:    */   {
/* 253:283 */     processRequest(request, response);
/* 254:    */   }
/* 255:    */   
/* 256:    */   public String getServletInfo()
/* 257:    */   {
/* 258:293 */     return "Short description";
/* 259:    */   }
/* 260:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     RationCardEdit3
 * JD-Core Version:    0.7.1
 */
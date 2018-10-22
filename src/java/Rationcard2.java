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
/*  13:    */ public class Rationcard2
/*  14:    */   extends HttpServlet
/*  15:    */ {
/*  16:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  17:    */     throws ServletException, IOException
/*  18:    */   {
/*  19: 38 */     response.setContentType("text/html;charset=UTF-8");
/*  20: 39 */     PrintWriter out = response.getWriter();
/*  21: 40 */     out.print("<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n\n   <meta charset=\"utf-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"\">\n\n    <title>SB Admin 2 - Bootstrap Admin Theme</title>\n\n    <!-- Bootstrap Core CSS -->\n    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n\n    <!-- MetisMenu CSS -->\n    <link href=\"css/plugins/metisMenu/metisMenu.min.css\" rel=\"stylesheet\">\n\n    <!-- Custom CSS -->\n    <link href=\"css/sb-admin-2.css\" rel=\"stylesheet\">\n\n    <!-- Custom Fonts -->\n    <link href=\"font-awesome-4.1.0/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n</head>\n<script language=\"javascript\">\nfunction notify()\n{\n  (\"Registration Number is \" + document.forms[\"myform\"][\"regno\"].value + \" !!\")\n    if(confirm(\"Confirm \" + document.forms[\"myform\"][\"regno\"].value))\n    document.forms[0].submit();\n  else\n    return false;   \n    window.location = \"rationcard1.jsp\";\n}\n</script> \n<body id=\"test\" onload=\"notify();\">\n\n\n");
/*  22:    */     try
/*  23:    */     {
/*  24: 82 */       HttpSession nagarpalika = request.getSession();
/*  25: 83 */       String database = nagarpalika.getAttribute("database").toString();
/*  26: 84 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 85 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 86 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  29: 87 */       response.setContentType("text/plain; charset=utf-8");
/*  30:    */       
/*  31: 89 */       Class.forName("com.mysql.jdbc.Driver");
/*  32:    */       
/*  33: 91 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  34:    */       
/*  35: 93 */       ResultSet rs = null;
/*  36:    */       
/*  37: 95 */       Statement statement = connection.createStatement();
/*  38:    */       
/*  39:    */ 
/*  40: 98 */       request.setCharacterEncoding("UTF-8");
/*  41:    */       
/*  42:100 */       String witness1 = request.getParameter("witness1");
/*  43:101 */       String hwitness1 = request.getParameter("hwitness1");
/*  44:102 */       String prefix = request.getParameter("prefix");
/*  45:103 */       String witness2 = request.getParameter("witness2");
/*  46:104 */       String hwitness2 = request.getParameter("hwitness2");
/*  47:105 */       String mobileno = request.getParameter("mobileno");
/*  48:106 */       String documents = request.getParameter("documents");
/*  49:107 */       String remarks = request.getParameter("remarks");
/*  50:108 */       String hremarks = request.getParameter("hremarks");
/*  51:109 */       String emailid = request.getParameter("emailid");
/*  52:110 */       String zone = request.getParameter("zones");
/*  53:    */       
/*  54:    */ 
/*  55:    */ 
/*  56:    */ 
/*  57:    */ 
/*  58:    */ 
/*  59:    */ 
/*  60:    */ 
/*  61:    */ 
/*  62:    */ 
/*  63:121 */       String registrationno = request.getParameter("regno");
/*  64:122 */       String registrationdate = request.getParameter("registrationdate");
/*  65:123 */       String gender = request.getParameter("gender");
/*  66:124 */       String fmno = request.getParameter("fmno");
/*  67:125 */       String hname = request.getParameter("hname");
/*  68:126 */       String name = request.getParameter("name");
/*  69:127 */       String fathername = request.getParameter("fhname");
/*  70:128 */       String fathername1 = request.getParameter("hfhname");
/*  71:129 */       String caste = request.getParameter("caste");
/*  72:130 */       String subcaste = request.getParameter("subcaste");
/*  73:131 */       String wardno = request.getParameter("ward");
/*  74:132 */       String hstreetno = request.getParameter("hstreetno");
/*  75:133 */       String streetno = request.getParameter("streetno");
/*  76:134 */       String houseno = request.getParameter("houseno");
/*  77:135 */       String city = request.getParameter("city");
/*  78:136 */       String hcity = request.getParameter("hcity");
/*  79:137 */       String hcolony = request.getParameter("hcolony");
/*  80:138 */       String colony = request.getParameter("colony");
/*  81:139 */       String hlandmark = request.getParameter("hlandmark");
/*  82:140 */       String landmark = request.getParameter("landmark");
/*  83:141 */       String caddress = request.getParameter("caddress");
/*  84:142 */       String hcaddress = request.getParameter("hcaddress");
/*  85:143 */       String paddress = request.getParameter("paddress");
/*  86:144 */       String hpaddress = request.getParameter("hpaddress");
/*  87:145 */       String liveyear = request.getParameter("liveyear");
/*  88:146 */       String occupation = request.getParameter("occupation");
/*  89:147 */       String designation = request.getParameter("designation");
/*  90:148 */       String salarystatus = request.getParameter("salarystatus");
/*  91:149 */       String salary = request.getParameter("salary");
/*  92:150 */       String hofficeaddress = request.getParameter("hofficeaddress");
/*  93:151 */       String officeaddress = request.getParameter("officeaddress");
/*  94:152 */       String povertyno = request.getParameter("povertyno");
/*  95:153 */       String shopno = request.getParameter("shopno");
/*  96:154 */       String rationcardfor = request.getParameter("rationcardfor");
/*  97:155 */       String oldno = request.getParameter("oldno");
/*  98:156 */       String gasconnection = request.getParameter("gasconnection");
/*  99:157 */       String gasCNo = request.getParameter("gasCNo");
/* 100:158 */       String hgcownername = request.getParameter("hgcownername");
/* 101:159 */       String gcownername = request.getParameter("gcownername");
/* 102:160 */       String male = request.getParameter("male");
/* 103:161 */       String female = request.getParameter("female");
/* 104:162 */       String dor = request.getParameter("registrationdate");
/* 105:163 */       String d = null;
/* 106:164 */       String m = null;
/* 107:165 */       String y = null;
/* 108:166 */       d = dor.substring(0, dor.indexOf('-'));
/* 109:167 */       m = dor.substring(dor.indexOf('-'), dor.lastIndexOf('-'));
/* 110:168 */       y = dor.substring(dor.lastIndexOf('-'));
/* 111:169 */       registrationdate = d + m + y;
/* 112:170 */       String query = "set names 'utf8'";
/* 113:171 */       statement.execute(query);
/* 114:    */       
/* 115:    */ 
/* 116:    */ 
/* 117:    */ 
/* 118:176 */       String regzone = null;
/* 119:    */       
/* 120:178 */       String seldhannad = "select max(regNo) from rccandform1 where zone = '" + zone + "'";
/* 121:179 */       rs = statement.executeQuery(seldhannad);
/* 122:180 */       while (rs.next()) {
/* 123:180 */         regzone = rs.getString(1);
/* 124:    */       }
/* 125:181 */       int a = Integer.parseInt(regzone);
/* 126:    */       
/* 127:183 */       int b = a + 1;
/* 128:    */       
/* 129:    */ 
/* 130:186 */       int onereg = b;
/* 131:187 */       String onename = request.getParameter("onename");
/* 132:188 */       String oneage = request.getParameter("oneage");
/* 133:189 */       String onegender = request.getParameter("onegender");
/* 134:190 */       String onerelation = request.getParameter("onerelation");
/* 135:    */       
/* 136:192 */       int reg1 = b;
/* 137:193 */       String name1 = request.getParameter("name1");
/* 138:194 */       String age1 = request.getParameter("age1");
/* 139:195 */       String gender1 = request.getParameter("gender1");
/* 140:196 */       String relation1 = request.getParameter("relation1");
/* 141:    */       
/* 142:198 */       int reg8 = b;
/* 143:199 */       String name8 = request.getParameter("name8");
/* 144:200 */       String age8 = request.getParameter("age8");
/* 145:201 */       String gender8 = request.getParameter("gender8");
/* 146:202 */       String relation8 = request.getParameter("relation8");
/* 147:    */       
/* 148:204 */       int reg9 = b;
/* 149:205 */       String name9 = request.getParameter("name9");
/* 150:206 */       String age9 = request.getParameter("age9");
/* 151:207 */       String gender9 = request.getParameter("gender9");
/* 152:208 */       String relation9 = request.getParameter("relation9");
/* 153:    */       
/* 154:210 */       int reg10 = b;
/* 155:211 */       String name10 = request.getParameter("name10");
/* 156:212 */       String age10 = request.getParameter("age10");
/* 157:213 */       String gender10 = request.getParameter("gender10");
/* 158:214 */       String relation10 = request.getParameter("relation10");
/* 159:    */       
/* 160:216 */       int reg11 = b;
/* 161:217 */       String name11 = request.getParameter("name11");
/* 162:218 */       String age11 = request.getParameter("age11");
/* 163:219 */       String gender11 = request.getParameter("gender11");
/* 164:220 */       String relation11 = request.getParameter("relation11");
/* 165:    */       
/* 166:222 */       int reg12 = b;
/* 167:223 */       String name12 = request.getParameter("name12");
/* 168:224 */       String age12 = request.getParameter("age12");
/* 169:225 */       String gender12 = request.getParameter("gender12");
/* 170:226 */       String relation12 = request.getParameter("relation12");
/* 171:    */       
/* 172:228 */       int reg13 = b;
/* 173:229 */       String name13 = request.getParameter("name13");
/* 174:230 */       String age13 = request.getParameter("age13");
/* 175:231 */       String gender13 = request.getParameter("gender13");
/* 176:232 */       String relation13 = request.getParameter("relation13");
/* 177:    */       
/* 178:234 */       int reg14 = b;
/* 179:235 */       String name14 = request.getParameter("name14");
/* 180:236 */       String age14 = request.getParameter("age14");
/* 181:237 */       String gender14 = request.getParameter("gender14");
/* 182:238 */       String relation14 = request.getParameter("relation14");
/* 183:    */       
/* 184:240 */       int reg15 = b;
/* 185:241 */       String name15 = request.getParameter("name15");
/* 186:242 */       String age15 = request.getParameter("age15");
/* 187:243 */       String gender15 = request.getParameter("gender15");
/* 188:244 */       String relation15 = request.getParameter("relation15");
/* 189:    */       
/* 190:246 */       int reg2 = b;
/* 191:247 */       String name2 = request.getParameter("name2");
/* 192:248 */       String age2 = request.getParameter("age2");
/* 193:249 */       String gender2 = request.getParameter("gender2");
/* 194:250 */       String relation2 = request.getParameter("relation2");
/* 195:    */       
/* 196:252 */       int reg3 = b;
/* 197:253 */       String name3 = request.getParameter("name3");
/* 198:254 */       String age3 = request.getParameter("age3");
/* 199:255 */       String gender3 = request.getParameter("gender3");
/* 200:256 */       String relation3 = request.getParameter("relation3");
/* 201:    */       
/* 202:258 */       int reg4 = b;
/* 203:259 */       String name4 = request.getParameter("name4");
/* 204:260 */       String age4 = request.getParameter("age4");
/* 205:261 */       String gender4 = request.getParameter("gender4");
/* 206:262 */       String relation4 = request.getParameter("relation4");
/* 207:    */       
/* 208:264 */       int reg5 = b;
/* 209:265 */       String name5 = request.getParameter("name5");
/* 210:266 */       String age5 = request.getParameter("age5");
/* 211:267 */       String gender5 = request.getParameter("gender5");
/* 212:268 */       String relation5 = request.getParameter("relation5");
/* 213:    */       
/* 214:270 */       int reg6 = b;
/* 215:271 */       String name6 = request.getParameter("name6");
/* 216:272 */       String age6 = request.getParameter("age6");
/* 217:273 */       String gender6 = request.getParameter("gender6");
/* 218:274 */       String relation6 = request.getParameter("relation6");
/* 219:    */       
/* 220:276 */       int reg7 = b;
/* 221:277 */       String name7 = request.getParameter("name7");
/* 222:278 */       String age7 = request.getParameter("age7");
/* 223:279 */       String gender7 = request.getParameter("gender7");
/* 224:280 */       String relation7 = request.getParameter("relation7");
/* 225:    */       
/* 226:282 */       int registrationnumbers = b;
/* 227:    */       
/* 228:284 */       out.print("<form name=\"myform\" id=\"myform\"><input name = \"regno\" id = \"regno\" value = \"<%=registrationnumbers%>\"></form>\n");
/* 229:    */       
/* 230:286 */       String sql11 = "INSERT INTO rccandform1 (date, regNo, zone, candname, hcandname, fname, hfname, caste, subcaste, gender, wardNo, streetnn, hstreetnn, houseNo, colony, hcolony, landmark, hlandmark, city, hcity, paddress, hpaddress, caddress, hcaddress, liveyear, occupation, designation, salarystatus, salary, fmNo, oaddress, hoaddress, povertylevel, rashancardfor, orcNo, gasconnection, gasconsumerNo, gconame, hgconame) VALUES ('" + registrationdate + "', '" + registrationnumbers + "', '" + zone + "', '" + name + "', '" + hname + "', '" + fathername + "', '" + fathername1 + "', '" + caste + "', '" + subcaste + "', '" + gender + "', '" + wardno + "', '" + streetno + "', '" + hstreetno + "', '" + houseno + "', '" + colony + "', '" + hcolony + "', '" + landmark + "', '" + hlandmark + "', '" + city + "', '" + hcity + "', '" + paddress + "', '" + hpaddress + "', '" + caddress + "', '" + hcaddress + "', '" + liveyear + "', '" + occupation + "', '" + designation + "', '" + salarystatus + "' , '" + salary + "' , '" + fmno + "' , '" + officeaddress + "' , '" + hofficeaddress + "' , '" + povertyno + "' , '" + rationcardfor + "' , '" + oldno + "' , '" + gasconnection + "' , '" + gasCNo + "' , '" + gcownername + "' , '" + hgcownername + "')";
/* 231:    */       
/* 232:288 */       statement.executeUpdate(sql11);
/* 233:    */       
/* 234:290 */       String one = "insert into rccandform2 (zone, regno, name, age, gender, reletion) values ('" + zone + "', '" + onereg + "' , '" + onename + "' , '" + oneage + "' , '" + onegender + "' , '" + onerelation + "') ,  ('" + zone + "', '" + reg1 + "' , '" + name1 + "' , '" + age1 + "' , '" + gender1 + "' , '" + relation1 + "') ,  ('" + zone + "', '" + reg2 + "' , '" + name2 + "' , '" + age2 + "' , '" + gender2 + "' , '" + relation2 + "') ,  ('" + zone + "', '" + reg3 + "' , '" + name3 + "' , '" + age3 + "' , '" + gender3 + "' , '" + relation3 + "') ,  ('" + zone + "', '" + reg4 + "' , '" + name4 + "' , '" + age4 + "' , '" + gender4 + "' , '" + relation4 + "') ,  ('" + zone + "', '" + reg5 + "' , '" + name5 + "' , '" + age5 + "' , '" + gender5 + "' , '" + relation5 + "') ,  ('" + zone + "', '" + reg6 + "' , '" + name6 + "' , '" + age6 + "' , '" + gender6 + "' , '" + relation6 + "') ,  ('" + zone + "', '" + reg7 + "' , '" + name7 + "' , '" + age7 + "' , '" + gender7 + "' , '" + relation7 + "') ,  ('" + zone + "', '" + reg8 + "' , '" + name8 + "' , '" + age8 + "' , '" + gender8 + "' , '" + relation8 + "') ,  ('" + zone + "', '" + reg9 + "' , '" + name9 + "' , '" + age9 + "' , '" + gender9 + "' , '" + relation9 + "') ,  ('" + zone + "', '" + reg10 + "' , '" + name10 + "' , '" + age10 + "' , '" + gender10 + "' , '" + relation10 + "') ,  ('" + zone + "', '" + reg11 + "' , '" + name11 + "' , '" + age11 + "' , '" + gender11 + "' , '" + relation11 + "') ,  ('" + zone + "', '" + reg12 + "' , '" + name12 + "' , '" + age12 + "' , '" + gender12 + "' , '" + relation12 + "') ,  ('" + zone + "', '" + reg13 + "' , '" + name13 + "' , '" + age13 + "' , '" + gender13 + "' , '" + relation13 + "') ,  ('" + zone + "', '" + reg14 + "' , '" + name14 + "' , '" + age14 + "' , '" + gender14 + "' , '" + relation14 + "') ,  ('" + zone + "', '" + reg15 + "' , '" + name15 + "' , '" + age15 + "' , '" + gender15 + "' , '" + relation15 + "')";
/* 235:    */       
/* 236:292 */       statement.executeUpdate(one);
/* 237:    */       
/* 238:    */ 
/* 239:    */ 
/* 240:    */ 
/* 241:    */ 
/* 242:    */ 
/* 243:299 */       one = "delete from rccandform2 where gender = 'null'";
/* 244:300 */       statement.executeUpdate(one);
/* 245:    */       
/* 246:    */ 
/* 247:    */ 
/* 248:    */ 
/* 249:305 */       String sql = "INSERT INTO rcwitnessdetail ( regNo,zone, mobileno, emailid, witness1, hwitness1, witness2, hwitness2, document, remark, hremark) values ('" + b + "' ,'" + zone + "', '" + mobileno + "' , '" + emailid + "' , '" + witness1 + "' , '" + hwitness1 + "' , '" + witness2 + "' , '" + hwitness2 + "' , '" + documents + "' , '" + remarks + "' , '" + hremarks + "')";
/* 250:306 */       out.print(sql);
/* 251:307 */       statement.executeUpdate(sql);
/* 252:308 */       out.print("<script language=\"javascript\">\nfunction notify()\n{\n  (\"Save the Form\")\n    if(confirm(\"Confirm Save\"))\n    document.forms[0].submit();\n  else\n    return false;   \n    window.location = \"rationcard1.jsp\";\n}\n</script> \n");
/* 253:    */       
/* 254:    */ 
/* 255:    */ 
/* 256:    */ 
/* 257:    */ 
/* 258:    */ 
/* 259:    */ 
/* 260:    */ 
/* 261:    */ 
/* 262:    */ 
/* 263:    */ 
/* 264:320 */       response.sendRedirect("rationcard1.jsp");
/* 265:321 */       out.print("</body>\n</html>\n");
/* 266:    */       
/* 267:    */ 
/* 268:    */ 
/* 269:325 */       connection.close();
/* 270:    */     }
/* 271:    */     catch (Exception e)
/* 272:    */     {
/* 273:329 */       out.print(e);
/* 274:    */     }
/* 275:    */     finally
/* 276:    */     {
/* 277:331 */       out.close();
/* 278:    */     }
/* 279:    */   }
/* 280:    */   
/* 281:    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/* 282:    */     throws ServletException, IOException
/* 283:    */   {
/* 284:347 */     processRequest(request, response);
/* 285:    */   }
/* 286:    */   
/* 287:    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/* 288:    */     throws ServletException, IOException
/* 289:    */   {
/* 290:361 */     processRequest(request, response);
/* 291:    */   }
/* 292:    */   
/* 293:    */   public String getServletInfo()
/* 294:    */   {
/* 295:371 */     return "Short description";
/* 296:    */   }
/* 297:    */ }




/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\

 * Qualified Name:     Rationcard2

 * JD-Core Version:    0.7.1

 */
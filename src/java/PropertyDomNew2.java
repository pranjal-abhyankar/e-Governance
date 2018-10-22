/*   1:    */ import java.io.IOException;
/*   2:    */ import java.io.PrintWriter;
/*   3:    */ import java.sql.Connection;
/*   4:    */ import java.sql.DriverManager;
/*   5:    */ import java.sql.ResultSet;
/*   6:    */ import java.sql.SQLException;
/*   7:    */ import java.sql.Statement;
/*   8:    */ import javax.servlet.ServletException;
/*   9:    */ import javax.servlet.http.HttpServlet;
/*  10:    */ import javax.servlet.http.HttpServletRequest;
/*  11:    */ import javax.servlet.http.HttpServletResponse;
/*  12:    */ import javax.servlet.http.HttpSession;
/*  13:    */ 
/*  14:    */ public class PropertyDomNew2
/*  15:    */   extends HttpServlet
/*  16:    */ {
/*  17:    */   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
/*  18:    */     throws ServletException, IOException, SQLException, ClassNotFoundException
/*  19:    */   {
/*  20: 35 */     response.setContentType("text/html;charset=UTF-8");
/*  21: 36 */     PrintWriter out = response.getWriter();
/*  22:    */     try
/*  23:    */     {
/*  24: 38 */       HttpSession nagarpalika = request.getSession();
/*  25: 39 */       String database = nagarpalika.getAttribute("database").toString();
/*  26: 40 */       String username = nagarpalika.getAttribute("username").toString();
/*  27: 41 */       String password = nagarpalika.getAttribute("password").toString();
/*  28: 42 */       String emp_name = nagarpalika.getAttribute("emp_name").toString();
/*  29:    */       
/*  30: 44 */       Class.forName("com.mysql.jdbc.Driver");
/*  31: 45 */       Connection connection = DriverManager.getConnection("jdbc:mysql://mysql3000.mochahost.com:3306/" + database + "?useUnicode=true&characterEncoding=UTF-8", "" + username + "", "" + password + "");
/*  32: 46 */       Statement statement = null;
/*  33: 47 */       ResultSet rs = null;
/*  34: 48 */       statement = connection.createStatement();
/*  35: 49 */       String sql1 = null;
/*  36: 50 */       request.setCharacterEncoding("UTF-8");
/*  37:    */       
/*  38:    */ 
/*  39: 53 */       String regno = request.getParameter("regno");
/*  40: 54 */       String city = request.getParameter("city");
/*  41: 55 */       String zone = request.getParameter("zone");
/*  42: 56 */       String proptype = request.getParameter("proptype");
/*  43: 57 */       String society = request.getParameter("colony");
/*  44: 58 */       String regdate = request.getParameter("regdate");
/*  45: 59 */       String basis_owner = request.getParameter("ownerbasis");
/*  46: 60 */       String property_holder = request.getParameter("ownername");
/*  47: 61 */       String father_husband = request.getParameter("fathername");
/*  48: 62 */       String property_holderhin = request.getParameter("ownernamehin");
/*  49: 63 */       String father_husbandhin = request.getParameter("fathernamehin");
/*  50: 64 */       String ward_no = request.getParameter("ward");
/*  51: 65 */       String tenant_name = request.getParameter("tenantname");
/*  52: 66 */       String tenant_namehin = request.getParameter("tenantnamehin");
/*  53: 67 */       String area = request.getParameter("area");
/*  54: 68 */       String house_no = request.getParameter("houseno");
/*  55: 69 */       String house_name = request.getParameter("propertyname");
/*  56: 70 */       String road_no = request.getParameter("roadno");
/*  57: 71 */       String contact = request.getParameter("contact");
/*  58: 72 */       String propertyuse = request.getParameter("propertyuse");
/*  59:    */       
/*  60:    */ 
/*  61: 75 */       String level1open = request.getParameter("level1open");
/*  62: 76 */       String level1position = request.getParameter("level1position");
/*  63: 77 */       String level1use = request.getParameter("level1use");
/*  64: 78 */       String level1useby = request.getParameter("level1useby");
/*  65: 79 */       String level1contype = request.getParameter("level1contype");
/*  66: 80 */       String level1room = request.getParameter("level1room");
/*  67: 81 */       String level1area = request.getParameter("level1area");
/*  68: 82 */       String level2open = request.getParameter("level2open");
/*  69: 83 */       String level2position = request.getParameter("level2position");
/*  70: 84 */       String level2use = request.getParameter("level2use");
/*  71: 85 */       String level2useby = request.getParameter("level2useby");
/*  72: 86 */       String level2contype = request.getParameter("level2contype");
/*  73: 87 */       String level2room = request.getParameter("level2room");
/*  74: 88 */       String level2area = request.getParameter("level2area");
/*  75: 89 */       String level3open = request.getParameter("level3open");
/*  76: 90 */       String level3position = request.getParameter("level3position");
/*  77: 91 */       String level3use = request.getParameter("level3use");
/*  78: 92 */       String level3useby = request.getParameter("level3useby");
/*  79: 93 */       String level3contype = request.getParameter("level3contype");
/*  80: 94 */       String level3room = request.getParameter("level3room");
/*  81: 95 */       String level3area = request.getParameter("level3area");
/*  82: 96 */       String level4open = request.getParameter("level4open");
/*  83: 97 */       String level4position = request.getParameter("level4position");
/*  84: 98 */       String level4use = request.getParameter("level4use");
/*  85: 99 */       String level4useby = request.getParameter("level4useby");
/*  86:100 */       String level4contype = request.getParameter("level4contype");
/*  87:101 */       String level4room = request.getParameter("level4room");
/*  88:102 */       String level4area = request.getParameter("level4area");
/*  89:103 */       String level5open = request.getParameter("level5open");
/*  90:104 */       String level5position = request.getParameter("level5position");
/*  91:105 */       String level5use = request.getParameter("level5use");
/*  92:106 */       String level5useby = request.getParameter("level5useby");
/*  93:107 */       String level5contype = request.getParameter("level5contype");
/*  94:108 */       String level5room = request.getParameter("level5room");
/*  95:109 */       String level5area = request.getParameter("level5area");
/*  96:110 */       String level6open = request.getParameter("level6open");
/*  97:111 */       String level6position = request.getParameter("level6position");
/*  98:112 */       String level6use = request.getParameter("level6use");
/*  99:113 */       String level6useby = request.getParameter("level6useby");
/* 100:114 */       String level6contype = request.getParameter("level6contype");
/* 101:115 */       String level6room = request.getParameter("level6room");
/* 102:116 */       String level6area = request.getParameter("level6area");
/* 103:117 */       String level7open = request.getParameter("level7open");
/* 104:118 */       String level7position = request.getParameter("level7position");
/* 105:119 */       String level7use = request.getParameter("level7use");
/* 106:120 */       String level7useby = request.getParameter("level7useby");
/* 107:121 */       String level7contype = request.getParameter("level7contype");
/* 108:122 */       String level7room = request.getParameter("level7room");
/* 109:123 */       String level7area = request.getParameter("level7area");
/* 110:124 */       String level8open = request.getParameter("level8open");
/* 111:125 */       String level8position = request.getParameter("level8position");
/* 112:126 */       String level8use = request.getParameter("level8use");
/* 113:127 */       String level8useby = request.getParameter("level8useby");
/* 114:128 */       String level8contype = request.getParameter("level8contype");
/* 115:129 */       String level8room = request.getParameter("level8room");
/* 116:130 */       String level8area = request.getParameter("level8area");
/* 117:131 */       String level9open = request.getParameter("level9open");
/* 118:132 */       String level9position = request.getParameter("level9position");
/* 119:133 */       String level9use = request.getParameter("level9use");
/* 120:134 */       String level9useby = request.getParameter("level9useby");
/* 121:135 */       String level9contype = request.getParameter("level9contype");
/* 122:136 */       String level9room = request.getParameter("level9room");
/* 123:137 */       String level9area = request.getParameter("level9area");
/* 124:138 */       String level10open = request.getParameter("level10open");
/* 125:139 */       String level10position = request.getParameter("level10position");
/* 126:140 */       String level10use = request.getParameter("level10use");
/* 127:141 */       String level10useby = request.getParameter("level10useby");
/* 128:142 */       String level10contype = request.getParameter("level10contype");
/* 129:143 */       String level10room = request.getParameter("level10room");
/* 130:144 */       String level10area = request.getParameter("level10area");
/* 131:    */       
/* 132:146 */       String mainroad = request.getParameter("mainroad");
/* 133:147 */       String govt = request.getParameter("govt");
/* 134:148 */       String holder = request.getParameter("holder");
/* 135:149 */       String usableroom = request.getParameter("usableroom");
/* 136:150 */       String totalfamily = request.getParameter("totalfamily");
/* 137:151 */       String rentaddress = request.getParameter("rentaddress");
/* 138:152 */       String rentarea = request.getParameter("rentarea");
/* 139:153 */       String rentrate = request.getParameter("rentrate");
/* 140:154 */       String waterrecharging = request.getParameter("waterrec");
/* 141:155 */       String waterconnectionno = request.getParameter("connectionno");
/* 142:156 */       String waterconnectiontype = request.getParameter("connectiontype");
/* 143:157 */       String waterconnection = request.getParameter("connection");
/* 144:158 */       String firmname = request.getParameter("firmname");
/* 145:159 */       String firmowner = request.getParameter("firmowner");
/* 146:160 */       String license = request.getParameter("license");
/* 147:161 */       String bhavan = request.getParameter("bhavan");
/* 148:162 */       String firmtenant = request.getParameter("firmtenant");
/* 149:163 */       String firmfamily = request.getParameter("firmfamily");
/* 150:164 */       String child = request.getParameter("childfamily");
/* 151:165 */       String adult = request.getParameter("adultfamily");
/* 152:166 */       String ration = request.getParameter("ration");
/* 153:167 */       String pension = request.getParameter("pension");
/* 154:168 */       String arearoom = request.getParameter("arearoom");
/* 155:    */       
/* 156:    */ 
/* 157:171 */       HttpSession propertysession = request.getSession();
/* 158:172 */       String prefix = propertysession.getAttribute("prefix").toString();
/* 159:    */       
/* 160:    */ 
/* 161:    */ 
/* 162:176 */       String sql = "insert into property (regdate, prefix, regno, ward_no, property_holder, father, tenant_name,property_holderhin, fatherhin, tenant_namehin, house_no, road_no, house_name, society, area, city, basis_owner, contact, propertyuse) values ('" + regdate + "', '" + prefix + "', '" + regno + "', '" + ward_no + "', '" + property_holder + "', '" + father_husband + "', '" + tenant_name + "', '" + property_holderhin + "', '" + father_husbandhin + "', '" + tenant_namehin + "', '" + house_no + "', '" + road_no + "', '" + house_name + "', '" + society + "', '" + area + "', '" + city + "', '" + basis_owner + "', '" + contact + "' , '" + propertyuse + "') on duplicate key update property_holder = '" + property_holder + "'";
/* 163:177 */       out.print(sql);
/* 164:178 */       statement.executeUpdate(sql);
/* 165:    */       
/* 166:180 */       String sql2 = "insert into propertydetails values ('" + prefix + "' ,'" + regno + "', '" + level1open + "' , '" + level1position + "' , '" + level1use + "' , '" + level1useby + "' , '" + level1contype + "' , '" + level1room + "' , '" + level1area + "' , '" + level2open + "' , '" + level2position + "' , '" + level2use + "' , '" + level2useby + "' , '" + level2contype + "' , '" + level2room + "' , '" + level2area + "' , '" + level3open + "' , '" + level3position + "' , '" + level3use + "' , '" + level3useby + "' , '" + level3contype + "' , '" + level3room + "' , '" + level3area + "' , '" + level4open + "' , '" + level4position + "' , '" + level4use + "' , '" + level4useby + "' , '" + level4contype + "' , '" + level4room + "' , '" + level4area + "' , '" + level5open + "' , '" + level5position + "' , '" + level5use + "' , '" + level5useby + "' , '" + level5contype + "' , '" + level5room + "' , '" + level5area + "' , '" + level6open + "' , '" + level6position + "' , '" + level6use + "' , '" + level6useby + "' , '" + level6contype + "' , '" + level6room + "' , '" + level6area + "' , '" + level7open + "' , '" + level7position + "' , '" + level7use + "' , '" + level7useby + "' , '" + level7contype + "' , '" + level7room + "' , '" + level8area + "' , '" + level8open + "' , '" + level8position + "' , '" + level8use + "' , '" + level8useby + "' , '" + level8contype + "' , '" + level8room + "' , '" + level8area + "' , '" + level9open + "' , '" + level9position + "' , '" + level9use + "' , '" + level9useby + "' , '" + level9contype + "' , '" + level9room + "' , '" + level9area + "' , '" + level10open + "' , '" + level10position + "' , '" + level10use + "' , '" + level10useby + "' , '" + level10contype + "' , '" + level10room + "' , '" + level10area + "' )";
/* 167:181 */       out.print(sql2);
/* 168:182 */       statement.executeUpdate(sql2);
/* 169:    */       
/* 170:    */ 
/* 171:    */ 
/* 172:186 */       String sql3 = "update property set main_road = '" + mainroad + "' , govt_property = '" + govt + "', holder_type = '" + holder + "', no_of_rooms = '" + usableroom + "', family_members = '" + totalfamily + "', rentaddress = '" + rentaddress + "', rentarea = '" + rentarea + "', rentrate = '" + rentrate + "', waterrecharging = '" + waterrecharging + "', waterconnectionno = '" + waterconnectionno + "', waterconnectiontype = '" + waterconnectiontype + "', waterconnection = '" + waterconnection + "', firmname = '" + firmname + "', firmownername = '" + firmowner + "', license = '" + license + "', bhavan = '" + bhavan + "', firmtenant = '" + firmtenant + "', firmfamily = '" + firmfamily + "', family_child = '" + child + "', family_adult = '" + adult + "', rationcard = '" + ration + "', pension = '" + pension + "', roomarea = '" + bhavan + "' where regno = '" + regno + "' and prefix = '" + prefix + "'";
/* 173:187 */       out.print(sql3);
/* 174:188 */       statement.executeUpdate(sql3);
/* 175:    */     }
/* 176:    */     catch (Exception ex)
/* 177:    */     {
/* 178:196 */       out.print(ex);
/* 179:    */     }
/* 180:198 */     response.sendRedirect("propertydomnew.jsp");
/* 181:    */   }
/* 182:    */ }


/* Location:           C:\Users\Administrator\Downloads\pithampurnagarpalika.iinfosoft.com\ROOT\WEB-INF\classes\
 * Qualified Name:     PropertyDomNew2
 * JD-Core Version:    0.7.1
 */
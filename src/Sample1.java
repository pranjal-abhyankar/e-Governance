

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sample1
 */
public class Sample1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		if(name.equals("kumar") && password.equals("kumar123"))
		{
			//redirecting to failure page
			response.sendRedirect("sucess.jsp");
		}
		else{
			//redirecting to failure page
			response.sendRedirect("failure.jsp");
		}
	}
	}



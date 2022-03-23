package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SISer
 */
@WebServlet("/SISer")
public class SISer extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		float p= Float.parseFloat(request.getParameter("txtp"));
		float r = Float.parseFloat(request.getParameter("txtr"));
		float t = Float.parseFloat(request.getParameter("txtt"));
		float si = (p*r*t)/100;
		//out.write("<h1>Result is "+si + "</h1>");
		response.sendRedirect("index.jsp?q="+si);
		
		
	}

}

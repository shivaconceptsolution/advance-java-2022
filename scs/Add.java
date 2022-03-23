package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add
 */
@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.print("<form action='' method='post'>");
		out.print("<input type='text' name='txtnum1' placeholder='Enter First Number' />");
		out.print("<br>");
		out.print("<input type='text' name='txtnum2' placeholder='Enter second Number' />");
		out.print("<br>");
		out.print("<input type='submit' name='btnsubmit' value='click' />");
		
		out.print("</form>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("btnsubmit")!=null)
		{
			PrintWriter out = response.getWriter();
			int a = Integer.parseInt(request.getParameter("txtnum1"));
			int b = Integer.parseInt(request.getParameter("txtnum2"));
			int c= a+b;
			out.print("Result is "+c);
			
		}
	}

}

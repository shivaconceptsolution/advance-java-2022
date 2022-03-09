package scs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Ram")
public class A extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		PrintWriter out = response.getWriter();
		out.write("<h1>Welcome in Servlet</h1>");
		out.write("<form action='' method='post'>");
		out.write("<input type='text' name='txtname' placeholder='enter name' /><br><br>");
		out.write("<input type='text' name='txtmobile' placeholder='enter mobile' /><br><br>");
		out.write("<input type='submit' name='btnsubmit' value='Submit' />");
		out.write("</form>");
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		PrintWriter out = response.getWriter();
		String name = request.getParameter("txtname");
		String mobile = request.getParameter("txtmobile");
		out.write("name is "+name);
		out.write("mobile no is"+mobile);
		
	}
	 

	
}

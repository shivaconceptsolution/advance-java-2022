package scs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Datahelper;

/**
 * Servlet implementation class StuSer
 */
@WebServlet("/StuSer")
public class StuSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try
		{
		Datahelper.connection();
		int x = Datahelper.dmlOpe("insert into student(rno,sname) values('"+request.getParameter("id")+"','"+request.getParameter("name")+"')");
		if(x!=0)
		{
			out.write("data submitted sucessfully");
			
			//response.sendRedirect("databaseui/databaseinsertion.jsp?q=insert success");
		}
		else
		{
			out.print("data not inserted successfully");
		}
		
		}
		catch(Exception ex)
		{
			out.print(ex.getMessage().toString());
		}
		
	}

}

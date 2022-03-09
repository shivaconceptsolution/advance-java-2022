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
		Class.forName("com.mysql.jdbc.Driver"); // register the driver
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobapp","root",""); //create connection string
		Statement st = conn.createStatement(); // manage SQL query
		int x = st.executeUpdate("insert into student(rno,sname) values('"+request.getParameter("txtrno")+"','"+request.getParameter("txtsname")+"')");
		if(x!=0)
		{
			out.print("data inserted successfully");
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

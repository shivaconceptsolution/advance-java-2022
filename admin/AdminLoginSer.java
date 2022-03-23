package admin;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Datahelper;

/**
 * Servlet implementation class AdminLoginSer
 */
@WebServlet("/AdminLoginSer")
public class AdminLoginSer extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			Datahelper.connection();
			
			ResultSet res=Datahelper.dqlOPe("select * from admin where username='"+request.getParameter("txtuser")+"' and password='"+request.getParameter("txtpass")+"'");
			if(res.next())
			{
				HttpSession session = request.getSession();
				if(request.getParameter("chk")!=null)
				{
				
				Cookie c1 = new Cookie("cd",request.getParameter("txtuser"));
				c1.setMaxAge(10000);
				response.addCookie(c1);
				Cookie c2 = new Cookie("pw",request.getParameter("txtpass"));
				c2.setMaxAge(10000);
				response.addCookie(c2);
				}
				session.setAttribute("uid",request.getParameter("txtuser"));
				response.sendRedirect("databaseui/databaseinsertion.jsp");
				
				
			}
			else
			{
				response.sendRedirect("index.jsp?error=invalid userid and password");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

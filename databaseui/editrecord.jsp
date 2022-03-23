<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("uid")==null)
{
	response.sendRedirect("../index.jsp");
}


%>
<%


Datahelper.connection();
ResultSet res = Datahelper.dqlOPe("select * from student where rno='"+request.getParameter("q")+"'");
if(res.next())
{
%>
<form action="../UpdateSer" method="post">
<table>
<tr><td>RNO</td><td><input type="text" name="txtrno" value="<%= res.getString(1) %>" readonly="" /> </td></tr>
<tr><td>NAME</td><td><input type="text" name="txtsname" value="<%= res.getString(2) %>" /> </td></tr>
<tr><td></td><td><input type="submit" name="btnsubmit" value="update" /></td></tr>

</table>
</form>

<%

}
%>
</body>
</html>
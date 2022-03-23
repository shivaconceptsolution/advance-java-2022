<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %> 
    <%@page import="dao.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Are you sure to delete record?</h3>
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
<form action="../DeleteSer" method="post">
<input type="hidden" name="txtrno" value="<%= res.getString("rno") %>" /> 
<table>
<tr><td>RNO</td><td><%= res.getString("rno") %> </td></tr>
<tr><td>NAME</td><td><%= res.getString("sname") %> </td></tr>
<tr><td></td><td><input type="submit" name="btnsubmit" value="Delete" /></td></tr>

</table>
</form>

<%

}
%>
</body>
</html>
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

out.print(request.getParameter("q"));
Class.forName("com.mysql.jdbc.Driver"); // register the driver
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobapp","root",""); //create connection string
Statement st = conn.createStatement(); // manage SQL query
ResultSet res = st.executeQuery("select * from student where rno='"+request.getParameter("q")+"'");
if(res.next())
{
%>

<table>
<tr><td>RNO</td><td><input type="text" value="<%= res.getString(1) %>" /> </td></tr>
<tr><td>NAME</td><td><input type="text" value="<%= res.getString(2) %>" /> </td></tr>
<tr><td></td><td><input type="submit" name="btnsubmit" value="update" /></td></tr>

</table>


<%

}
%>
</body>
</html>
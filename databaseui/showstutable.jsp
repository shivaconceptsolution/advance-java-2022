<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%
if(session.getAttribute("uid")==null)
{
	response.sendRedirect("../index.jsp");
}


%>
<div style="height:100px; background-color:#565352;">
<h3>Admin Dashboard</h3>
</div>
<div style="float:left;width:10%;height:500px;background-color:gray; ">
<ul>
<li><a href="showstutable.jsp">Show  </a></li>
<li><a href="databaseinsertion.jsp">Add Student</a></li>
</ul>



</div>
<div style="float:left;width:90%;height:500px;background-color:cyan;">
<h3>Student Records</h3>
<%

Class.forName("com.mysql.jdbc.Driver"); // register the driver
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobapp","root",""); //create connection string
Statement st = conn.createStatement(); // manage SQL query
ResultSet res = st.executeQuery("select * from student");
%>
<table>
<tr><th>Rno</th><th>Name</th></tr>
<%
while(res.next())
{ %>
	<tr><td><%= res.getString(1) %></td><td><%= res.getString(2) %></td><td><a href="editrecord.jsp?q=<%= res.getString(1) %>">Edit</a> || <a href="deleterecord.jsp?q=<%= res.getString(1) %>">Delete</a></td></tr>
<% 
}

%>
</table>

<br><br>
</div>
<div style="clear:left;">
<div style="height:50px; background-color:#565352;">
</div>
</div>
</body>
</html>
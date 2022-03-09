<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table
{
   width:400px;
}
table tr th
{
background-color: black;
color:white;
font-size:25px;
text-align:left;
}
table tr td
{
background-color: orange;

}

</style>
</head>
<body>
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
<a href="databaseinsertion.jsp">Insert Record from here</a>
</body>
</html>
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
<h3>Student Records</h3>
<%

Class.forName("com.mysql.jdbc.Driver"); // register the driver
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobapp","root",""); //create connection string
Statement st = conn.createStatement(); // manage SQL query
ResultSet res = st.executeQuery("select * from student");
while(res.next())
{
	out.print(res.getString(1) + " "+res.getString(2) + "<hr>");
}

%>
<br><br>
<a href="databaseinsertion.jsp">Insert Record from here</a>
</body>
</html>
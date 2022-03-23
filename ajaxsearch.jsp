<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" type="text/css" rel="stylesheet" />
<script>
function findstu(a)
{
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		document.getElementById("res").innerHTML = xmlhttp.responseText;
	}
	xmlhttp.open("POST","ajaxsearchcode.jsp?q="+a,true);
	xmlhttp.send();
}

</script>
</head>
<body>

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
<p>Enter data to searching </p>
<p>
<input type="text" onkeyup="findstu(this.value)" />
</p>


<div id="res"></div>
</div>
<div style="clear:left;">
<div style="height:50px; background-color:#565352;">
</div>
</div>
</body>
</html>
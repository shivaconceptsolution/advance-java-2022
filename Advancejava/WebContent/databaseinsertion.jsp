<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="StuSer" method="post">
   <input type="text" name="txtrno" placeholder="Enter rno" />
   <br><br>
   <input type="text" name="txtsname" placeholder="Enter sname" />
   <br><br>
   <input type="submit" name="btnsubmit" value="Insert" /> 
</form>
<a href="showstutable.jsp">Show Student Record </a>
</body>
</html>
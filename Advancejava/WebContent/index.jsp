<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AdminLoginSer" method="post">
            <p><input type="text" name="txtuser" placeholder="Enter username" /></p>
            <p><input type="password" name="txtpass" placeholder="Enter password" /></p>
            <p><input type="submit" name="btnsubmit" value="Login" /> </p>
        </form>
        
 <%
 if(request.getParameter("error")!=null)
 {
	 out.print(request.getParameter("error"));
 }
 
 
 
 %>       
</body>
</html>
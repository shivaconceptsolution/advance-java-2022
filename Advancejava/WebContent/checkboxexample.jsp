<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input type="checkbox" name="course[]" value="Java" />Java
<br><br>
<input type="checkbox" name="course[]" value=".NET" />.NET
<br><br>
<input type="checkbox" name="course[]" value="PHP" />PHP
<br><br>
<input type="submit" name="btnsubmit" value="Click"  />

</form>
<%
if(request.getParameter("btnsubmit")!=null)
{
	String arr[] = request.getParameterValues("course[]");
	String c="";
	for(String s:arr)
	{
		c = c+s +" ";
	}
	
	out.print("Selected Course is "+c);
}




%>
</body>
</html>
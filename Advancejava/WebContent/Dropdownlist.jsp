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
<select name="ddlcourse">
<option value="">Select Course</option>
<option value="C">C</option>
<option value="CPP">CPP</option>
<option value="DS">DS</option>
<option value="Java">Java</option>
</select>
<br><br>
<input type="submit" name="btnsubmit" value="Click"  />


</form>

<%
if(request.getParameter("btnsubmit")!=null)
{
	out.print(request.getParameter("ddlcourse"));
}


%>
</body>
</html>
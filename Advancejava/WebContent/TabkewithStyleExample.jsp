<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table
{
width:800px;
border:2px dashed red;

}
td
{
background-color:cyan;
padding-top:2px;
}
</style>
</head>
<body>
<form action="">
<table border="1" cellpadding="0" cellspacing="0">
<tr><td colspan="4" align="center">Registration Form</td></tr>
<tr><td><label for="First Name">First Name</label></td><td><input type="text" name="txtfname" required/> </td><td><label for="Last Name">Last Name</label></td><td><input type="text" name="txtlname" required/> </td></tr>
<tr><td><label for="Mobileno">Mobileno</label></td><td><input type="text" name="txtfname" required /> </td><td><label for="Email">Email</label></td><td><input type="email" name="txtlname" /> </td></tr>
<tr><td><label for="Dob">Dob</label></td><td><input type="date" name="txtdob" /> </td><td><label for="Country">Country</label></td><td>
<select>
<option value="Select Country">Select Country</option>
<option value="INDIA">INDIA</option>
<option value="USA">USA</option>
<option value="JAPAN">JAPAN</option>
</select></td></tr>
<tr><td><label for="Gender">Write Message</label></td><td colspan="3"><textarea rows="10" cols="50"></textarea></td></tr>
<tr><td colspan="4" align="center"><input type="submit" name="btnsubmit" value="Register" /> </td></tr>
</table>
</form>
</body>
</html>
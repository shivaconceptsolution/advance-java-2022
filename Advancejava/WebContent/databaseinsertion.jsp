<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*
{
margin:0px;
}
ul li
{
   display:block;
   width:100px;
   height:20px;
   background-color:#565352;
   margin-left:-30px;
  margin-top:20px;
  text-align:center;
}
ul li a
{
color:white;
}
h3
{
   color:white;
}
</style>
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
<form action="StuSer" method="post" style="padding-left:40px;padding-top:20px;">
   <input type="text" name="txtrno" placeholder="Enter rno" />
   <br><br>
   <input type="text" name="txtsname" placeholder="Enter sname" />
   <br><br>
   <input type="submit" name="btnsubmit" value="Insert" /> 
</form>

</div>
<div style="clear:left;">
<div style="height:50px; background-color:#565352;">
</div>
</div>
</body>
</html>
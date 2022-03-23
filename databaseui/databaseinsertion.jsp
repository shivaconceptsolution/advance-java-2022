<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="style.css" type="text/css" rel="stylesheet" />
<%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);

%>	

<script>
function insert_stu()
{
    var id = document.getElementById("txtrno").value;
    var name = document.getElementById("txtsname").value;
    var obj = new XMLHttpRequest();
    obj.onreadystatechange=function()
    {
    	document.getElementById("res").innerHTML=obj.responseText;
    }
    obj.open("POST","../StuSer?id="+id+"&name="+name,true);
    obj.send();
 }

</script>
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
<li><a href="logout.jsp">Logout</a></li>
</ul>



</div>
<div style="float:left;width:90%;height:500px;background-color:cyan;">

   <input type="text" id="txtrno" placeholder="Enter rno" />
   <br><br>
   <input type="text" id="txtsname" placeholder="Enter sname" />
   <br><br>
   <input type="button" name="btnsubmit" value="Insert" onclick="insert_stu()" /> 

    <div id="res">
    
    </div>
</div>
<div style="clear:left;">
<div style="height:50px; background-color:#565352;">
</div>
</div>
</body>
</html>
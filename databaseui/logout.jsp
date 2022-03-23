<%

Cookie arr[] = request.getCookies();
for(int i=0;i<arr.length;i++)
{
	 
	 if(arr[i].getName().equals("cd"))
     {
		 Cookie cuid = arr[i];
		 cuid.setPath("/Advancejava");
		 cuid.setMaxAge(0);
		 cuid.setValue("");
		 
		 
         response.addCookie(cuid);
         out.println(arr[i].getName()) ;
         out.println(arr[i].getValue()) ;
     }
	 if(arr[i].getName().equals("pw"))
     {
		 
		 Cookie pw = arr[i];
		 pw.setPath("/Advancejava");
		 pw.setMaxAge(0);
		 pw.setValue("");
		 
		 
         response.addCookie(pw);
         out.println(arr[i].getName()) ;
         out.println(arr[i].getValue()) ;
     }
	 
}

session.removeAttribute("uid");
session.invalidate();
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);

response.sendRedirect("../index.jsp");



%>
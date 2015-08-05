<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<head>  
<title>Successfully Login by JSP</title>  
</head>  
  
<body bgcolor="#999966">  
Successfully login by JSP<br />  
<br />  
<%  

String username=(String) session.getAttribute("username");  
//String passname=(String) session.getAttribute("password"); 
if(username==null) username="";  
out.print("<p>Welcome : <span style='color:red'>"+username+"</span><br>");  
out.print("<a href=\"login.jsp\" >Go back to login</a>");  
if(username.equals("admin"))
{
	

%>  

<input type="button" onclick="window.location.href='http://localhost:8084/mongodbdemo/deleteaccount.jsp'" value="Delete User"">
<%
}
%>
<br><a href='http://localhost:8084/mongodbdemo/myaccount.jsp'">MYAccount</a><br><br>

<input type="file" value="1" name="uploadfile"><input type="submit" name="upload" value="upload_data">

</body>  
</html>  
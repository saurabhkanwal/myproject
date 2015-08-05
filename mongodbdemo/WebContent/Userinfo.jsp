<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> User Successfully Deleted</h1>
tring username=(String) session.getAttribute("username");  
if(username==null) username="";  
out.print("<p>Account Deleted for User : <span style='color:red'>"+username+"</span><br>");  
out.print("<a href=\"login.jsp\" >Go back to login</a>");  
</body>
</html>
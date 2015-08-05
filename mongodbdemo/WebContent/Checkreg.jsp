<%@ page import="java.io.*,java.util.*,java.sql.*,mongodbdemo.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username = request.getParameter("userName");
System.out.println(username);

java.sql.Connection connect;
Statement statement;

dbconnection ac=new dbconnection();
connect=ac.ConnectionFile1();
statement= connect.createStatement();
ResultSet rs=statement.executeQuery("select FirstName from demo;");
while(rs.next())
{
 String str=rs.getString("FirstName");//column name
 if(str.equalsIgnoreCase(username))
 {
  response.getWriter().println("Username already exists"); 
 }
}
%>
</body>
</html>
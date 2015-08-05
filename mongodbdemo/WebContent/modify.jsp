 <%@ page language ="java" import="java.sql.*"%>
 <%@page import="mongodbdemo.*"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Update data... :)</h2>

<%
String usern1=(String) session.getAttribute("username");
String  pid= request.getParameter("PersonID");
String  fn= request.getParameter("fname");
String  ln= request.getParameter("lname");
String  ad= request.getParameter("addr");
String  ci= request.getParameter("city");

Connection conn = null;
conn = new dbconnection().ConnectionFile1();
Statement st1 = conn.createStatement();
//Class.forName("com.mysql.jdbc.Driver");  
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
 //Statement st1=con.createStatement();  
st1.executeUpdate("update demo set PersonID='"+pid+"', FirstName='"+fn+"',Lastname='"+ln+"',Address='"+ad+"',City='"+ci+"'where FirstName='"+usern1+"'"); 


%>


</body>
</html>
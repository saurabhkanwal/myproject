<%@page import="org.eclipse.jdt.internal.compiler.batch.Main"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ include file="check.jsp" %>
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

String Pid = request.getParameter("pid");
String fname = request.getParameter("name");
String lname = request.getParameter("pass");
String address = request.getParameter("addr");
String City = request.getParameter("city");
//System.out.println("Pid: "+Pid +"\nfame: "+ fname +"\nlname: "+lname +"\naddress: "+address +"\ncity" +City);
//String abc=("insert into demo(PersonID,FirstName,Lastname,Address,City) values('"+Pid+"','"+fname+"','"+lname+"','"+address+"','"+City+")");

try{
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");
     PreparedStatement st;
     st=conn.prepareStatement("insert into demo(PersonID,FirstName,Lastname,Address,City) values(?,?,?,?,?)");
     //System.out.println("enter to db");
      st.setString(1,Pid);
      st.setString(2,fname);
      st.setString(3,lname);
      st.setString(4,address);
      st.setString(5,City);
      st.executeUpdate();
      st.clearParameters(); 

      conn.close();
      
   //out.println("Data is successfully inserted!");
      response.sendRedirect("http://localhost:8084/mongodbdemo/welcome.jsp");
   
   }

catch (Exception ex) {

out.println("Unable to connect to batabase.");
ex.printStackTrace();

}




%>
</body>
</html>
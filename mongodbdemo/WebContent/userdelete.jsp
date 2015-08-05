 <%@ page language ="java" import="java.sql.*"%>
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
							String user1=request.getParameter("sUserName1");  
							String pass1=request.getParameter("sPwd1");
							System.out.println("user: "+user1 +"\npassw: "+ pass1);
							
							
							
  
                         try{  
                        	 
                        	
  
                         Class.forName("com.mysql.jdbc.Driver");  
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
                         Statement st=con.createStatement(); 
                        // System.out.println("I am here");
                         st.executeUpdate("delete from demo where  FirstName = '"+user1+"' AND  LastName= '"+pass1+"'");
                        System.out.println("I am");
                         //response.sendRedirect("welcome.jsp");
                         
                         
                         
                    }catch(Exception e1){
                    	System.out.println("catch block executed");
                    	 
                    }  
							
                    %>  
                    
</body>
</html>
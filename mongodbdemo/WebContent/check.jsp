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
							String user=request.getParameter("sUserName");  
							String pass=request.getParameter("sPwd");
							System.out.println("user: "+user +"\npassw: "+ pass);
							String connectionURL = "jdbc:mysql://localhost:3307/jsp"; 
  
                         try{  
                        	 
                        	 /* if(user.equals("") || pass.equals("")){  
                            	 System.out.println("I am here");
                                 response.sendRedirect("error.jsp"); 
                                 }
                        	 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    							 url="jdbc:mysql://localhost/TEST"
    							 user="root"  password="pass123"/>
                        	  */
  
                         Class.forName("com.mysql.jdbc.Driver");  
                         Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
                         Statement st=con.createStatement();  
                         ResultSet rs=st.executeQuery("select FirstName,LastName from demo");  
                      
                         while(rs.next())  
                             {  
                             String username=rs.getString(1);  
                             String password=rs.getString(2); 
                             System.out.println("username: "+username +"\npassword: "+ password);
                             if(user.equals(username) && pass.equals(password)){  
                                 session.setAttribute("username",username);  
                                 response.sendRedirect("http://localhost:8084/mongodbdemo/welcome.jsp");  
                             }  
                                }
                             if(user.equals("") || pass.equals("")){  
                            	 System.out.println("I am here");
                                 response.sendRedirect("error.jsp"); 
                                 }
                         
                         
                    }catch(Exception e1){
                    	System.out.println("catch block executed");
                    	 //response.sendRedirect("error.jsp"); 
                    }  
                    %>  

</body>
</html>
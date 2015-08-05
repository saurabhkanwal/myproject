 <%@ page language ="java" import="java.sql.*"%>
 <%@page import="mongodbdemo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete User Account</title>
</head>
<body>
        <%
        String username=(String) session.getAttribute("username");  
        Connection conn = null;
        conn = new dbconnection().ConnectionFile1();
        Statement st1 = conn.createStatement();
        //Class.forName("com.mysql.jdbc.Driver");  
        //Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
         //Statement st1=con.createStatement();  
        ResultSet rs=st1.executeQuery("select * from demo"); 
        
        
        %>

<form name="form" action="userdelete.jsp" method="get">  
         <table border="0" cellpadding="0" cellspacing="3" align="center" width="400">  
         <th colspan=2 width="270" align="center"> 
		  <font size=6 color="white">Deleteuser</font>  
                  </th>  
          <tr>  
            <td width="170" align="right">  
              Username:     
            </td>  
            <td width="290">  
             <input size="30" type="test" name="sUserName1" id="sUserName">  
            </td>  
  
          </tr>  
          <tr>  
            <td width="170" align="right">  
              Lastname:     
            </td>  
            <td width="290">  
             <input size="30" type="text" name="sPwd1" id="sPwd">  
            </td>  
          </tr> <td><tr> <input type="submit" value="Delete User"> </tr>
          </td>
         </table>
         
         
         <div  style="left:20px;top:40px">
          <table border="1" cellpadding="1" cellspacing="3" align="center" width="500">  
                 <tr>
                <th>PersonID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address </th>
                <th>City</th>
                 </tr>
                 <%
                  while (rs.next()) {
                        String pid = rs.getString(1);
                        String fn = rs.getString(2);
                        String ln = rs.getString(3);
                        String ad = rs.getString(4);
                        String ci = rs.getString(5);
                      
            %>
			<tr>

                <td><%= pid%></td>
                <td><%= fn%></td>
                <td><%= ln%></td>
                <td><%= ad%></td>
                <td><%= ci%></td>
              

            </tr>                 
          <%} %>
         </table>
         
         </div>
         
           
  
 
                    
                    </form>
</body>
</html>
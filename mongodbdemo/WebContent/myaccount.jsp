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
String usern=(String) session.getAttribute("username");
//System.out.println("User name :" +usern);
//out.print("Welcome "+usern);
 String Person=null;  
 String FirstName=null; 
 String Lastname=null;  
String Address=null;
String City=null;  
String PersonID=null;
String fname=null;
String lname=null;
String addr=null;
String city=null;

Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
Statement st=con.createStatement();  
ResultSet rs=st.executeQuery("select * from demo where FirstName = '"+usern+"'");  


try{
	 
     while(rs.next())  
         {  
         Person=rs.getString(1);  
         Lastname=rs.getString(2); 
       FirstName=rs.getString(3);  
        Address=rs.getString(4);
          City=rs.getString(5);  
         //out.print(" your details are :-"+PersonID +FirstName +Lastname+ Address+City);
          //st.executeUpdate("update demo set FirstName='"+fname+"',Lastname='"+lname+"',Address='"+addr+"',City='"+city+"'where Person='"+PersonID+"'");      
   }
}
catch (Exception ex) {

out.println("Unable to connect to database.");
ex.printStackTrace();

}
%>
<style> 
body {
    background-image: url("now.jpg");
    background-color: #cccccc;
}
div {
    border: 3px solid #a1a1a2;
    padding: 10px 40px; 
    background: #dddddd;
    width: 300px;
    border-radius: 55px;
   
}
 h2 {
    text-shadow: 5px 5px 5px #FF0000;
}
</style>
<h2><font size="+3" ><br>Welcome <%out.print(usern); %> !</font></h2>
<div><br>
<FORM action="modify.jsp" method="get">

<TABLE style="background-color: #ECE5B6;" WIDTH="90%" >

<TR>

<TH width="90%">Pid</TH>

<TD width="50%"><input Type="text" NAME="PersonID" value=<%out.print(Person);%>></TD>

</tr>

<TR>

<TH width="50%">FirstName</TH>

<TD width="50%"><INPUT TYPE="text" NAME="fname" value=<%out.print(FirstName);%>></TD>

</tr>

<TR>

<TH width="50%">LastName</TH>

<TD width="50%"><INPUT TYPE="text" NAME="lname" value=<%out.print(Lastname);%>></TD>

</tr>

<TR>

<TH width="50%">Address</TH>

<TD width="100%"><INPUT TYPE="text" NAME="addr" value=<%out.print(Address);%>></TD>

</tr>
<TR>

<TH width="50%">City</TH>

<TD width="50%"><INPUT TYPE="text" NAME="city" value=<%out.print(City);%>></TD>

</tr>
</tr>
<TR>

<TH></TH></TR></TABLE>
<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="window.location.href='http://localhost:8084/mongodbdemo/welcome.jsp'" value="Back""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value=Update align="center" >
<%

	//Class.forName("com.mysql.jdbc.Driver");  
//Connection con=DriverManager.getConnection("jdbc:mysql://localhost/saurabh", "root", "root");  
 // Statement st1=con.createStatement();  
//st1.executeUpdate("update demo set FirstName='"+fname+"',Lastname='"+lname+"',Address='"+addr+"',City='"+city+"'where PersonID='"+PersonID+"'"); 

%>

</FORM>

</div>
</body>
</html>
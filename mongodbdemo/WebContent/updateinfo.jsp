<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<BODY bgcolor="#ffffcc">

<font size="+3" color="red"><br>Welcome Guest !</font>

<FORM action="databaseinsertion.jsp" method="post">

<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>

<TH width="50%">Pid</TH>

<TD width="50%"><INPUT TYPE="text" NAME="pid"></TD>

</tr>

<TR>

<TH width="50%">FirstName</TH>

<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>

</tr>

<TR>

<TH width="50%">LastName</TH>

<TD width="50%"><INPUT TYPE="text" NAME="pass"></TD>

</tr>

<TR>

<TH width="50%">Address</TH>

<TD width="50%"><INPUT TYPE="text" NAME="addr"></TD>

</tr>
<TR>

<TH width="50%">City</TH>

<TD width="50%"><INPUT TYPE="text" NAME="city"></TD>

</tr>
<TR>

<TH></TH>

<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>

</tr>

</TABLE>



</FORM>

</body>
</html>
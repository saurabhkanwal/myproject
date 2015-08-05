<%@ page import="java.sql.*" %>

<%@ page import="java.io.*" %>

<HTML>

<HEAD>

<TITLE>Navigating in a Database Table </TITLE>
<script>
function checkValidUsername(str)
{

  if(typeof XMLHttpRequest!="undefined")
  {
  
  
  xmlHttp = new XMLHttpRequest();
  }
 
  else if(window.ActiveXObject)
  {
  
   xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  
 if(xmlHttp==null)
  {
  alert("Browser does not support XMLHTTP Request");
  return;
  } 

 var url="Checkreg.jsp";
 url +="?userName="+str;
 xmlHttp.onreadystatechange=stateChange;
 xmlHttp.open("GET",url,true);
 xmlHttp.send(null);
 
 }

function stateChange()
{
 
 if(xmlHttp.readyState==4||xmlHttp.readyState=="complete")
  {
 
  document.getElementById("year").innerHTML=xmlHttp.responseText
  }
 }

</script>
</HEAD>

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

<TD width="50%"><INPUT TYPE="text" NAME="name" Onchange="checkValidUsername(this.value)"></TD>
<div id="year"></div>
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
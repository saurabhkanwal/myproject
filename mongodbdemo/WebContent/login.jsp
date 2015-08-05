<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language ="java" import="java.sql.*"%>  
<html>  
    <head>  
        <title></title>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
                <script>  
                             
                
            function trim(s)   
            {  
                return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );  
            }  
  
            function validate()  
            {  
                if(trim(document.form.sUserName.value)=="")  
                {  
                  alert("Login empty");  
                  document.form.sUserName.focus();  
                  return false;  
                }  
                else if(trim(document.form.sPwd.value)=="")  
                {  
                  alert("password empty");  
                  document.form.sPwd.focus();  
                  return false;  
                }  
            }  
        </script> 
        <script> 
        function ClearFields() {

     document.getElementById("sUserName").value = "";
     
} 
        </script> 
        <script type="text/javascript" src="rememberMe.js"></script>  
    </head>  
    <body bgcolor="#999966">                
        <form name="form" action="check.jsp" method="get">  
         <table border="0" cellpadding="0" cellspacing="3" align="center" width="400">  
                  <th colspan=2 width="270" align="center">  
                     <font size=6 color="white">LOGIN</font>  
                  </th>  
          <tr>  
            <td width="170" align="right">  
              Username:     
            </td>  
            <td width="290">  
             <input size="30" type="test" name="sUserName" id="sUserName">  
            </td>  
  
          </tr>  
          <tr>  
            <td width="170" align="right">  
              Password:     
            </td>  
            <td width="290">  
             <input size="30" type="password" name="sPwd" id="sPwd">  
            </td>  
          </tr>  
          <tr>  
            <td width="170" align="right">  
              Remember me?:     
            </td>  
            <td width="290">  
             <input type="checkbox" id="checker" name="checker">  
            </td>  
          </tr>  
          <tr>  
            <td colspan="2" align="center">  
              <input type="submit" value="Submit">   
              <input type="reset" value="Reset">  
                          <input type="button"   
                            onclick="window.location.href='http://localhost:8084/mongodbdemo/registration.jsp'" value="Go to Register">  
            </td>  
          </tr>  
                  
         </table>  
                    
        </form>  
        
          
    </body>  
</html>  
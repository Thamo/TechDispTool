<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Login Application</title>  
</head>  
<body background = "papertheme.jpg">  
    <form action="loginServlet" method="post">
    <div style="float:left;">
      <img src="zoozoo-20.jpg"/>
      </div>
      <div style="float:left;">
        <fieldset style="width: 300px">  
            <legend> Login to App </legend>  
            <table>  
                <tr>  
                    <td>User ID</td>  
                    <td><input type="text" name="username" required="required" /></td>  
                </tr>  
                <tr>  
                    <td>Password</td>  
                    <td><input type="password" name="userpass" required="required" /></td>  
                </tr>  
                <tr>  
                    <td><input type="submit" value="Login" /></td>  
                </tr> 
 			
            </table>  
            
        </fieldset>  
        <div style="float:left;">
    </form>  
</body>  
</html>  

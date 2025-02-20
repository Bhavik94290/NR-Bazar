<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
   <h2>login page</h2>
   
   <br><br> 
   <form action="authenticate" method="post">
		
		
		E-mail:<input type="text" name="email"><br><br>
		
		Password:<input type="Password" name="password"><br><br>
		
		<input type="Submit" value="Login"><br><br>
		
		
	
	</form>
   
	<a href="forgetpassword">Forget password</a>
		
		${error}
		<br><br>
		
	<a href="signup">Signup</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup</title>
</head>
<body>
  <h2>signup page</h2>
 
      <form action="saveuser" method="post">
		First Name:<input type="text" name="firstname"><br><br>
		
		Last Name:<input type="text" name="lastname"><br><br>
		
		E-mail:<input type="text" name="firstname"><br><br>
		
		Password:<input type="Password" name="Password"><br><br>
		
		Confirm Password:<input type="Password" name="confirmpass"><br><br>
		
		Gender:
			<label for="male">
           		<input type="radio" id="male" name="gender" value="Male"> Male
        	</label>
        	<label for="female">
           		<input type="radio" id="female" name="gender" value="Female"> Female
        	</label>
        	<label for="other">
           		<input type="radio" id="other" name="gender" value="other"> Other
        	</label>
        	
        	<br><br>
        	
		Date of Birth: <input type="date" name="date"><br><br>
		
		Contact No.: <input type="text" name="number"><br><br>
	
		<input type="Submit" value="Submit">
	</form>


<br><br> 
	<a href="login">Login</a>
      
    
   
</body>
</html>
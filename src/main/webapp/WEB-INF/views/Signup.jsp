<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Signup page</h2>
	
	<form action="saveuser" method="post">
		
		First Name:<input type="text" name="firstName"><br><br>
		
		Last Name:<input type="text" name="lastName"><br><br>
		
		E-mail:<input type="text" name="email"><br><br>
		
		Password:<input type="Password" name="password"><br><br>
		
		Gender:
			<label for="male">
           		<input type="radio" id="male" name="gender" value="Male"> Male
        	</label>
        	<label for="female">
           		<input type="radio" id="female" name="gender" value="Female"> Female
        	</label>
        	<label for="other">
           		<input type="radio" id="other" name="gender" value="other"> other
        	</label><br><br>
        
		Contact No.: <input type="text" name="contactNum"><br><br>
		
		<label for="role">Role :</label>
            <select id="role" name="role" required>
                <option value="" disabled selected>-- Select Role --</option>
                <option value="1">Admin</option>
                <option value="2">Buyer</option>
                <option value="3">Seller</option>
            </select><br><br>
		
	
		<input type="submit" value="Signup"> <br><br><br><br>
		
	</form>
	
	<a href="login">Login</a>
	
</body>
</html>
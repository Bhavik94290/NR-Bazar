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
           		<input type="radio" id="other" name="gender" value="other"> other
        	</label><br><br>
        
		Contact No.: <input type="text" name="number"><br><br>
		
		<label for="role">Role :</label>
            <select id="role" name="role" required>
                <option value="" disabled selected>-- Select Role --</option>
                <option value="1">Admin</option>
                <option value="2">Buyer</option>
                <option value="3">Seller</option>
            </select><br><br>
		
		<!-- Created At (Auto-generated, can be handled via backend) -->
        <label for="createdAt">Created At</label>
        <input type="datetime-local" id="createdAt" name="createdAt" ><br><br>

        <!-- Status Dropdown -->
        <label for="status">Status :</label>
            <select id="status" name="status" required>
                <option value="1">Active</option>
                <option value="2">Disabled</option>
            </select><br><br>
		
	
		<input type="submit" value="Signup"> <br><br><br><br>
		
	</form>
	
	<a href="login">Login</a>
	
</body>
</html>
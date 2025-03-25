<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders Details</title>
</head>
<body>
	<form action="saveorders" method="post">
	
	status: <input type="text" name="status"><br><br>
	totalAmount: <input type="text" name="totalAmount"><br><br>
	createdAt: <input type="text" name="createdAt"><br><br>
	
				<input type="submit" value="Add">
	
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Admin</title>
</head>
<body>

<form action="saveadmin" method="post">
	Admin Name: <input type="text" name="adminName"/><br><br> 
	Age : <input type="text" name="age"/><br><br> 
	ProfilePhot : <input type="file" name="profilePhoto"/><br><br> 
	
	<input type="submit" value="Save Admin"/>

</form>

</body>
</html>
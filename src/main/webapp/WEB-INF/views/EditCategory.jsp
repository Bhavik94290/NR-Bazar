<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updatecategory" method="post">
		category Name: <input type="text" name="categoryName" value="${category.categoryName}" /><br> <br>
		
		<input type="hidden" name="categoryId"  value="${category.categoryId}"/>
		
		<input type="submit" value="Update Area" />
	</form>
</body>
</html>
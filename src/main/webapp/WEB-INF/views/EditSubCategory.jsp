<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit sub ccategory</title>
</head>
<body>

	<form action="updatesubcategory" method="post">
		Sub Category:<input type="text" name="subCategoryName" value="${subCategory.subCategoryName}"><br><br>
		<input type="hidden" name="subCategoryId"  value="${subCategory.subCategoryId}"/>
		
		<input type="submit" value="Update subCategory" />
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sub Category</title>
</head>
<body>
	
	<form action="savesubcategory" method="post">
	Sub Category:<input type="text" name="subCategoryName"><br><br>
	
	Category: <select name="categoryId" />
			<option>Select category</option>
			
			<c:forEach items="${allCategory}" var="c">

					<option value="${c.categoryId}">${c.categoryName }</option>
			
			</c:forEach>
		</select>
		<br><br>
	
	<input type="submit" value="Add">
	</form>
</body>
</html>
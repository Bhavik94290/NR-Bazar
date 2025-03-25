Product<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
</head>
<body>

<form action="saveproduct" method="post">

ProductName: 		<input type="text" name="productName"><br><br>
BasePrice: 			<input type="text" name="basePrice"><br><br>
OfferePrice:		<input type="text" name="offerPrice"><br><br>
OfferePercentage: 	<input type="text" name="offerePercentage"><br><br>
ProductDetail: 		<input type="text" name="productDetail"><br><br>
ProductImageURL1: 	<input type="text" name="productImageURL1"><br><br>
ProductImageURL2: 	<input type="text" name="productImageURL2"><br><br>
ProductImageURL3: 	<input type="text" name="productImageURL3"><br><br>
Quantity: 			<input type="text" name="quantity"><br><br>
CreatedAt: 			<input type="text" name="createdAt"><br><br>

<br>
		category: <select name="categoryId" />
			<option>Select Category</option>
			
			<c:forEach items="${allCategory}" var="c">

					<option value="${c.categoryId}">${c.categoryName }</option>
			
			</c:forEach>
		</select>
		<br><br>
		Sub Category: <select name="subCategoryId" />
			<option>Select Sub Category</option>
			
			<c:forEach items="${allSubCategory}" var="a">

					<option value="${a.subCategoryId}">${a.subCategoryName }</option>
			
			</c:forEach>
		</select>
		<br><br>

					<input type="submit" value="Add">
</form>
</body>
</html>
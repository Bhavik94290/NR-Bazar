<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateproduct" method="post">
	
		ProductName: 		<input type="text" name="productName" value="${product.productName}"><br><br>
		BasePrice: 			<input type="text" name="basePrice" value="${product.basePrice}"><br><br>
		OfferePrice:		<input type="text" name="offerPrice" value="${product.offerPrice}"><br><br>
		OfferePercentage: 	<input type="text" name="offerePercentage" value="${product.offerePercentage}"><br><br>
		ProductDetail: 		<input type="text" name="productDetail" value="${product.productDetail}"><br><br>
		ProductImageURL1: 	<input type="text" name="productImageURL1" value="${product.productImageURL1}"><br><br>
		ProductImageURL2: 	<input type="text" name="productImageURL2" value="${product.productImageURL2}"><br><br>
		ProductImageURL3: 	<input type="text" name="productImageURL3" value="${product.productImageURL3}"><br><br>
				
		<input type="hidden" name="productId"  value="${product.productId}"/>
		
		<input type="submit" value="Update Product" />
	</form>

</body>
</html>
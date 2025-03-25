<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
</head>
<body>
	<form action="savecart" method="post">
		Quantity: <input type="text" name="quantity">
				
				<br><br>
		Product: <select name="productId">
			<option>Select product</option>
			
			<c:forEach items="${allProduct}" var="p">

					<option value="${p.productId}">${p.productName }</option>
			
			</c:forEach>
		</select>
		<br><br>
		<input type="submit" value="Add">
	</form>
</body>
</html>
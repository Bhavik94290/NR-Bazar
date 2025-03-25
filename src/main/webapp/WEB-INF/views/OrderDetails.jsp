<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Details</title>
</head>
<body>

<form action="saveorderdetails" method="post">
			Quantity: <input type="text" name="quantity"><br><br>
			Price: <input type="text" name="price"><br><br>
			Status: <input type="text" name="status"><br><br>
			
			<br><br>
		Order: <select name="orderId">
			<option>Select Order</option>
			
			<c:forEach items="${allOrders}" var="o">
					<option value="${o.orderId}">${o.status}</option>
			</c:forEach>
		</select>
		<br><br>
		
		Product: <select name="productId">
			<option>Select Product</option>
			
			<c:forEach items="${allProducts}" var="p">

					<option value="${p.productId}">${p.productName }</option>
			
			</c:forEach>
		</select>
		<br><br>
					<input type="submit" value="Add">
			
</form>
</body>
</html>
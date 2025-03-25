<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateorderdetail" method="post">
		Quantity: <input type="text" name="quantity" value="${orderdetails.quantity}"><br><br>
		Price: <input type="text" name="price" value="${orderdetails.price}"><br><br>
		
		<input type="hidden" name="orderDetailId"  value="${orderdetails.orderDetailId}"/>
		
		<input type="submit" value="Update OrderDetail" />
	</form>

</body>
</html>
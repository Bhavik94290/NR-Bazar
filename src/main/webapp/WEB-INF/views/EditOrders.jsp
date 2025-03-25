<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateorder" method="post">
	
		status: 	<input type="text" name="status" value="${order.status}"><br><br>
		Total Amount: <input type="text" name="totalAmount" value="${order.totalAmount}"><br><br>
		
		<input type="hidden" name="orderId"  value="${order.orderId}"/>
		
		<input type="submit" value="Update order" />
	</form>

</body>
</html>
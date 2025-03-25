<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updatecart" method="post">
		Area Name : <input type="text" name="quantity" value="${cart.quantity}" /><br> <br>
		
		<input type="hidden" name="cartId"  value="${cart.cartId}"/>
		
		<input type="submit" value="Update Area" />
	</form>
	

</body>
</html>
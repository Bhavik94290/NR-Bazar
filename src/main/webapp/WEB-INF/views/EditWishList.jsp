<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditWishList</title>
</head>
<body>

	<form action="updatewishlist" method="post">
		
		<input type="hidden" name="wishListId"  value="${wishList.wishListId}"/>
		
		<input type="submit" value="Update wishList" />
	</form>

</body>
</html>
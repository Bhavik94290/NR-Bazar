<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wish List</title>
</head>
<body>

<form action="savewishlist" method="post">

	CreatedAt: <input type="text" name="createdAt"><br><br>
	
				Product: <select name="productId">
				<option>Select Product</option>
			
			<c:forEach items="${allProduct}" var="p">

					<option value="${p.productId}">${p.productName }</option>
			
			</c:forEach>
			</select>
		<br><br>
				<input type="submit" value="Add">
				
</form>

</body>
</html>
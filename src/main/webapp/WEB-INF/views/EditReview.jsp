<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="updatereview" method="post">
		ReviewText:<input type="text" name="reviewText" value="${review.reviewText}"><br><br>
		Rating: <input type="text" name="rating" value="${review.rating}"><br><br>
		
		<input type="hidden" name="reviewId"  value="${review.reviewId}"/>
		
		<input type="submit" value="Update Review" />
	</form>
	

</body>
</html>
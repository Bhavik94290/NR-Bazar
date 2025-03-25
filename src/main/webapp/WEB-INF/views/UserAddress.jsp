<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Address</title>
</head>
<body>
	<form action="saveaddress" method="post">
	
		
	Title: <input type="text" name="titelName"><br><br>
	UnitName: <input type="text" name="unitName"><br><br>
	Street: <input type="text" name="streetName"><br><br>
	LandMark: <input type="text" name="landMarkName"><br><br>
	ZipCode: <input type="text" name="zipCode"><br><br>
	
	<br><br>
		City: <select name="cityId" />
			<option>Select City</option>
			
			<c:forEach items="${allCity}" var="c">

					<option value="${c.cityId}">${c.cityName }</option>
			
			</c:forEach>
		</select>
		<br><br>
		
		State: <select name="stateId" />
			<option>Select State</option>
			
			<c:forEach items="${allState}" var="s">

					<option value="${s.stateId}">${s.stateName }</option>
			
			</c:forEach>
		</select>
		<br><br>
		
		<input type="submit" value="Add">
	
	</form>

</body>
</html>
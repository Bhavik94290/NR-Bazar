<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateuseraddress" method="post">
		Title: <input type="text" name="titelName" value="${userAddress.titelName}"><br><br>
		UnitName: <input type="text" name="unitName" value="${userAddress.unitName}"><br><br>
		Street: <input type="text" name="streetName" value="${userAddress.streetName}"><br><br>
		LandMark: <input type="text" name="landMarkName" value="${userAddress.landMarkName}"><br><br>
		ZipCode: <input type="text" name="zipCode" value="${userAddress.zipCode}"><br><br>
		
		<input type="hidden" name="userAddressId"  value="${userAddress.userAddressId}"/>
		
		<input type="submit" value="Update userAddress" />
	</form>

</body>
</html>
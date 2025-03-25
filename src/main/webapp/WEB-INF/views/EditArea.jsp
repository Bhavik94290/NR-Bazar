<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updatearea" method="post">
		Area Name : <input type="text" name="areaName" value="${area.areaName}" /><br> <br>
		
		<input type="hidden" name="areaId"  value="${area.areaId}"/>
		
		<input type="submit" value="Update Area" />
	</form>
	
</body>
</html>
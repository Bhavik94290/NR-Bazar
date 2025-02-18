<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Admin</title>
</head>
<body>
	<h2>List Admin</h2>

	<table border="1">
		<c:forEach items="${adminList}" var="m">

			<tr>
				<td>${m.adminName }</td>
				<td>${m.age}</td>
				<td>${m.profilePhoto }</td>
			</tr>
		</c:forEach>
	</table>





</body>
</html>
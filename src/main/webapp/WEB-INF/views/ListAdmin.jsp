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
	 <tr>
	     <th>Name</th>
	     <th>age</th>
	     <th>profile photo</th>
	     <th>Action</th>
	 </tr>
	
	
		<c:forEach items="${adminList}" var="a">

			<tr>
				<td>${a.adminName }</td>
				<td>${a.age}</td>
				<td>${a.profilePhoto }</td>
				<td><a href="viewadmin?adminId=${a.adminId}">View</a> | <a href="deleteadmin?adminId=${a.adminId}">Delete</a> | Edit </td>
			</tr>
		</c:forEach>
	</table>





</body>
</html>
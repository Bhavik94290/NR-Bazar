<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of users</title>
</head>
<body>

	<h2>List of users</h2>
	
	<table border="1">
	
		<tr>
			 <th>First name</th>
		     <th>last name</th>
		     <th>Email </th>
		     <th>Password</th>
		     <th>ContactNum</th>
		     <th>Gender</th>
		     <th>Role</th>
		     <th>Action</th>
		</tr>
	
		<c:forEach items="${userList}" var="u">

			<tr>
				<td>${u.firstName }</td>
				<td>${u.lastName}</td>
				<td>${u.email }</td>
				<td>${u.password }</td>
				<td>${u.contactNum }</td>
				<td>${u.gender }</td>
				<td>${u.role }</td>
				<td><a href="viewuser?userId=${u.userId}">View</a> | <a href="deleteuser?userId=${u.userId}">Delete</a> |<a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	

</body>
</html>
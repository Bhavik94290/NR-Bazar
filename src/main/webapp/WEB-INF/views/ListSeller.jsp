<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List seller</title>
</head>
<body>

    <h2>List seller</h2>
    
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
	
		<c:forEach items="${sellerList}" var="s">

			<tr>
				<td>${s.firstName }</td>
				<td>${s.lastName}</td>
				<td>${s.email }</td>
				<td>${s.password }</td>
				<td>${s.contactNum }</td>
				<td>${s.gender }</td>
				<td>${s.role }</td>
				<td><a href="viewseller?sellerId=${s.sellerId}">View</a> | <a href="deleteseller?sellerId=${s.sellerId}">Delete</a> |<a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
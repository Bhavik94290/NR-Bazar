<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table datatable datatable-table table-hover" id="wishList">
										<thead>
											
						                    <th>Created At</th>
						                     <th>Product name</th>
						                    <th>First name</th>
						                    <th>Last name</th>
										</thead>

										<tbody>
											<c:forEach items="${wishList}" var="w">
												<tr>
                        							<td>${w[1]}</td>
                        							<td>${w[4]}</td>
                        							<td>${w[5]}</td>
                        							<td>${w[6]}</td>
													
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
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

	<table class="table datatable datatable-table table-hover" id="review">
										<thead>
											<th>Product namet</th>
						                    <th>Review Text</th>
						                    <th>Rating</th>
						                    <th>Created At</th>
						                    <th>First name</th>
						                    <th>Last name</th>
						                    
										</thead>

										<tbody>
											<c:forEach items="${review}" var="r">
												<tr>
													<td>${r[6]}</td>
							                        <td>${r[4]}</td>
							                        <td>${r[3]}</td>
							                        <td>${r[1]}</td>
							                        <td>${r[7]}</td>
							                        <td>${r[8]}</td>
													
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
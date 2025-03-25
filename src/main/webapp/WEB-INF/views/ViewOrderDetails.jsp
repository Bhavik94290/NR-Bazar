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

<table class="table datatable datatable-table table-hover" id="orderDetail">
										<thead>
											
						                    <th>status</th>
						                    <th>product name</th>
						                    <th>Quantity</th>
						                    <th>Price</th>
						                    <th>Status</th>
						                   
										</thead>

										<tbody>
											<c:forEach items="${orderDetail}" var="o">
												<tr>
												
							                        <td>${o[1]}</td>
							                        <td>${o[7]}</td>
							                        <td>${o[4]}</td>
							                        <td>${o[2]}</td>
							                        <td>${o[6]}</td>
													
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
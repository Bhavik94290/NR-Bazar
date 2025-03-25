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

	<table class="table datatable datatable-table table-hover" id="orders">
										<thead>																	                    
						                    <th>Status</th>
						                    <th>Total Amount</th>
						                    <th>Created At</th>
						                    <th>First name</th>
						                    <th>Last name</th>
						               
										</thead>

										<tbody>
											<c:forEach items="${order}" var="o">
												<tr>
													<td>${o[2]}</td>
							                        <td>${o[3]}</td>
							                        <td>${o[1]}</td>
							                   		<td>${o[5]}</td>
							                   		<td>${o[6]}</td>													
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
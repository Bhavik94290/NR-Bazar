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

	<table class="table datatable datatable-table table-hover" id="cart">
										<thead>											                    
						                    <th>product name</th>
						                    <th>Quantity</th>
						                    <th>First name</th>
						                    <th>Last name</th>						                   
										</thead>

										<tbody>
											<c:forEach items="${cart}" var="c">
												<tr>

							                        <td>${c[4]}</td>
							                        <td>${c[2]}</td>
							                        <td>${c[5]}</td>
							                        <td>${c[6]}</td>
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
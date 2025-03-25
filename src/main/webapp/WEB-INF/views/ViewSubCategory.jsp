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

<table class="table datatable datatable-table table-hover" id="subCategory">
										<thead>
						                    <th>Category name</th>
						                    <th>Sub-category Name</th>
						                   
										</thead>

										<tbody>
											<c:forEach items="${subCategory}" var="s">
												<tr>
							                        <td>${s[3]}</td>
							                        <td>${s[1]}</td>
													
												</tr>
											</c:forEach>
										</tbody>

									</table>

</body>
</html>
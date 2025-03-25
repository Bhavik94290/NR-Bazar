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

<table class="table datatable datatable-table table-hover" id="product">
										<thead>
											
						                    <th>Product Name</th>
						                    <th>category name</th>
						                    <th>subCategory name</th>
						                    <th>Base Price</th>
						                    <th>Offer Price</th>
						                    <th>Offer Percentage</th>
						                    <th>Product Detail</th>
						                    <th>Image1</th>
						                    <th>Image2</th>
						                    <th>Image3</th>
						                    <th>Quantity</th>
						                    <th>Created At</th>
						                   
										</thead>

										<tbody>
											<c:forEach items="${product}" var="p">
												<tr>
													
							                        <td>${p[10]}</td>
							                        <td>${p[12]}</td>
							                        <td>${p[13]}</td>
							                        <td>${p[1]}</td>
							                        <td>${p[4]}</td>
							                        <td>${p[5]}</td>
							                        <td>${p[6]}</td>
							                        <td>${p[7]}</td>
							                        <td>${p[8]}</td>
							                        <td>${p[9]}</td>
							                        <td>${p[11]}</td>
							                        <td>${p[3]}</td>
													
												</tr>
											</c:forEach>
										</tbody>

									</table>
</body>
</html>
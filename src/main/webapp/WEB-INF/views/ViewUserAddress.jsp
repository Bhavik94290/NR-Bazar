<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view user add</title>
</head>
<body>

	<table class="table datatable datatable-table table-hover" id="userAddress">
										<thead>																                    
						                    <th>Title Name</th>
						                    <th>Unit Name</th>
						                    <th>Street Name</th>
						                    <th>Landmark Name</th>
						                    <th>city name</th>
						                    <th>State name</th>
						                    <th>Zip Code</th>
						                    <th>First name</th>
						                    <th>Last name</th>
										</thead>

										<tbody>
											<c:forEach items="${userAddress}" var="u">
												<tr>													
							                        
							                        <td>${u[6]}</td>
							                        <td>${u[7]}</td>
							                        <td>${u[5]}</td>
							                        <td>${u[3]}</td>
							                        <td>${u[10]}</td>
							                        <td>${u[11]}</td>
							                        <td>${u[9]}</td> 
							                        <td>${u[12]}</td> 
							                        <td>${u[13]}</td>  
													
												</tr>
											</c:forEach>
										</tbody>

									</table>
		

</body>
</html>
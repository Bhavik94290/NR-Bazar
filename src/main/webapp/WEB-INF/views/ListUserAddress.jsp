<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User Address</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User Address</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User Address</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body">
									<h5 class="card-title">
										User Address<span>/all</span>
									</h5>


									<table class="table datatable datatable-table table-hover" id="user_address">
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
						                     <th>Actions</th>
										</thead>

										<tbody>
											<c:forEach items="${allUserAddressList}" var="u">
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
													<td><a href="edituseraddress?userAddressId=${u[0]}">Edit</a> |<a href="deleteuseraddress?userAddressId=${u[0]}">Delete</a>|
													 <a href="viewuseraddress?userAddressId=${u[0]}">View</a>
													 </td>
												</tr>
											</c:forEach>
										</tbody>

									</table>



								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#user_address');
	});
	</script>

</body>
</html>
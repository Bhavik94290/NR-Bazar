<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <jsp:include page="AdminCss.jsp"></jsp:include>


<title>Admin | Update State</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>

</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main" style="height: calc(100vh - 120px);" >  <!--  -->

		<div class="pagetitle">
			<h1>Update State</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Update State</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard ">
			<div class="row" >

				<div class="card col-12 ">
		            <div class="card-body ">
		              <h5 class="card-title">Update State</h5>
		
		              <!-- Vertical Form -->
		              <form class="row g-3" action="updatestate" method="post">
		                <div class="col-12">
		                  <label for="stateName" class="form-label">State Name</label>
		                  <input type="text" class="form-control" id="stateName" name="stateName" value="${state.stateName }">
		                </div>
		               
						</div>
		                <div class="text-center">
		                  <input type="submit" class="btn btn-primary" value="Submit">
		                  <input type="reset" class="btn btn-secondary" value="Reset">
		                </div>
		                
		                <input type="hidden" name="stateId" value="${state.stateId }"> 
		              </form><!-- Vertical Form -->
		
		            </div>
		          </div>

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	
	
</body>
</html>
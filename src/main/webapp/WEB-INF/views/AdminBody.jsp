<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin body</title>
	
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>


<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">

						<!-- Total Users -->
						<div class="col-xxl-3 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Total Users 
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-person-square"></i>
										</div>
										<div class="ps-3">
											<h6>${totalUser}</h6>
											<span class="text-success small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Total Users-->

						<!-- Users -->
						<div class="col-xxl-3 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Total Orders<%-- <span>| ${currentMonth}</span> --%>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart3"></i>
										</div>
										<div class="ps-3">
											<h6>${totalOrders}</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Users -->


                      <!-- Users -->
						<div class="col-xxl-3 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Products
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-box-seam"></i>
										</div>
										<div class="ps-3">
											<h6>${totalProduct}</h6>
											<span class="text-success small pt-1 fw-bold">8%</span> <span
												class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Users -->
						
						
						<!-- Users This Month -->
						<div class="col-xxl-3 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown"><i
										class="bi bi-three-dots"></i></a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li><a class="dropdown-item" href="#">Today</a></li>
										<li><a class="dropdown-item" href="#">This Month</a></li>
										<li><a class="dropdown-item" href="#">This Year</a></li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Users <span>| ${currentMonth}</span>
									</h5>

									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>${thisMonthUserCount}</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span> <span
												class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Users This Month -->
						
						
						

						<!-- Reports -->
						
						<div class="card-body">
							<h5 class="card-title">User Analysis <span>/ Year</span> </h5>
						
						
							<canvas id="myChart" width="400" height="180"></canvas>

					    <script>
					        var ctx = document.getElementById('myChart').getContext('2d');
					        var myChart = new Chart(ctx, {
					            type: 'bar',
					            data: {
					                labels: ['january', 'February', 'March', 'April', 'May', 'June','July','August','September','October','November','December'],
					                datasets: [{
					                    label: 'User Data',
					                    data: [5, 19, 3, 5, 2, 3],
					                    backgroundColor: [
					                        'rgba(255, 99, 132, 0.2)',
					                        'rgba(54, 162, 235, 0.2)',
					                        'rgba(255, 206, 86, 0.2)',
					                        'rgba(75, 192, 192, 0.2)',
					                        'rgba(153, 102, 255, 0.2)',
					                        'rgba(255, 159, 64, 0.2)'
					                    ],
					                    borderColor: [
					                        'rgba(255, 99, 132, 1)',
					                        'rgba(54, 162, 235, 1)',
					                        'rgba(255, 206, 86, 1)',
					                        'rgba(75, 192, 192, 1)',
					                        'rgba(153, 102, 255, 1)',
					                        'rgba(255, 159, 64, 1)'
					                    ],
					                    borderWidth: 1
					                }]
					            },
					            options: {
					                scales: {
					                    y: {
					                        beginAtZero: true
					                    }
					                }
					            }
					        });
					    </script>
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
  
</body>
</html>
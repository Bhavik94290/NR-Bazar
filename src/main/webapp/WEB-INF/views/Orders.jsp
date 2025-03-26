<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>orders</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	      <h1>Add Orders</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">Orders</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Orders</h5>

              <!-- Vertical Form -->
              <form action="saveorders" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">status</label>
                  <input type="text" name="status" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Total Amount</label>
                  <input type="text" name="totalAmount" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">CreatedAt</label>
                  <input type="text" name="createdAt" class="form-control" id="inputNanme4">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                 <!-- <button type="reset" class="btn btn-secondary">Reset</button> --> 
                </div>
              </form><!-- Vertical Form -->

            </div>
          </div>
		</section>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>












<!-- <body>
	<form action="saveorders" method="post">	
	status: <input type="text" name="status"><br><br>
	totalAmount: <input type="text" name="totalAmount"><br><br>
	createdAt: <input type="text" name="createdAt"><br><br>	
				<input type="submit" value="Add">	
	</form>
</body> -->

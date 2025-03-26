<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add User Address</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	      <h1>Add User Address</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">User Address</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add User Address</h5>

              <!-- Vertical Form -->
              <form action="saveaddress" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Title</label>
                  <input type="text" name="titelName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Unit Name</label>
                  <input type="text" name="unitName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Street</label>
                  <input type="text" name="streetName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">LandMark</label>
                  <input type="text" name="landMarkName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Zip Code</label>
                  <input type="text" name="zipCode" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">City</label>
                 	<select name="cityId" />
					<option>Select City</option>			
					<c:forEach items="${allCity}" var="c">
						<option value="${c.cityId}">${c.cityName }</option>			
					</c:forEach>
					</select>
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">State</label>
                  	<select name="stateId" />
					<option>Select State</option>			
						<c:forEach items="${allState}" var="s">
							<option value="${s.stateId}">${s.stateName }</option>			
						</c:forEach>
					</select>
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
	<form action="saveaddress" method="post">		
	Title: <input type="text" name="titelName"><br><br>
	UnitName: <input type="text" name="unitName"><br><br>
	Street: <input type="text" name="streetName"><br><br>
	LandMark: <input type="text" name="landMarkName"><br><br>
	ZipCode: <input type="text" name="zipCode"><br><br>
		City: <select name="cityId" />
			<option>Select City</option>			
			<c:forEach items="${allCity}" var="c">
					<option value="${c.cityId}">${c.cityName }</option>			
			</c:forEach>
		</select>
		
		State: <select name="stateId" />
			<option>Select State</option>			
			<c:forEach items="${allState}" var="s">
					<option value="${s.stateId}">${s.stateName }</option>			
			</c:forEach>
		</select>
		<br><br>		
		<input type="submit" value="Add">	
	</form>
</body>
 -->
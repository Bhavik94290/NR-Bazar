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
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>

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
                  <label for="inputNanme4" class="form-label">State</label>
                  	<select name="stateId" id="state" class="form-control" onchange="getCity()" required />
					<option>Select State</option>			
						<c:forEach items="${allState}" var="s">
							<option value="${s.stateId}">${s.stateName }</option>			
						</c:forEach>
					</select>
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">City</label>
                 	<select name="cityId"id="city" class="form-control" required />
					<option>Select City</option>			
					<c:forEach items="${allCity}" var="c">
						<option value="${c.cityId}">${c.cityName}</option>			
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
         </div>
          
		</section>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	 <script type="text/javascript">

	function getCity(){
		console.log("state Change");
		let stateId = document.getElementById("state").value;
		console.log(stateId);	
		//url -> json REST 
		
		  $.get( "/getallcitybystateid/"+stateId, function() {
			})
			  .done(function(data) {
			    console.log(data);
			    //fill the subcategory 
			    $('#city').empty().append('<option selected="selected" value="-1">Select City</option>')
			    
			    for (var i = 0; i < data.length; i++) {
      			  $('#city').append('<option value="' + data[i].cityId + '">' + data[i].cityName + '</option>');
   				 }
			    
			  })
			  .fail(function() {
			    alert( "error" );
			  })
			  
		
	}


</script> 
</body>
</html>




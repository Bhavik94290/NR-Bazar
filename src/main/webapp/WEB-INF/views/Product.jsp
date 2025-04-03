<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Product</title>

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
	      <h1>Add Product</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">Product</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Product</h5>

              <!-- Vertical Form -->
              <form action="saveproduct" method="post" enctype="multipart/form-data" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Name</label>
                  <input type="text" name="productName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Base Price</label>
                  <input type="text" name="basePrice" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Offere Price</label>
                  <input type="text" name="offerPrice" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Offere Percentage</label>
                  <input type="text" name="offerePercentage" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Detail</label>
                  <input type="text" name="productDetail" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Image1</label>
                  <input type="file" name="Image" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Image2</label>
                  <input type="file" name="Image2" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Image3</label>
                  <input type="file" name="Image3" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Quantity</label>
                  <input type="text" name="quantity" class="form-control" id="inputNanme4">
                </div>
                
                
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Category</label>
                  <select name="categoryId"id="category"  onchange="getSubCategory()" required/>
					<option value="-1">Select Category</option>			
						<c:forEach items="${allCategory}" var="c">
							<option value="${c.categoryId}">${c.categoryName }</option>			
						</c:forEach>
				  </select>
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Sub Category</label>
                  <select name="subCategoryId" id="subCategory" required />
					<option value="-1">Select Sub Category</option>			
						<c:forEach items="${allSubCategory}" var="a">
							<option value="${a.subCategoryId}">${a.subCategoryName }</option>			
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
<script type="text/javascript">

	function getSubCategory(){
		console.log("category Change");
		let categoryId = document.getElementById("category").value;
		console.log(categoryId);	
		//url -> json REST 
		
		  $.get( "getallsubcategorybycategoryid/"+categoryId, function() {
			})
			  .done(function(data) {
			    console.log(data);
			    //fill the subcategory 
			    $('#subCategory').empty().append('<option selected="selected" value="-1">Select SubCategory</option>')
			    
			    for (var i = 0; i < data.length; i++) {
      			  $('#subCategory').append('<option value="' + data[i].subCategoryId + '">' + data[i].subCategoryName + '</option>');
   				 }
			    
			  })
			  .fail(function() {
			    alert( "error" );
			  })
			  
		
	}


</script> 
	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>










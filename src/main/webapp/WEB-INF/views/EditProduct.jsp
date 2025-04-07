<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Update</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Update Product</h5>

              <!-- Vertical Form -->
              <form action="updateproduct" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Name</label>
                  <input type="text" name="productName" class="form-control" id="inputNanme4" value="${product.productName}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Base Price</label>
                  <input type="text" name="basePrice" class="form-control" id="inputNanme4" value="${product.basePrice}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Offere Price</label>
                  <input type="text" name="offerPrice" class="form-control" id="inputNanme4" value="${product.offerPrice}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Offere Percentage</label>
                  <input type="text" name="offerePercentage" class="form-control" id="inputNanme4" value="${product.offerePercentage}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Detail</label>
                  <input type="text" name="productDetail" class="form-control" id="inputNanme4" value="${product.productDetail}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Image1</label>
                  <input type="text" name="productImageURL1" class="form-control" id="inputNanme4" value="${product.productImageURL1}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product ImageU2</label>
                  <input type="text" name="productImageURL2" class="form-control" id="inputNanme4" value="${product.productImageURL2}">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product Image3</label>
                  <input type="text" name="productImageURL3" class="form-control" id="inputNanme4" value="${product.productImageURL3}">
                	<input type="hidden" name="productId"  value="${product.productId}"/>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Update</button>
                 <!-- <button type="reset" class="btn btn-secondary">Reset</button> --> 
                </div>
              </form>

            </div>
          </div>
		</section>

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>


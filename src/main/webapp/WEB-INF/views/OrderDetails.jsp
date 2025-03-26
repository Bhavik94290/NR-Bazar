<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Order-Details</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	      <h1>Add Order-Details</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">Order-Details</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Order-Details</h5>

              <!-- Orderdetails Form -->
              <form action="saveorderdetails" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Quantity</label>
                  <input type="text" name="quantity" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Price</label>
                  <input type="text" name="price" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Status</label>
                  <input type="text" name="quantity" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Order</label>
                  <select name="orderId">
					<option>Select Order</option>			
						<c:forEach items="${allOrders}" var="o">
							<option value="${o.orderId}">${o.status}</option>
						</c:forEach>
					</select>
               	 </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product</label>
                  <select name="productId">
					<option>Select Product</option>			
						<c:forEach items="${allProducts}" var="p">
							<option value="${p.productId}">${p.productName }</option>			
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










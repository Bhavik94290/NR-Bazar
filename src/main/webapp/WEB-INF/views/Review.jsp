<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Review</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	      <h1>Add Review</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">Review</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-8">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Review</h5>

              <!-- Vertical Form -->
              <form action="savereviews" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Review Text</label>
                  <input type="text" name="reviewText" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Rating</label>
                  <input type="text" name="rating" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">CreatedAt</label>
                  <input type="text" name="createdAt" class="form-control" id="inputNanme4">
                </div>
                
                 <div class="col-12">
                  <label for="inputNanme4" class="form-label">Product</label>
                  <select name="productId">
					<option>Select Product</option>			
					<c:forEach items="${allProduct}" var="p">
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









<!-- <body>
<form action="savereviews" method="post">
	ReviewText:<input type="text" name="reviewText"><br><br>
	Rating: <input type="text" name="rating"><br><br>
	CreatedAt:<input type="text" name="createdAt"><br><br>	
	Product: <select name="productId">
			<option>Select Product</option>			
			<c:forEach items="${allProduct}" var="p">
				<option value="${p.productId}">${p.productName }</option>			
			</c:forEach>
			</select>
			<br><br>
	<input type="submit" value="Add">	
</form>
</body> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Add Sub Category</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">
		<div class="pagetitle">
	      <h1>Add Sub Category</h1>
	      <nav>
	        <ol class="breadcrumb">
	          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
	          <li class="breadcrumb-item">Add</li>
	          <li class="breadcrumb-item active">Sub Category</li>
	        </ol>
	      </nav>
	    </div>
    
	 <section class="section">
		<div class="col-lg-6">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Sub Category</h5>

              <!-- Vertical Form -->
              <form action="savesubcategory" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Sub Category</label>
                  <input type="text" name="subCategoryName" class="form-control" id="inputNanme4">
                </div>
                
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Category</label>
                  <select name="categoryId" />
					<option>Select category</option>			
					<c:forEach items="${allCategory}" var="c">
						<option value="${c.categoryId}">${c.categoryName }</option>			
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
	
	<form action="savesubcategory" method="post">
	Sub Category:<input type="text" name="subCategoryName"><br><br>
	
	Category: <select name="categoryId" />
			<option>Select category</option>
			
			<c:forEach items="${allCategory}" var="c">

					<option value="${c.categoryId}">${c.categoryName }</option>
			
			</c:forEach>
		</select>
		<br><br>
	
	<input type="submit" value="Add">
	</form>
</body>
</html> -->
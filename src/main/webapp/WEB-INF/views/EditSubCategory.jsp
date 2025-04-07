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
              <h5 class="card-title">Update Sub Category</h5>

              <!-- Vertical Form -->
              <form action="updatesubcategory" method="post" class="row g-3">
                <div class="col-12">
                  <label for="inputNanme4" class="form-label">Sub Category</label>
                  <input type="text" name="subCategoryName" class="form-control" id="inputNanme4" value="${subCategory.subCategoryName}">
                	<input type="hidden" name="subCategoryId"  value="${subCategory.subCategoryId}"/>
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




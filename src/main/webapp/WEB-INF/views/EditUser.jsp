<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | Update User</title>

<link href="assets/img/favicon.png" rel="icon">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">

<jsp:include page="AdminCss.jsp"></jsp:include>
</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Update User</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">Update User</li>
                </ol>
            </nav>
        </div>
        
        <section class="section dashboard">
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Edit User Details</h5>
                            
                            <form action="updateuser" method="post" class="row g-3 needs-validation">
                                <input type="hidden" name="userId" value="${user.userId}"/>
                                
                                <div class="col-12">
                                    <label for="firstName" class="form-label">First Name</label>
                                    <input type="text" name="firstName" class="form-control" value="${user.firstName}" required>
                                </div>
                                
                                <div class="col-12">
                                    <label for="lastName" class="form-label">Last Name</label>
                                    <input type="text" name="lastName" class="form-control" value="${user.lastName}" required>
                                </div>
                                
                                <div class="col-12">
                                    <label for="yourEmail" class="form-label">Email</label>
                                    <input type="email" name="email" class="form-control" value="${user.email}" required>
                                </div>
                                
                                <div class="col-12">
                                    <label for="contactNum" class="form-label">Contact Number</label>
                                    <input type="text" name="contactNum" class="form-control" value="${user.contactNum}" required>
                                </div>
                                
                                <div class="col-12">
                                    <label for="gender" class="form-label">Gender</label>
                                    <input type="text" name="gender" class="form-control" value="${user.gender}" required>
                                </div>
                                
                                <div class="col-12 text-center">
                                    <button class="btn btn-primary w-50" type="submit">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>
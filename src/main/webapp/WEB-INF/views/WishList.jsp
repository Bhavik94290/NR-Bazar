<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wishlist</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS and Favicon Includes -->
    <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body class="animsition">

    <!-- Header -->
    <%-- <jsp:include page="UserHeader.jsp"></jsp:include>
    <!-- Sidebar -->
    <jsp:include page="UserSidebar.jsp"></jsp:include>
 --%>
    <!-- Wishlist Products -->
    <section class="bg0 p-t-23 p-b-130">
    <div class="container">
        <h3 class="ltext-105 cl5 txt-center p-b-30">My Wishlist</h3>

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 isotope-grid">
            <c:forEach items="${wishlistProducts}" var="p">
                <div class="col p-b-35 isotope-item women">
                    <div class="card h-100">
                        <div class="position-relative overflow-hidden">
                            <img src="${p.productImageURL1}" alt="${p.productName}" class="card-img-top" style="object-fit: cover; height: 250px;">
                            <div class="block2-btn-container">
                                <a href="quickview?productId=${p.productId}" class="btn btn-sm btn-outline-secondary stretched-link">
                                    Quick View
                                </a>
                            </div>
                           
                        </div>
                        <div class="card-body d-flex flex-column justify-content-between">
                            <div>
                                <h5 class="card-title">
                                    <a href="ProductList.jsp" class="text-decoration-none text-dark">
                                        ${p.productName}
                                    </a>
                                </h5>
                                <p class="card-text">
                                    <span class="fw-bold">${p.offerPrice}</span>
                                </p>
                            </div>
                            <div class="d-flex justify-content-end">
                                <a href="removefromwishlist/${p.productId}" class="btn btn-outline-danger btn-sm">
                                    <i class="bi bi-heart-fill"></i> Remove
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
<style>
    .block2-btn-container {
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        opacity: 0;
        transition: opacity 0.3s ease;
        background-color: rgba(0, 0, 0, 0.5); /* Optional overlay */
        height: 40px; /* Adjust as needed */
    }

    .block2:hover .block2-btn-container {
        opacity: 1;
    }

    .block2-btn-container .btn {
        color: white;
        border: none;
    }

    .card-title a:hover {
        color: #007bff; /* Example hover color */
    }
</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <i class="zmdi zmdi-chevron-up"></i>
        </span>
    </div>

    <!-- Scripts -->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/sweetalert/sweetalert.min.js"></script>
    <script>
        $('.js-addwish-b2').on('click', function(e){
            e.preventDefault();
            var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
            swal(nameProduct, "is removed from wishlist!", "success");

            $.ajax({
                url: $(this).attr('href'),
                success: function(response) {
                    setTimeout(function(){
                        window.location.reload();
                    }, 1000);
                }
            });
        });
    </script>

</body>
</html>
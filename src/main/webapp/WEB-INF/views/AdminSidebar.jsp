<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     
      <aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="admindashboard">
				<i class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-person"></i><span>Users</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<!--  <li><a href="viewuser"> <i class="bi bi-circle"></i><span>Add
							User</span>
				</a></li>-->
				<li><a href="listuser"> <i class="bi bi-circle"></i><span>List
							User</span>
				</a></li>
			</ul></li>
		<!-- End Components Nav -->




		<li class="nav-item">
	        <a class="nav-link collapsed" data-bs-target="#areas-nav" data-bs-toggle="collapse" href="#">
	            <i class="bi bi-house"></i><span>Areas</span>
	            <i class="bi bi-chevron-down ms-auto"></i>
	        </a>
	        <ul id="areas-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
	            <li><a href="area"><i class="bi bi-circle"></i><span>Add Area</span></a></li>
	            <li><a href="listarea"><i class="bi bi-circle"></i><span>List Area</span></a></li>
	        </ul>
    		</li>
			
			 <!--Catr menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#cart-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-cart"></i><span>Cart</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="cart-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="cart"><i class="bi bi-circle"></i><span>Add Cart</span></a></li>
		            <li><a href="listcart"><i class="bi bi-circle"></i><span>List Cart</span></a></li>
		        </ul>
    		</li>
			
			 <!--Category menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#category-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-bookmark"></i><span>Category</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="category-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="category"><i class="bi bi-circle"></i><span>Add Category</span></a></li>
		            <li><a href="listcategory"><i class="bi bi-circle"></i><span>List Category</span></a></li>
		        </ul>
    		</li>
    		
    		 <!-- Sub Category Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#subcategory-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-list-task"></i><span>Sub Category</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="subcategory-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="subcategory"><i class="bi bi-circle"></i><span>Add Sub Category</span></a></li>
		            <li><a href="listsubcategory"><i class="bi bi-circle"></i><span>List Sub Categories</span></a></li>
		        </ul>
		    </li>
		
		<!--Order details menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#orderdetails-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-receipt"></i><span>Order Details</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="orderdetails-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="orderdetails"><i class="bi bi-circle"></i><span>Add Order</span></a></li>
		            <li><a href="listorderdetails"><i class="bi bi-circle"></i><span>List Orders</span></a></li>
		        </ul>
    		</li>
			
			 <!--Orders menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#orders-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-list"></i><span>Orders</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="orders-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="orders"><i class="bi bi-circle"></i><span>Add Order</span></a></li>
		            <li><a href="listorders"><i class="bi bi-circle"></i><span>List Orders</span></a></li>
		        </ul>
    		</li>
    
			 <!--Product menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#product-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-bag"></i><span>Product</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="product-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="product"><i class="bi bi-circle"></i><span>Add Product</span></a></li>
		            <li><a href="listproduct"><i class="bi bi-circle"></i><span>List Products</span></a></li>
		        </ul>
   			 </li>
   			 
   			 <!-- User Address Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#useraddress-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-house-door"></i><span>User Address</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="useraddress-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="useraddress"><i class="bi bi-circle"></i><span>Add User Address</span></a></li>
		            <li><a href="listuseraddress"><i class="bi bi-circle"></i><span>List User Addresses</span></a></li>
		        </ul>
		    </li>
			
			 <!--Review menu-->
			<li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#review-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-star"></i><span>Review</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="review-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="review"><i class="bi bi-circle"></i><span>Add Review</span></a></li>
		            <li><a href="listreview"><i class="bi bi-circle"></i><span>List Reviews</span></a></li>
		        </ul>
   			</li>
   			
   			<!-- WishList Menu -->
		    <li class="nav-item">
		        <a class="nav-link collapsed" data-bs-target="#wishlist-nav" data-bs-toggle="collapse" href="#">
		            <i class="bi bi-bookmark"></i><span>WishList</span>
		            <i class="bi bi-chevron-down ms-auto"></i>
		        </a>
		        <ul id="wishlist-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
		            <li><a href="wishlist"><i class="bi bi-circle"></i><span>Add to WishList</span></a></li>
		            <li><a href="listwishlist"><i class="bi bi-circle"></i><span>List WishList</span></a></li>
		        </ul>
		    </li>
   			
		
		
		
		<li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#city-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-geo-alt"></i><span>City</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="city-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newcity">
              <i class="bi bi-circle"></i><span>Add City</span>
            </a>
          </li>
          <li>
            <a href="listcity">
              <i class="bi bi-circle"></i><span>List of Cities</span>
            </a>
          </li>
        </ul>
      </li><!-- End Appointments Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#state-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-globe"></i><span>State</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="state-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newstate">
              <i class="bi bi-circle"></i><span>Add State</span>
            </a>
          </li>
          <li>
            <a href="liststate">
              <i class="bi bi-circle"></i><span>List of States</span>
            </a>
          </li>
        </ul>
      </li><!-- End Appointments Nav -->
		
		
		<li class="nav-heading">Manage</li>

			<li class="nav-item">
			    <a class="nav-link collapsed" data-bs-target="#report-nav" data-bs-toggle="collapse" href="#">
			        <i class="bi bi-reception-3"></i>
			        <span>Reports</span>
			        <i class="bi bi-chevron-down ms-auto"></i>
			    </a>
			    <ul id="report-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
			    
			        <li>
			            <a href="customerreport">
			                <i class="bi bi-circle"></i><span>Customer Reports</span>
			            </a>
				        </li>
			        <li>
			            <a href="salesreport">
			                <i class="bi bi-circle"></i><span>Sales Reports</span>
			            </a>
			        </li>
			        
			        <li>
			            <a href="orderreport">
			                <i class="bi bi-circle"></i><span>Order Reports</span>
			            </a>
			        </li>
			    </ul>
			</li>




		<li class="nav-item"><a class="nav-link collapsed"
			href="userdashboard"> <i class="bi bi-building-fill"></i> <span>Home</span>
		</a></li>
		<!-- End Profile Page Nav -->


	</ul>

</aside>


</body>
</html>
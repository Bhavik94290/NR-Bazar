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

		<li class="nav-item"><a class="nav-link " href="index.html">
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
				<li><a href="viewuser"> <i class="bi bi-circle"></i><span>Add
							User</span>
				</a></li>
				<li><a href="listuser"> <i class="bi bi-circle"></i><span>List
							User</span>
				</a></li>
			</ul></li>
		<!-- End Components Nav -->




		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-person"></i><span>SELLER</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="icons-bootstrap.html"> <i class="bi bi-circle"></i><span>Bootstrap
							Icons</span>
				</a></li>
				<li><a href="icons-remix.html"> <i class="bi bi-circle"></i><span>Remix
							Icons</span>
				</a></li>
				<li><a href="icons-boxicons.html"> <i class="bi bi-circle"></i><span>Boxicons</span>
				</a></li>
			</ul></li>
		<!-- End Icons Nav -->
		
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

		<li class="nav-item"><a class="nav-link collapsed"
			href="listmembers"> <i class="bi bi-person"></i> <span>Members</span>
		</a></li>
		<!-- End Profile Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="listhome"> <i class="bi bi-building-fill"></i> <span>Home</span>
		</a></li>
		<!-- End Profile Page Nav -->


	</ul>

</aside>


</body>
</html>
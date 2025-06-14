<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background: linear-gradient(to right, #00aaff, #ffffff);
	padding-top: 70px; /* Adjust for fixed navbar height */
}

.navbar {
	background-color: #343a40; /* Dark background for navbar */
}

.navbar .navbar-brand, .navbar .nav-link {
	color: #ffffff; /* Light text color for navbar items */
}

.navbar .navbar-brand img {
	height: 40px; /* Adjust the size of the logo */
}

.navbar .nav-link.active {
	font-weight: bold;
	background-color: #495057;
	/* Slightly lighter background for active link */
}

.logout-btn {
	margin-left: auto; /* Pushes the logout button to the right */
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	/*height: calc(100vh - 70px);*/
	/* Full viewport height minus navbar height */
}

footer {
	background-color: #343a40;
	color: #ffffff;
	padding: 10px 0;
	bottom: 0;
	width: 100%;
	text-align: center;
	font-weight: bold; /* Make font bold */
	font-size: 1.0em; /* Increase font size */
}

.my-card {
	transition: transform 0.3s ease-in-out;
	background-color: transparent;
	border: none;
}

.my-card:hover {
	transform: scale(1.05);
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<a class="navbar-brand" href="home.jsp"> ERP </a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li
					class="nav-item <%if (request.getRequestURI().endsWith("home.jsp")) {%>active<%}%>">
					<a class="nav-link" href="home.jsp">Home</a>
				</li>
				<li
					class="nav-item dropdown <%if (request.getRequestURI().endsWith("addsalesdata.jsp") || request.getRequestURI().endsWith("updatesalesdata.jsp")
		|| request.getRequestURI().endsWith("viewsalesdata.jsp")
		|| request.getRequestURI().endsWith("deletesalesdata.jsp")) {%>active<%}%>">
					<a
					class="nav-link dropdown-toggle <%if (request.getRequestURI().endsWith("addsalesdata.jsp") || request.getRequestURI().endsWith("updatesalesdata.jsp")
		|| request.getRequestURI().endsWith("viewsalesdata.jsp")
		|| request.getRequestURI().endsWith("deletesalesdata.jsp")) {%>active<%}%>"
					href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Sales Data </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a
							class="dropdown-item <%if (request.getRequestURI().endsWith("addsalesdata.jsp")) {%>active<%}%>"
							href="addsalesdata.jsp">Add Sales Data</a> <a
							class="dropdown-item <%if (request.getRequestURI().endsWith("updatesalesdata.jsp")) {%>active<%}%>"
							href="updatesalesdata.jsp">Update Sales Data</a> <a
							class="dropdown-item <%if (request.getRequestURI().endsWith("viewsalesdata.jsp")) {%>active<%}%>"
							href="viewsalesdata.jsp">Retrieve Sales Data</a> <a
							class="dropdown-item <%if (request.getRequestURI().endsWith("deletesalesdata.jsp")) {%>active<%}%>"
							href="deletesalesdata.jsp">Delete Sales Data</a>
					</div>
				</li>

			</ul>
			<ul class="navbar-nav logout-btn">
				<li
					class="nav-item <%if (request.getRequestURI().endsWith("logout.jsp")) {%>active<%}%>">
					<a class="nav-link" href="logout.jsp">Logout</a>
				</li>
			</ul>
		</div>
	</nav>

	<!-- Main Content -->
	<!-- Carousel -->
	<div id="carouselExampleIndicators"
		class="carousel slide container-fluid my-1" style="height: 600px;">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" style="height: 100%;">
			<div class="carousel-item active" style="height: 100%;">
				<img src="https://images.pexels.com/photos/753331/pexels-photo-753331.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
					class="d-block w-100" alt="Slide 1"
					style="height: 100%; object-fit: cover;">
				<div class="carousel-caption d-none d-md-block">
					<h5></h5>
					<p></p>
				</div>
			</div>
			<div class="carousel-item" style="height: 100%;">
				<img src="https://images.pexels.com/photos/2326876/pexels-photo-2326876.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
					class="d-block w-100" alt="Slide 2"
					style="height: 100%; object-fit: cover;">
				<div class="carousel-caption d-none d-md-block">
					<h5></h5>
					<p></p>
				</div>
			</div>
			<div class="carousel-item" style="height: 100%;">
				<img src="https://images.pexels.com/photos/3840441/pexels-photo-3840441.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
					class="d-block w-100" alt="Slide 3"
					style="height: 100%; object-fit: cover;">
				<div class="carousel-caption d-none d-md-block">
					<h5></h5>
					<p></p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- Cards Section (just for demonstration) -->
	<div>
	<h2 class="text-center">Services</h2>
	</div>
	<div class="container my-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card my-card">
					<img src="https://cdn4.iconfinder.com/data/icons/shipping-and-delivery-colour-collection/60/32_-_Shipping_and_Delivery_-_Colour_-_Cargo_Ship-1024.png" class="card-img-top"
						alt="Card image">
					<div class="card-body">
						<h5 class="card-title text-center">Sea Transport</h5>
						<p class="card-text"></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card my-card">
					<img src="https://th.bing.com/th/id/R.6f8b4ad0f34e27b094896b81810d0aa5?rik=%2bTTByAUO1jbJdQ&riu=http%3a%2f%2fwww.landlordlawblog.co.uk%2fwp-content%2fuploads%2f2017%2f04%2ficon-Changing-Tenants-Green.png&ehk=wBCOow54EmtPI0GewAT3NFWNt2H8971%2fH6wiOPDhQI8%3d&risl=&pid=ImgRaw&r=0" class="card-img-top"
						alt="Card image">
					<div class="card-body">
						<h5 class="card-title text-center">Community</h5>
						<p class="card-text"></p>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card my-card">
					<img src="https://th.bing.com/th/id/R.e022bbfc721749e1d7445f71df984806?rik=1HG4tbNdwsonLg&riu=http%3a%2f%2fgetdrawings.com%2ffree-icon%2fpartner-icon-png-66.png&ehk=rLD%2baLPKIFMWesBawsyGvom7T0dNV9TMEG2MFPP71wI%3d&risl=&pid=ImgRaw&r=0" class="card-img-top"
						alt="Card image">
					<div class="card-body">
						<h5 class="card-title text-center">Import & Export</h5>
						<p class="card-text"></p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<footer>
		<div align="center">

			<p>&copy;2024 All Rights Reserved. EnterPrise Resource Planning</p>
		</div>
	</footer>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
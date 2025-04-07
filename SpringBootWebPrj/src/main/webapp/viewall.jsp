<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Job Post List | Minh đượi Portal</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

	<style>
		body {
			background: linear-gradient(to right, #f9f9f9, #fefefe);
		}
		.card {
			border-radius: 1rem;
			box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
			transition: transform 0.2s ease;
			height: 100%;
		}
		.card:hover {
			transform: translateY(-5px);
		}
		.card-title {
			font-size: 1.5rem;
			font-weight: 600;
		}
		ul {
			margin-bottom: 0;
			padding-left: 1.2rem;
		}
		h2 {
			font-weight: 700;
			color: #333;
		}
	</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
	<div class="container">
		<a class="navbar-brand fs-1 fw-medium" href="#">Minh đượi Job Portal Web App</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
				<li class="nav-item"><a class="nav-link" href="https://Minh.com/">Contact</a></li>
			</ul>
		</div>
	</div>
</nav>

<!-- Job List -->
<div class="container mt-5">
	<h2 class="text-center mb-5">📋 Job Post List</h2>

	<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
		<c:forEach var="jobPost" items="${jobPosts}">
			<div class="col">
				<div class="card h-100">
					<div class="card-body">
						<h5 class="card-title">${jobPost.postProfile}</h5>
						<p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
						<p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
						<p class="card-text"><strong>Tech Stack:</strong></p>
						<ul>
							<c:forEach var="tech" items="${jobPost.postTechStack}">
								<li>${tech}</li>
							</c:forEach>
						</ul>
					</div>
					<div class="card-footer bg-transparent border-top-0">
						<!-- You can add Edit/Delete buttons here -->
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Post New Job | Minh đượi Portal</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

	<style>
		body {
			background: linear-gradient(to right, #f9f9f9, #fefefe);
		}
		.card {
			border: none;
			border-radius: 1rem;
			box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
		}
		.card-body {
			padding: 2rem;
		}
		.btn-primary {
			background-color: #ff8f00;
			border: none;
		}
		.btn-primary:hover {
			background-color: #e07b00;
		}
		h2 {
			color: #333;
			font-weight: 600;
		}
		label {
			font-weight: 500;
		}
	</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
	<div class="container">
		<a class="navbar-brand fs-1 fw-medium" href="#">Minh đượi Job Portal Web App</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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

<!-- Form Container -->
<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card">
				<div class="card-body">
					<h2 class="text-center mb-4">📝 Post a New Job</h2>
					<form action="handleForm" method="post">
						<div class="mb-3">
							<label for="postId" class="form-label">Post ID</label>
							<input type="text" class="form-control" id="postId" name="postId" required>
						</div>

						<div class="mb-3">
							<label for="postProfile" class="form-label">Job Title</label>
							<input type="text" class="form-control" id="postProfile" name="postProfile" required>
						</div>

						<div class="mb-3">
							<label for="postDesc" class="form-label">Job Description</label>
							<textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
						</div>

						<div class="mb-3">
							<label for="reqExperience" class="form-label">Required Experience (Years)</label>
							<input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
						</div>

						<div class="mb-4">
							<label for="postTechStack" class="form-label">Tech Stack</label>
							<select multiple class="form-select" id="postTechStack" name="postTechStack" required>
								<% String[] techOptions = {
									"Java", "JavaScript", "Swift", "TypeScript", "Go", "Kotlin", "Rust", "PHP",
									"HTML5", "CSS3", "GraphQL", "React", "Vue.js", "Angular", "Node.js",
									"Flutter", "Django", "Flask", "Ruby on Rails", "Laravel", "TensorFlow",
									"PyTorch", "Kubernetes", "Docker", "Jenkins", "AWS", "Azure", "GCP",
									"Blockchain", "AI", "ML", "Cybersecurity"
								};
								for(String tech : techOptions) {
								%>
								<option value="<%= tech %>"><%= tech %></option>
								<% } %>
							</select>
							<small class="form-text text-muted">Hold Ctrl (Cmd on Mac) to select multiple.</small>
						</div>

						<div class="text-center">
							<button type="submit" class="btn btn-primary px-5 py-2">Submit Job</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>

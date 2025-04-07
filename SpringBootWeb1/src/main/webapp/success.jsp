<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.telusko.SpringBootWeb1.model.JobPost" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Post Details</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(135deg, #fddb92, #d1fdff);
            min-height: 100vh;
        }

        .card {
            background: #1e1e2f;
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            padding: 20px;
        }

        .card-title {
            font-size: 1.8rem;
            color: #ffcc70;
        }

        .card-text {
            color: #e0e0e0;
            font-size: 1.1rem;
        }

        ul li {
            list-style-type: '🚀 ';
            margin-left: 20px;
            transition: transform 0.2s;
        }

        ul li:hover {
            transform: translateX(5px);
            color: #ffd166;
        }

        h2 {
            color: #2d3436;
            font-weight: 700;
        }

        .navbar-brand {
            font-weight: bold;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1" href="#">💼 minh đượi Job Portal</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
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

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container mt-5">
    <h2 class="text-center mb-5">📄 Job Post Details</h2>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card text-white">
                <div class="card-body">
                    <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                    <p class="card-text">
                        <strong>Description:</strong><br>
                        <%= myJobPost.getPostDesc() %>
                    </p>
                    <p class="card-text">
                        <strong>Experience Required:</strong>
                        <%= myJobPost.getReqExperience() %> years
                    </p>
                    <p class="card-text">
                        <strong>Tech Stack:</strong>
                        <ul>
                            <% for (String tech : myJobPost.getPostTechStack()) { %>
                                <li><%= tech %></li>
                            <% } %>
                        </ul>
                    </p>
                </div>
                <div class="card-footer text-end text-muted">
                    <small>🚧 Keep Building Your Career!</small>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>

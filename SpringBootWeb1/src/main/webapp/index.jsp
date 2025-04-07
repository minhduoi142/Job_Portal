<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Minh đượi Job Portal</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500;700&display=swap" rel="stylesheet">

    <!-- Custom Styles -->
    <style>
        body {
            font-family: 'Quicksand', sans-serif;
            background: linear-gradient(135deg, #f9d976, #f39f86);
            min-height: 100vh;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .btn-custom {
            background-color: #ff6f61;
            border: none;
            padding: 12px 24px;
            font-size: 18px;
            border-radius: 30px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-custom:hover {
            background-color: #ff3b2e;
            transform: scale(1.05);
        }

        .hero-title {
            font-size: 2.5rem;
            font-weight: 700;
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        .icon {
            font-size: 40px;
            margin-bottom: 15px;
            color: #ff6f61;
        }
    </style>

    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <a class="navbar-brand fs-1 fw-bold" href="#">🚀 Minh đượi Job Portal</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
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

<h1 class="hero-title">Welcome to Minh đượi Job Portal 🎯</h1>

<div class="container mt-5">
    <div class="row g-4">
        <!-- Card 1 -->
        <div class="col-md-6">
            <div class="card text-center p-4">
                <div class="icon"><i class="fas fa-briefcase"></i></div>
                <h4 class="mb-3">View Available Jobs</h4>
                <a href="/viewalljobs" class="btn btn-custom">View All Jobs</a>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-6">
            <div class="card text-center p-4">
                <div class="icon"><i class="fas fa-plus-circle"></i></div>
                <h4 class="mb-3">Post a New Job</h4>
                <a href="/addjob" class="btn btn-custom">Add Job</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>

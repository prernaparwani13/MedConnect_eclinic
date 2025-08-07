<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

<style>

  .navbar-hospital {
    background: linear-gradient(to right, #005c97, #363795);
    padding: 1rem;
  }

  .navbar-brand {
    font-weight: bold;
    color: #ffffff !important;
    font-size: 1.6rem;
    display: flex;
    align-items: center;
  }

  .navbar-brand img {
    width: 60px;
    height: 60px;
    margin-right: 10px;
  }

  .nav-link {
    color: #ffffff !important;
    margin-left: 1rem;
    transition: 0.1s ease-in-out;
  }

  .nav-link:hover {
    color: #00ffd5 !important;
    background-color: rgba(255,255,255,0.1);
    border-radius: 8px;
  }

  .dropdown-menu {
    background-color: #363795;
    border: none;
  }

  .dropdown-item {
    color: #fff;
  }

  .dropdown-item:hover {
    background-color: #2a2f98;
    color: #ffd700;
  }

  .form-control {
    border-radius: 10px;
  }

  .btn-outline-success {
    color: #00ff7f;
    border-color: #00ff7f;
  }

  .btn-outline-success:hover {
    background-color: #00ff7f;
    color: #000;
  }

  /* Updated Carousel Image Styling */
  .carousel {
    margin-top: 2rem;
  }

  .carousel-inner {
    border-radius: 15px;
    overflow: hidden;
  }

  .carousel-item img {
    height: 500px;
    width: 100%;
    object-fit: cover;
  }
  
  /* Updated Carousel Image Styling */
  .carousel {
    margin-top: 2rem;
  }

  .carousel-inner {
    border-radius: 15px;
    overflow: hidden;
  }

  .carousel-item img {
    height: 500px;
    width: 100%;
    object-fit: cover;
  }
  
</style>

<nav class="navbar navbar-expand-lg navbar-hospital">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="https://static9.depositphotos.com/1229718/1167/i/450/depositphotos_11673238-stock-photo-caduceus-health-care-icon.jpg" alt="eHospital Logo">
      eHospital
    </a>
    <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" href="#about"><i class="bi bi-speedometer2 me-1"></i>About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Login.jsp"><i class="bi bi-person-lines-fill me-1"></i>Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Contact.jsp"><i class="bi bi-calendar-check me-1"></i>Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#services"><i class="bi bi-person-badge me-1"></i>Services</a>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>

<!-- Updated Carousel Section -->
<div id="imageCarousel" class="carousel slide container" data-bs-ride="carousel" data-bs-interval="3000">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/hp2.jpg" class="d-block" alt="Image 1">
    </div>
    <div class="carousel-item">
      <img src="images/health.jpg" class="d-block" alt="Image 2">
    </div>
    <div class="carousel-item">
      <img src="images/health3.jpg" class="d-block" alt="Image 3">
    </div>
  </div>

  <!-- Controls -->
  <button class="carousel-control-prev" type="button" data-bs-target="#imageCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#imageCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>

  <!-- Indicators -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#imageCarousel" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#imageCarousel" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#imageCarousel" data-bs-slide-to="2"></button>
  </div>
</div>

<!-- Bootstrap CSS & Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

<!-- 🔽 Custom Hover Styles -->
<style>
  .module-card {
    position: relative;
    overflow: hidden;
    transition: all 0.4s ease;
    border: 2px solid transparent;
    border-radius: 15px;
    background: #fff;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
  }

  .module-card:hover {
    transform: translateY(-10px) scale(1.03);
    border-image: linear-gradient(45deg, #00c6ff, #0072ff) 1;
    background: linear-gradient(135deg, #f9f9f9, #ffffff);
    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.15);
  }

  .module-card .card-body {
    transition: background 0.3s ease;
    padding: 2rem;
  }

  .module-card:hover .card-body {
    background-color: #f0f8ff;
    border-radius: 10px;
  }

  .card-icon {
    transition: transform 0.4s ease, color 0.3s ease;
    display: inline-block;
  }

  .module-card:hover .card-icon {
    transform: scale(1.2) rotate(5deg);
    color: #0072ff !important;
  }

  .card-title {
    margin-top: 15px;
    font-weight: bold;
  }
  .doctor-img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid #00b4d8;
}

.doctor-card:hover {
    transform: translateY(-5px);
    transition: 0.3s ease-in-out;
}
  
</style>

<!-- 🔽 Card Section -->

<section class="py-5 bg-light">
  <div id ="services" class="container">
    <h2 class="text-center mb-5 fw-bold">Key Features</h2>
    <div class="row g-4">

      <!-- Module Example -->
      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-calendar-check display-5 card-icon text-primary"></i>
            <h5 class="card-title">Appointment Booking</h5>
            <p class="card-text">Easily schedule and manage doctor appointments online from anywhere.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-folder2-open display-5 card-icon text-success"></i>
            <h5 class="card-title">Patient Records</h5>
            <p class="card-text">Maintain medical history, prescriptions, and reports digitally.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-camera-video display-5 card-icon text-danger"></i>
            <h5 class="card-title">Virtual Consultations</h5>
            <p class="card-text">Connect with healthcare professionals through secure video calls.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-chat-dots display-5 card-icon text-info"></i>
            <h5 class="card-title">Health Chatbot</h5>
            <p class="card-text">24/7 AI-powered assistant to answer basic health queries.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-file-earmark-medical display-5 card-icon text-warning"></i>
            <h5 class="card-title">E-Prescription</h5>
            <p class="card-text">Upload, track, and view prescriptions digitally for future use.</p>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card module-card text-center h-100">
          <div class="card-body">
            <i class="bi bi-heart-pulse display-5 card-icon text-danger"></i>
            <h5 class="card-title">Health Tips</h5>
            <p class="card-text">Daily curated health tips to improve lifestyle and well-being.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- GREAT DOCTORS SECTION -->
<section id="doctors" class="py-5 bg-light">
  <div class="container text-center">
    <h2 class="mb-5 text-primary">Our Great Doctors</h2>
    <div class="row justify-content-center">
      <div class="col-md-4 mb-4">
        <div class="doctor-card p-4 bg-white shadow rounded text-center">
          <img src="https://c8.alamy.com/comp/KX39P9/indian-medical-surgeon-lady-doctor-laptop-working-in-hospital-KX39P9.jpg" alt="Dr. Sharma" class="doctor-img mb-3">
          <h5 class="text-info">Dr. Priya Sharma</h5>
          <p>Cardiologist (10+ yrs)</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="doctor-card p-4 bg-white shadow rounded text-center">
          <img src="https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg" alt="Dr. Raj Mehta" class="doctor-img mb-3">
          <h5 class="text-info">Dr. Raj Mehta</h5>
          <p>Dermatologist (8+ yrs)</p>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="doctor-card p-4 bg-white shadow rounded text-center">
          <img src="https://images.theconversation.com/files/304957/original/file-20191203-66986-im7o5.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip" alt="Dr. Simran Kaur" class="doctor-img mb-3">
          <h5 class="text-info">Dr. Simran Kaur</h5>
          <p>Pediatrician (12+ yrs)</p>
        </div>
      </div>
    </div>
  </div>
</section>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

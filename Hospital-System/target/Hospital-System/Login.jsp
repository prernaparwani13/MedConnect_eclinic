<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="Component/login.css">

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
    transition: 0.3s ease-in-out;
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
</style>
<body>
<div class="navbar">
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
          <a class="nav-link active" href="about.jsp"><i class="bi bi-speedometer2 me-1"></i>About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Login.jsp"><i class="bi bi-person-lines-fill me-1"></i>Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Contact.jsp"><i class="bi bi-calendar-check me-1"></i>Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp#services"><i class="bi bi-person-badge me-1"></i>Services</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown">
            <i class="bi bi-person-circle me-1"></i>Profile
          </a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="#">Settings</a></li>
            <li><a class="dropdown-item" href="#">Logout</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex ms-3" role="search">
        <input class="form-control me-2" type="search" placeholder="Search patients..." aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</div>

	<div class="main-container">
	<div class="overlay">
    <div class="login-box">
    <div class="logo-slogan">
        <img src="https://www.medconnectplus.in/storage/2021/05/MedConmnectPlus-eClinic-logo.png" alt="Hospital Logo">
        <p class="slogan">Your Health, Our Priority</p>
    </div>

    <h2>Login</h2>
    <form id="Loginform"action="LoginUser" method="post" >
        <input type="text" name="email" placeholder="Username or Mobile No." required>
        <input type="password" name="password" placeholder="Password" required>

        <div class="captcha-box">
            <input type="text" name="captcha" placeholder="Enter Captcha" required>
            <span class="captcha-img">A1B9X</span>
        </div>

        <button type="submit">Login</button>

        <p class="signup">Not registered? <a href="signup.jsp">Sign up here</a></p>
    </form>
</div>
    </div>
    </div>

</body>
</html>
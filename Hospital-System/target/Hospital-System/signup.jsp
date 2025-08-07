<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>MedConnect - Sign Up</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
  <style>
    body {
      background: linear-gradient(to right, #f0f2f5, #dbeafe);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Navbar Styling */
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
      width: 50px;
      height: 50px;
      margin-right: 10px;
    }

    .nav-link {
      color: #ffffff !important;
      margin-left: 1rem;
    }

    .nav-link:hover {
      color: #00ffd5 !important;
      background-color: rgba(255,255,255,0.1);
      border-radius: 8px;
    }

    /* Signup Form */
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 80vh;
    }

    .form-box {
      background: #ffffff;
      padding: 2rem 2.5rem;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0,0,0,0.15);
      max-width: 450px;
      width: 100%;
    }

    .form-box h2 {
      text-align: center;
      margin-bottom: 1.5rem;
      color: #363795;
    }

    .form-box input {
      width: 100%;
      padding: 12px 14px;
      margin-bottom: 1rem;
      border-radius: 10px;
      border: 1px solid #ccc;
      outline: none;
      font-size: 1rem;
    }

    .form-box button {
      width: 100%;
      padding: 12px;
      background-color: #363795;
      color: white;
      font-size: 1.1rem;
      border: none;
      border-radius: 12px;
      cursor: pointer;
      transition: background 0.3s;
    }

    .form-box button:hover {
      background-color: #2b2c91;
    }

    .login-link {
      text-align: center;
      margin-top: 1rem;
    }

    .login-link a {
      color: #005c97;
      text-decoration: none;
    }

    .login-link a:hover {
      text-decoration: underline;
    }

    /* Popup Modal */
    .popup {
      display: none;
      position: fixed;
      top: 0; left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0,0,0,0.5);
      justify-content: center;
      align-items: center;
      z-index: 9999;
    }

    .popup-box {
      background: white;
      padding: 2rem;
      border-radius: 14px;
      text-align: center;
      box-shadow: 0 4px 16px rgba(0,0,0,0.3);
      max-width: 400px;
    }

    .popup-box p {
      font-size: 1.2rem;
      margin-bottom: 1rem;
      color: green;
    }

    .popup-box button {
      padding: 10px 20px;
      background-color: #005c97;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 1rem;
      cursor: pointer;
    }

    .popup-box button:hover {
      background-color: #004077;
    }
  </style>
</head>
<body>

  <!-- NAVBAR -->
  <nav class="navbar navbar-expand-lg navbar-hospital">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="https://static9.depositphotos.com/1229718/1167/i/450/depositphotos_11673238-stock-photo-caduceus-health-care-icon.jpg" alt="eHospital Logo">
        MedConnect
      </a>
      <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarContent">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" href="#about">About Us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Contact.jsp">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#services">Services</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- SIGNUP FORM -->
  <div class="container">
    <div class="form-box">
      <h2>Sign Up</h2>
      <%
        String error = (String) request.getAttribute("error");
        String success = (String) request.getAttribute("success");

        if (error != null) {
    %>
        <p style="color: red;"><%= error %></p>
    <% } else if (success != null) { %>
        <p style="color: green;"><%= success %></p>
    <% } %>
      <form action="SignupNewUser" method="post">
        <input type="text" name="fullname" placeholder="Full Name" required />
        <input type="email" name="email" placeholder="Email Address" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="tel" name="phone" placeholder="Phone Number" required />
        
        
        <button type="submit">Create Account</button>
        <p class="login-link">Already have an account? <a href="Login.jsp">Login</a></p>
      </form>
    </div>
  </div>

  <!-- SUCCESS POPUP -->
  <div class="popup" id="popup">
    <div class="popup-box">
      <p>✅ Account created successfully!</p>
      <button onclick="closePopup()">OK</button>
    </div>
  </div>

  <script>
    const form = document.getElementById('signupForm');
    const popup = document.getElementById('popup');

    form.addEventListener('submit', function (e) {
      e.preventDefault();
      popup.style.display = 'flex';
      form.reset();
    });

    function closePopup() {
      popup.style.display = 'none';
    }
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
    
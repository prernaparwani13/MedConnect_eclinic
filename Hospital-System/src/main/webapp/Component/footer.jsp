<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Stylish Footer -->
<style>
  .footer-link a {
    color: #dcdcdc;
    text-decoration: none;
    transition: all 0.3s ease;
  }

  .footer-link a:hover {
    color: #0d6efd;
    padding-left: 6px;
  }

  .footer-social a {
    font-size: 1.4rem;
    margin: 0 10px;
    display: inline-block;
    color: #dcdcdc;
    transition: transform 0.3s ease, color 0.3s ease;
  }

  .footer-social a:hover {
    color: #0d6efd;
    transform: scale(1.2);
  }

  footer {
    background: linear-gradient(135deg, #1c1c1c, #222831);
    color: #dcdcdc;
  }

  footer .footer-title {
    color: #0dcaf0;
    font-weight: bold;
    margin-bottom: 1rem;
  }

  footer hr {
    border-top: 1px solid #444;
  }
</style>

<footer class="pt-5 pb-4 mt-5">
  <div class="container">
    <div class="row">

      <!-- Brand -->
      <div class="col-md-3 mb-4">
        <h5 class="footer-title">Health<span class="text-success">Care+</span></h5>
        <p>Your trusted digital health partner for appointments, records, and consultations.</p>
      </div>

      <!-- Links -->
      <div class="col-md-3 mb-4 footer-link">
        <h6 class="footer-title">Quick Links</h6>
        <p><a href="index.jsp">Home</a></p>
        <p><a href="#services">Features</a></p>
        <p><a href="#doctors">Doctors</a></p>
        <p><a href="Contact.jsp">Contact</a></p>
      </div>

      <!-- Contact -->
      <div class="col-md-3 mb-4">
        <h6 class="footer-title">Contact</h6>
        <p><i class="bi bi-geo-alt-fill me-2"></i>Indore, MP 452001</p>
        <p><i class="bi bi-envelope-fill me-2"></i>info@healthcareplus.com</p>
        <p><i class="bi bi-telephone-fill me-2"></i>+91 98765 43210</p>
      </div>

      <!-- Social -->
      <div class="col-md-3 mb-4 text-center">
        <h6 class="footer-title">Follow Us</h6>
        <div class="footer-social">
          <a href="#"><i class="bi bi-facebook"></i></a>
          <a href="#"><i class="bi bi-instagram"></i></a>
          <a href="#"><i class="bi bi-linkedin"></i></a>
          <a href="#"><i class="bi bi-twitter"></i></a>
        </div>
      </div>

    </div>

    <hr class="my-4">

    <div class="text-center">
      <p class="mb-0">&copy; 2025 <strong>HealthCare+</strong>. All rights reserved.</p>
    </div>
  </div>
</footer>

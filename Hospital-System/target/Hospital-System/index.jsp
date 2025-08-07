<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="Component/allcss.jsp"%>
<link rel="stylesheet" href="Component/Style.css">
</head>
<body>
<div class="container">
        <img src="https://www.medconnectplus.in/storage/2021/05/MedConmnectPlus-eClinic-logo.png" alt="eHospital Logo" class="logo" />
        <div class="dots">
            <span class="dot green"></span>
            <span class="dot blue"></span>
            <span class="dot yellow"></span>
        </div>
    </div>


<script>
      setTimeout(() => {
        window.location.href = "user_login.jsp"; // Change to desired page
      }, 3000);
    </script>
</body>
</html>
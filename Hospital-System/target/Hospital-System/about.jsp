<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us | MedConnect</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            background: #f6fbff;
            color: #333;
        }

        header {
            background: linear-gradient(90deg, #00b4d8, #0077b6);
            padding: 40px 20px;
            text-align: center;
            color: white;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        .container {
            max-width: 1100px;
            margin: 30px auto;
            padding: 30px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            color: #0077b6;
            margin-top: 30px;
            font-size: 1.8rem;
        }

        p, li {
            font-size: 1.05rem;
            line-height: 1.6;
        }

        ul {
            padding-left: 20px;
        }

        ul li::before {
            content: "✔";
            color: #00b4d8;
            margin-right: 10px;
        }

        footer {
            text-align: center;
            background-color: #0077b6;
            color: white;
            padding: 20px;
            margin-top: 50px;
            font-size: 0.95rem;
        }

        .icon-section {
            display: flex;
            gap: 30px;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .icon-box {
            flex: 1 1 250px;
            padding: 20px;
            border: 1px solid #e0f4ff;
            border-radius: 12px;
            background: #f0fbff;
            text-align: center;
        }

        .icon-box i {
            font-size: 2.5rem;
            color: #00b4d8;
            margin-bottom: 10px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @media (max-width: 600px) {
            header h1 {
                font-size: 2rem;
            }

            .container {
                margin: 15px;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to MedConnect</h1>
    <p>Your Digital Healthcare Partner</p>
</header>

<div class="container">
    <h2>🌟 Our Vision</h2>
    <p>To simplify and digitize healthcare by connecting patients and doctors through an efficient, transparent, and user-friendly platform.</p>

    <h2>💡 What We Offer</h2>
    <div class="icon-section">
        <div class="icon-box">
            <i class="fas fa-calendar-check"></i>
            <h3>Easy Appointments</h3>
            <p>Book doctor appointments with just a few clicks.</p>
        </div>
        <div class="icon-box">
            <i class="fas fa-user-md"></i>
            <h3>Doctor Profiles</h3>
            <p>View qualifications, specialties, and timings before booking.</p>
        </div>
        <div class="icon-box">
            <i class="fas fa-file-prescription"></i>
            <h3>Digital Prescriptions</h3>
            <p>Doctors can issue prescriptions digitally & securely.</p>
        </div>
        <div class="icon-box">
            <i class="fas fa-history"></i>
            <h3>Medical History</h3>
            <p>Patients can access their treatment records anytime.</p>
        </div>
        <div class="icon-box">
            <i class="fas fa-user-cog"></i>
            <h3>Admin Dashboard</h3>
            <p>Manage doctors, patients & schedules with ease.</p>
        </div>
    </div>

    <h2>👩‍💻 About Us</h2>
    <p><strong>MedConnect</strong> is a full-stack Java-based web application developed by <strong>Prerna Parwani</strong> during her MCA. It uses technologies like Java, Spring Boot, Maven, JSP, MySQL, and frontend tools to provide a real-world healthcare management experience.</p>

    <h2>📬 Contact Us</h2>
    <p>If you’re a hospital aiming to go digital, or a patient seeking smarter healthcare — MedConnect is here to help. Let’s connect and simplify healthcare, together.</p>
</div>

<footer>
    &copy; 2025 MedConnect | Developed by Prerna Parwani
</footer>

</body>
</html>

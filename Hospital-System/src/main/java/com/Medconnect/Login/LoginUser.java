package com.Medconnect.Login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Medconnect.Utils.DatabaseConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginUser")
public class LoginUser extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    public LoginUser() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.sendRedirect("Login.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Input validation
        if (email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "Please provide both email and password.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
            return;
        }
        
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            // Get connection from utility class
            conn = DatabaseConnection.getConnection();
            
            // Query to check user credentials - using email only for now
            String sql = "SELECT id, name, email, password, role FROM users WHERE email=? AND is_active=1";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email.trim());
            
            rs = stmt.executeQuery();
            
            if (rs.next()) {
                // Create session
                HttpSession session = request.getSession();
                session.setAttribute("userId", rs.getInt("id"));
                session.setAttribute("username", rs.getString("name"));
                session.setAttribute("email", email);
                session.setAttribute("role", rs.getString("role"));
                
                // Redirect based on role
                String role = rs.getString("role");
                if ("admin".equals(role)) {
                    response.sendRedirect("admin_dashboard.jsp");
                } else if ("doctor".equals(role)) {
                    response.sendRedirect("doctor_dashboard.jsp");
                } else {
                    response.sendRedirect("dashboard.jsp");
                }
            } else {
                request.setAttribute("error", "Invalid email or password.");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
            
        } catch (ClassNotFoundException e) {
            request.setAttribute("error", "Database driver not found.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } catch (SQLException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } finally {
            // Close resources
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    }
}

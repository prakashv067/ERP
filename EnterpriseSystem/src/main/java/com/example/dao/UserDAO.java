package com.example.dao; // Adjust the package name as needed

import com.example.model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {
    // Database URL, username, and password
    private static final String DB_URL = "jdbc:mysql://localhost:3306/com8";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    static {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to load database driver");
        }
    }

    public boolean addUser(User user) {
        String sql = "INSERT INTO Employee (name, email, username, password) VALUES (?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getUsername());
            pstmt.setString(4, user.getPassword());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

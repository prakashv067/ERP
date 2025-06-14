package com.example.dao; // Adjust the package name as needed

import com.example.model.SalesData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SalesDataDAO {
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

    public boolean insertSalesData(SalesData salesData) {
        String sql = "INSERT INTO sales (salespersonname, target, noofunits, noofunitsold, complete) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, salesData.getSalespersonname());
            pstmt.setDouble(2, salesData.getTarget());
            pstmt.setInt(3, salesData.getNoofunits());
            pstmt.setInt(4, salesData.getNoofunitsold());
            pstmt.setBoolean(5, salesData.isComplete());

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0; // Returns true if the data was successfully inserted

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

package com.example.dao; // Adjust the package name as needed

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SalesDataDeletionDAO {
    
    // Database credentials
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/com8"; // Update with your database URL
    private static final String JDBC_USER = "root"; // Update with your database username
    private static final String JDBC_PASSWORD = ""; // Update with your database password

    // Method to delete sales data by salesperson name
    public boolean deleteSalesData(String salespersonName) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean success = false;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Establish the database connection
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            
            // SQL query to delete sales data
            String sql = "DELETE FROM sales WHERE salespersonname = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, salespersonName);
            
            // Execute the update
            int rowsAffected = preparedStatement.executeUpdate();
            success = (rowsAffected > 0);
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return success;
    }
}

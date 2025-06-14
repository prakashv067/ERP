package com.example.erp.dao;

import com.example.erp.model.SalesPerformance;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SalesPerformanceDAO {

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/com8";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    // Method to fetch sales performance based on salesperson's name
    public SalesPerformance getSalesPerformance(String salespersonName) throws SQLException {
        SalesPerformance performance = null;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Load and register the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Establish the connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            // SQL query to fetch performance data
            String query = "SELECT target, noofunits, noofunitsold, complete FROM sales WHERE salespersonname = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, salespersonName);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Create SalesPerformance object with fetched data
                performance = new SalesPerformance();
                performance.setSalespersonName(salespersonName);
                performance.setTarget(rs.getString("target"));
                performance.setNoOfUnits(rs.getString("noofunits"));
                performance.setNoOfUnitsSold(rs.getString("noofunitsold"));
                performance.setCompletionStatus(rs.getString("complete"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Clean up resources
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }

        return performance;
    }
}

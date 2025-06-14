package com.example.dao; // Adjust the package name as needed

import com.example.model.SalesUpdateData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SalesDataUpdateDAO {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/com8";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    static {
        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public boolean updateSalesData(SalesUpdateData data) {
        String sql = "UPDATE sales SET target = ?, noofunits = ?, noofunitsold = ?, complete = ? WHERE salespersonname = ?";
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setDouble(1, data.getTarget());
            stmt.setInt(2, data.getNumberOfUnits());
            stmt.setInt(3, data.getNumberOfUnitsSold());
            stmt.setBoolean(4, data.isComplete());
            stmt.setString(5, data.getSalespersonName());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

package com.example.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.example.model.ShowSalesData;

public class ShowSalesDataDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/com8";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "";

    public List<ShowSalesData> getAllSalesData() {
        List<ShowSalesData> list = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("✅ JDBC Driver loaded");

            Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
            System.out.println("✅ Connected to database");

            String sql = "SELECT salespersonname, target, noofunits, noofunitsold, complete FROM sales";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                ShowSalesData sd = new ShowSalesData();
                sd.setSalespersonname(rs.getString("salespersonname"));
                sd.setTarget(rs.getString("target"));
                sd.setNoofunits(rs.getInt("noofunits"));
                sd.setNoofunitsold(rs.getInt("noofunitsold"));
                sd.setComplete(rs.getString("complete"));

                System.out.println("✅ Fetched row: " + sd.getSalespersonname());

                list.add(sd);
            }

            rs.close();
            ps.close();
            conn.close();

            System.out.println("✅ Total records fetched: " + list.size());

        } catch (Exception e) {
            System.out.println("❌ Error in DAO: " + e.getMessage());
            e.printStackTrace();
        }

        return list;
    }
}

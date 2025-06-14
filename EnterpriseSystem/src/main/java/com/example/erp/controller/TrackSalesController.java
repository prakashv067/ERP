package com.example.erp.controller;

import com.example.erp.dao.SalesPerformanceDAO;
import com.example.erp.model.SalesPerformance;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/trackSales")
public class TrackSalesController extends HttpServlet {

    private SalesPerformanceDAO performanceDAO = new SalesPerformanceDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String salespersonName = request.getParameter("salespersonName");

        if (salespersonName != null && !salespersonName.trim().isEmpty()) {
            try {
                // Fetch sales performance data
                SalesPerformance performance = performanceDAO.getSalesPerformance(salespersonName);
                if (performance != null) {
                    // Set the performance data as request attribute
                    request.setAttribute("performance", performance);
                    // Forward to JSP page
                    request.getRequestDispatcher("tracksales.jsp").forward(request, response);
                } else {
                    // Handle case where no data was found
                    request.setAttribute("errorMessage", "No data found for salesperson: " + salespersonName);
                    request.getRequestDispatcher("tracksales.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "Database error occurred.");
                request.getRequestDispatcher("tracksales.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Salesperson name cannot be empty.");
            request.getRequestDispatcher("tracksales.jsp").forward(request, response);
        }
    }
}

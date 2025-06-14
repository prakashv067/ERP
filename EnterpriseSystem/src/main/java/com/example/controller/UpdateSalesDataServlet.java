package com.example.controller; // Adjust the package name as needed

import com.example.dao.SalesDataUpdateDAO;
import com.example.model.SalesUpdateData;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateSalesDataServlet extends HttpServlet {

    private SalesDataUpdateDAO salesDataUpdateDAO = new SalesDataUpdateDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String salespersonName = request.getParameter("salespersonname");
        double target = Double.parseDouble(request.getParameter("target"));
        int numberOfUnits = Integer.parseInt(request.getParameter("numberOfUnits"));
        int numberOfUnitsSold = Integer.parseInt(request.getParameter("numberOfUnitsSold"));
        boolean isComplete = Boolean.parseBoolean(request.getParameter("isComplete"));

        // Create POJO and set values
        SalesUpdateData salesUpdateData = new SalesUpdateData();
        salesUpdateData.setSalespersonName(salespersonName);
        salesUpdateData.setTarget(target);
        salesUpdateData.setNumberOfUnits(numberOfUnits);
        salesUpdateData.setNumberOfUnitsSold(numberOfUnitsSold);
        salesUpdateData.setComplete(isComplete);

        // Update sales data using DAO
        boolean isUpdated = salesDataUpdateDAO.updateSalesData(salesUpdateData);

        // Dispatch to appropriate JSP
        if (isUpdated) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("updatesalesdata.jsp").forward(request, response);
        }
    }
}

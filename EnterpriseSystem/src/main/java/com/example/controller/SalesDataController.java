package com.example.controller; // Adjust the package name as needed

import com.example.dao.SalesDataDAO;
import com.example.model.SalesData;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SalesDataController extends HttpServlet {
    private SalesDataDAO salesDataDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        salesDataDAO = new SalesDataDAO(); // Initialize DAO
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data from the request
        String salespersonname = request.getParameter("salespersonname");
        double target = Double.parseDouble(request.getParameter("target"));
        int noofunits = Integer.parseInt(request.getParameter("noofunits"));
        int noofunitsold = Integer.parseInt(request.getParameter("noofunitsold"));
        boolean complete = Boolean.parseBoolean(request.getParameter("complete"));

        // Create SalesData POJO and set data
        SalesData salesData = new SalesData();
        salesData.setSalespersonname(salespersonname);
        salesData.setTarget(target);
        salesData.setNoofunits(noofunits);
        salesData.setNoofunitsold(noofunitsold);
        salesData.setComplete(complete);

        // Insert sales data into the database
        boolean isInserted = salesDataDAO.insertSalesData(salesData);

        // Dispatch based on the result
        if (isInserted) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("addsalesdata.jsp?error=insertFailed").forward(request, response);
        }
    }
}

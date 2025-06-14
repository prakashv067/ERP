package com.example.controller; // Adjust the package name as needed

import com.example.dao.SalesDataDeletionDAO;
import com.example.model.SalesDataDeletePOJO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteSalesDataController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create POJO instance
        SalesDataDeletePOJO salesDataDelete = new SalesDataDeletePOJO();
        salesDataDelete.setSalespersonName(request.getParameter("salespersonname"));

        // Create DAO instance
        SalesDataDeletionDAO dao = new SalesDataDeletionDAO();
        boolean success = dao.deleteSalesData(salesDataDelete.getSalespersonName());

        // Determine dispatch based on operation success
        if (success) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("delatesalesdata.jsp").forward(request, response);
        }
    }
}

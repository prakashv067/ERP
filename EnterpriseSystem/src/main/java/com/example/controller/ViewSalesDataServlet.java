package com.example.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.dao.ShowSalesDataDAO;
import com.example.model.ShowSalesData;

public class ViewSalesDataServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ShowSalesDataDAO dao = new ShowSalesDataDAO();
        List<ShowSalesData> dataList = dao.getAllSalesData();

        System.out.println("➡️ Servlet received list of size: " + dataList.size());

        request.setAttribute("dataList", dataList);
        RequestDispatcher rd = request.getRequestDispatcher("viewsalesdata.jsp");
        rd.forward(request, response);
    }
}

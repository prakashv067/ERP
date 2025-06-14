<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.example.model.ShowSalesData" %>
<html>
<head>
    <title>Sales Data</title>
    <style>
        table { border-collapse: collapse; width: 80%; margin: auto; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        th { background-color: #f5f5f5; }
    </style>
</head>
<body>
    <h2 align="center">Salesperson Data</h2>

    <%
        List<ShowSalesData> dataList = (List<ShowSalesData>) request.getAttribute("dataList");
        if (dataList != null && !dataList.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Salesperson Name</th>
            <th>Target</th>
            <th>No. of Units</th>
            <th>No. of Units Sold</th>
            <th>Complete</th>
        </tr>
        <%
            for (ShowSalesData sd : dataList) {
        %>
        <tr>
            <td><%= sd.getSalespersonname() %></td>
            <td><%= sd.getTarget() %></td>
            <td><%= sd.getNoofunits() %></td>
            <td><%= sd.getNoofunitsold() %></td>
            <td><%= sd.getComplete() %></td>
        </tr>
        <%
            }
        %>
    </table>
    <% } else { %>
        <p align="center">❌ No records found.</p>
    <% } %>
</body>
</html>

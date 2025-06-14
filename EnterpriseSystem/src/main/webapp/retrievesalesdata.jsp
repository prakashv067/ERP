<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sales Data</title>

    <!-- Bootstrap CSS -->

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

    <div class="container mt-5">

        <h2 class="text-center">View Sales Data</h2>

        <table class="table table-striped table-bordered mt-4">

            <thead class="thead-dark">

                <tr>

                    <th>Sales ID</th>

                    <th>Salesperson Name</th>

                    <th>Target</th>

                    <th>No. of Units</th>

                    <th>No. of Units Sold</th>

                    <th>Complete</th>

                </tr>

            </thead>

            <tbody>

                <%

                    // Database connection

                    Connection connection = null;

                    Statement statement = null;

                    ResultSet resultSet = null;



                    try {

                        Class.forName("com.mysql.jdbc.Driver");

                        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/com8", "root", "");

                        statement = connection.createStatement();

                        String query = "SELECT * FROM sales";

                        resultSet = statement.executeQuery(query);



                        while (resultSet.next()) {

                            int salesId = resultSet.getInt("salesid");

                            String salespersonName = resultSet.getString("salespersonname");

                            int target = resultSet.getInt("target");

                            int noOfUnits = resultSet.getInt("noofunits");

                            int noOfUnitsSold = resultSet.getInt("noofunitsold");

                            boolean complete = resultSet.getBoolean("complete");

                %>

                            <tr>

                                <td><%= salesId %></td>

                                <td><%= salespersonName %></td>

                                <td><%= target %></td>

                                <td><%= noOfUnits %></td>

                                <td><%= noOfUnitsSold %></td>

                                <td><%= complete ? "Yes" : "No" %></td>

                            </tr>

                <%

                        }

                    } catch (Exception e) {

                        e.printStackTrace();

                    } finally {

                        try {

                            if (resultSet != null) resultSet.close();

                            if (statement != null) statement.close();

                            if (connection != null) connection.close();

                        } catch (Exception e) {

                            e.printStackTrace();

                        }

                    }

                %>

            </tbody>

        </table>

        <div class="text-center mt-4">

            <a href="addsalesdata.jsp" class="btn btn-primary">Add New Sales Data</a>

            <a href="updatesalesdata.jsp" class="btn btn-warning">Update Sales Data</a>

            <a href="deletesalesdata.jsp" class="btn btn-danger">Delete Sales Data</a>
            <a href="home.jsp" class="btn btn-primary">Back</a>
            

        </div>

    </div>



    <!-- Bootstrap JS and dependencies -->

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
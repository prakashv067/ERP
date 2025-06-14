<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Sales</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #00aaff, #ffffff);
            padding-top: 70px; /* Adjust for fixed navbar height */
        }
        .container {
            margin-top: 30px; /* Space from the top */
        }
        .form-group label {
            font-weight: bold;
        }
        .result {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="home.jsp">
            ERP
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item <% if(request.getRequestURI().endsWith("home.jsp")) { %>active<% } %>">
                    <a class="nav-link" href="home.jsp">Home</a>
                </li>
                <li class="nav-item dropdown <% if(request.getRequestURI().endsWith("addsalesdata.jsp") || request.getRequestURI().endsWith("updatesalesdata.jsp") || request.getRequestURI().endsWith("retrievesalesdata.jsp") || request.getRequestURI().endsWith("deletesalesdata.jsp")) { %>active<% } %>">
                    <a class="nav-link dropdown-toggle <% if(request.getRequestURI().endsWith("addsalesdata.jsp") || request.getRequestURI().endsWith("updatesalesdata.jsp") || request.getRequestURI().endsWith("retrievesalesdata.jsp") || request.getRequestURI().endsWith("deletesalesdata.jsp")) { %>active<% } %>" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Sales Data
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item <% if(request.getRequestURI().endsWith("addsalesdata.jsp")) { %>active<% } %>" href="addsalesdata.jsp">Add Sales Data</a>
                        <a class="dropdown-item <% if(request.getRequestURI().endsWith("updatesalesdata.jsp")) { %>active<% } %>" href="updatesalesdata.jsp">Update Sales Data</a>
                        <a class="dropdown-item <% if(request.getRequestURI().endsWith("retrievesalesdata.jsp")) { %>active<% } %>" href="retrievesalesdata.jsp">Retrieve Sales Data</a>
                        <a class="dropdown-item <% if(request.getRequestURI().endsWith("deletesalesdata.jsp")) { %>active<% } %>" href="deletesalesdata.jsp">Delete Sales Data</a>
                    </div>
                </li>
                <li class="nav-item <% if(request.getRequestURI().endsWith("tracksales.jsp")) { %>active<% } %>">
                    <a class="nav-link" href="tracksales.jsp">Track</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <% if(request.getRequestURI().endsWith("logout.jsp")) { %>active<% } %>">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 class="text-center">Track Sales Performance</h2>
        <form id="trackSalesForm">
            <div class="form-group">
                <label for="salespersonName">Salesperson Name</label>
                <input type="text" class="form-control" id="salespersonName" placeholder="Enter salesperson's name">
            </div>
            <button type="button" class="btn btn-primary" onclick="trackPerformance()">Track</button>
        </form>

        <div class="result" id="performanceResult" style="display: none;">
            <h3 class="text-center">Performance Metrics</h3>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Target</th>
                        <th>Number of Units</th>
                        <th>Number of Units Sold</th>
                        <th>Completion Status</th>
                    </tr>
                </thead>
                <tbody id="metricsTableBody">
                    <!-- Data will be populated here by JavaScript -->
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Function to simulate tracking performance
        function trackPerformance() {
            // Fetch the salesperson name
            var salespersonName = document.getElementById("salespersonName").value;
            
            // Simulate performance data (this should be replaced with actual data fetching logic)
            var performanceData = {
                target: "1000 units",
                noOfUnits: "1200 units",
                noOfUnitsSold: "950 units",
                completionStatus: "95%"
            };

            // Populate the table with the simulated data
            var tableBody = document.getElementById("metricsTableBody");
            tableBody.innerHTML = `
                <tr>
                    <td>${performanceData.target}</td>
                    <td>${performanceData.noOfUnits}</td>
                    <td>${performanceData.noOfUnitsSold}</td>
                    <td>${performanceData.completionStatus}</td>
                </tr>
            `;
            
            // Show the results
            document.getElementById("performanceResult").style.display = "block";
        }
    </script>
</body>
</html>

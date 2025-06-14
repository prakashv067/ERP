<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Sales Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Internal CSS for gradient background */
        body {
            background: linear-gradient(to right, #00aaff, #ffffff); /* Blue to white gradient */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .container {
            max-width: 500px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Delete Sales Data</h2>
        <form action="deleteSalesData" method="post">
            <div class="form-group">
                <label for="salespersonname">Salesperson Name:</label>
                <input type="text" class="form-control" id="salespersonname" name="salespersonname" required>
            </div>
            <button type="submit" class="btn btn-danger btn-block">Delete</button>
            <div align="center" class="mt-2"><a href="home.jsp" class="btn btn-primary">Back</a></div>
        </form>
    </div>
    
    <!-- Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

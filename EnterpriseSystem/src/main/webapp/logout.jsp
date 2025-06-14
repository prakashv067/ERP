<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #00aaff, #ffffff);
            padding-top: 50px;
            text-align: center;
        }
        .container {
            max-width: 500px;
            margin: auto;
        }
        .alert {
            margin-bottom: 20px;
        }
        .btn {
            margin: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="alert alert-info" role="alert">
            <h4 class="alert-heading">You have been logged out!</h4>
            <p>You have successfully logged out of your account.</p>
            <hr>
            <p class="mb-0">Click one of the buttons below to return to the homepage or log in again.</p>
        </div>
        <a class="btn btn-primary" href="home.jsp">Return to Homepage</a>
        <a class="btn btn-secondary" href="login.jsp">Login Again</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

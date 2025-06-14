<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Sales Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #00aaff, #ffffff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: #fff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }
        .container h2 {
            margin-bottom: 1.5rem;
        }
        .container .form-group {
            margin-bottom: 1rem;
        }
        .container .form-group input,
        .container .form-group select {
            border-radius: 4px;
        }
        .container .btn {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Sales Data</h2>
        <form action="addsalesdata" method="post">
            <div class="form-group">
                <label for="salespersonname">Salesperson Name</label>
                <input type="text" id="salespersonname" name="salespersonname" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="target">Target</label>
                <input type="number" id="target" name="target" class="form-control" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="noofunits">Number of Units</label>
                <input type="number" id="noofunits" name="noofunits" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="noofunitsold">Number of Units Sold</label>
                <input type="number" id="noofunitsold" name="noofunitsold" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="complete">Complete</label>
                <select id="complete" name="complete" class="form-control" required>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Save</button>
            <div align="center" class="mt-2"><a href="home.jsp" class="btn btn-primary">Back</a></div>
        </form>
    </div>
    

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

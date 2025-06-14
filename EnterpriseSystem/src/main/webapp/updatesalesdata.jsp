<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Sales Data</title>
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
            max-width: 600px;
        }
        .container h2 {
            margin-bottom: 1.5rem;
        }
        .container .form-group {
            margin-bottom: 1rem;
        }
        .container .form-group input {
            border-radius: 4px;
        }
        .container .btn {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Sales Data</h2>
        <form action="updateSalesData" method="post">
            <div class="form-group">
                <label for="salespersonname">Salesperson Name</label>
                <input type="text" id="salespersonname" name="salespersonname" class="form-control" value="${salesRecord.salespersonName}" required>
            </div>
            <div class="form-group">
                <label for="target">Target</label>
                <input type="number" id="target" name="target" class="form-control" value="${salesRecord.target}" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="numberOfUnits">Number of Units</label>
                <input type="number" id="numberOfUnits" name="numberOfUnits" class="form-control" value="${salesRecord.numberOfUnits}" required>
            </div>
            <div class="form-group">
                <label for="numberOfUnitsSold">Number of Units Sold</label>
                <input type="number" id="numberOfUnitsSold" name="numberOfUnitsSold" class="form-control" value="${salesRecord.numberOfUnitsSold}" required>
            </div>
            <div class="form-group">
                <label for="isComplete">Complete</label>
                <select id="isComplete" name="isComplete" class="form-control" required>
                    <option value="true" <c:if test="${salesRecord.isComplete}">selected</c:if>>Yes</option>
                    <option value="false" <c:if test="${!salesRecord.isComplete}">selected</c:if>>No</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
            <div align="center" class="mt-2"><a href="home.jsp" class="btn btn-primary">Back</a></div>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

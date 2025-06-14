<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            /* Gradient background */
            background: linear-gradient(to right, #007bff, #ffffff);
            color: #333;
        }
        .container {
            margin-top: 100px;
            text-align: center;
        }
        .alert-success {
            font-size: 1.2em;
            margin-bottom: 20px;
        }
        #timer {
            font-size: 2em;
            font-weight: bold;
            color: #007bff;
            animation: pulse 1s infinite;
        }
        @keyframes pulse {
            0% {
                opacity: 1;
            }
            50% {
                opacity: 0.5;
            }
            100% {
                opacity: 1;
            }
        }
    </style>
    <script>
        function startCountdown(duration) {
            let timer = duration;
            const timerElement = document.getElementById('timer');
            
            function updateTimer() {
                const seconds = Math.floor(timer % 60);
                timerElement.textContent = seconds;

                if (timer <= 0) {
                    clearInterval(intervalId);
                    window.location.href = 'home.jsp';
                }
                timer--;
            }

            // Update timer immediately
            updateTimer();
            
            // Update the timer every second
            const intervalId = setInterval(updateTimer, 1000);
        }

        window.onload = function() {
            startCountdown(5); // Start the countdown from 5 seconds
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Success!</h4>
            <p>Your action was successful. You will be redirected to the home page in:</p>
            <div id="timer">5</div>
            <hr>
            <p class="mb-0">If you are not redirected automatically, <a href="home.jsp">click here</a>.</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

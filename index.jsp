<%@page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fruit Shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/CSS/main.css">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Fruit Shop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <button class="btn btn-primary" onclick="redirectToLogin()">Login</button>
                </li>
                <li class="nav-item">
                    <button class="btn btn-primary" onclick="redirectToSignup()">Signup</button>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Banner Section -->
    <section class="jumbotron text-center">
        <img src="images/fruitshop.jpg" class="card-img-top" width="1000px" height="500px" alt="Apple">
        <h1>Welcome to Fruit Shop</h1>
        <p>Fresh and delicious fruits delivered to your doorstep!</p>
    </section>

    <!-- Product Listings Section -->
    <div class="container">
        <div class="row">
            <!-- Product 1 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="images/RedDeliciousApples.jpg" class="card-img-top" height="356pt" alt="Apple">
                    <div class="card-body">
                        <h5 class="card-title">Red Delicious Apples</h5>
                        <p class="card-text">Sweet and crispy apples.</p>
                        <p class="card-text">Price: $0.75/kg</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="images/NavelOranges.jpg" class="card-img-top" height="356pt" alt="Orange">
                    <div class="card-body">
                        <h5 class="card-title">Navel Oranges</h5>
                        <p class="card-text">Juicy and seedless oranges</p>
                        <p class="card-text">Price: $35/kg</p>
                        <a href="#" class="btn btn-primary">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="images/Pineapples.jpg" class="card-img-top" height="356pt" alt="PineApple">
                    <div class="card-body">
                        <h5 class="card-title">Pineapples</h5>
                        <p class="card-text">Exotic and tropical pineapples</p>
                        <p class="card-text">Price: $42/kg</p>
                        <a href="#" class="btn btn-primary" align="center">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    

    <!-- Footer Section -->
    <footer class="bg-light text-center">
        <p>&copy; 2023 Fruit Shop</p>
    </footer>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        function redirectToLogin() {
            window.location.href = "login.jsp";
        }

        function redirectToSignup() {
            window.location.href = "signup.jsp";
        }
    </script>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


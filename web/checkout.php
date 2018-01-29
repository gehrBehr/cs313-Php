<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Check Out</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="/css/homepageStyle.css">
</head>

    
<body>

    <main role="main" class="container">

        <div class="starter-template">
            <h1>Checkout</h1>
        </div>
        <div>
            <form action="./confirm.php" method="post">
                Address<br/>
                Name:     <input type="text" name="name"/><br/>
                Street:   <input type="text" name="street"/><br/>
                City:     <input type="text" name="city"/><br/>
                State:    <input type="text" name="state"/><br/>
                Zip Code: <input type="text" name="zip"/><br/>
                <button type="submit" class="btn btn-success" onclick="location.href='confirm.php'">Ok</button>
            </form>
        </div>
        <div class="center">
            <button type="button" class="btn btn-danger">Back to Cart</button>
        </div>
    </main>
 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>
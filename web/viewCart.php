<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>View Cart</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="/css/homepageStyle.css">
</head>

    
<body>

    <main role="main" class="container">

        <div class="starter-template">
            <h1>Shopping Cart</h1>
        </div>
        <div class="table-responsive">
            <table class="table">
                <?php
                    $rows = sizeof($_SESSION["cart"]);
                    $itemTypes = array( 1 => "Red Paint", 2 => "Blue Paint", 3 => "Yellow Paint", 4 => "Green Paint",
                                        5 => "Orange Paint", 6 => "Indigo Paint", 7 => "Grey Paint", 8 => "Black Paint");
                    for ($i = 0; $i <= 7; $i++) {
                        if(isset($_SESSION["cart"][$i]) && $_SESSION["cart"][$i]["quantity"] > 0) {
                            echo "<tr class=\"".($i + 1)."\"><td><img class=\"smItemImage\" src=\"images/wid".($i + 1).".png\" alt=\"item number".($i + 1)."\"></td>";
                            echo "<td>".$itemTypes[$i + 1]."</td><td>Quantity: <input type=\"number\" name=\"item".($i + 1)."\" value=\"".$_SESSION["cart"][$i]["quantity"]."\" id=\"item".($i + 1)."\"></td>";
                            echo "<td><button type=\"button\" class=\"btn btn-primary\" onclick=\"updateCart(".($i + 1).", document.getElementById('item".($i + 1)."').value";
                            echo ")\">Update</button></td>";
                            echo "<td><button type=\"button\" class=\"btn btn-danger\" onclick=\"removeItem(".($i + 1);
                            echo ")\">Remove</button></td></tr>";
                        }
                        if($rows == 0) {
                            echo "<div class=\"starter-template\"><h1>No Items To Display</h1></div>";
                        }
                    }
                ?>
            </table>
            <div class="center">
                <button type="button" class="btn btn-success" onclick="location.href='./checkout.php'">Check Out</button>
            </div>
        </div>
        <nav class="navbar fixed-bottom">
        
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                
            </ul>
               <button class="btn btn-outline-success my-2 my-sm-0" id="cartButton" type="button" onclick="location.href='viewCart.php'">
               <span>View Cart</span><div id="cartNum">0</div></button>
        </div>
    </nav>

    </main>
    <!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script type="text/javascript" src="/js/shopping.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Pharmacy</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
	
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">

<style>

h3{
  
}
  

@media screen and (min-width: 980px) {
  .contact-info {
    padding-left: 110px;
  }
}


  </style>
    
  </head>
  <body>
  
  <div class="site-wrap">
    <header class="site-navbar" style="background-color:ghostwhite">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo" style="border:none">
                <a href="index.php" class="js-logo-clone">HomeMeds</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-2 order-md-1">
              <form action="shop.php" class="site-block-top-search">
                <input type="text" name="query" class="form-control border-0" placeholder="Search" value="<?php echo $search_query;?>">
              </form>
            </div>

            <div class="text-right col-6 col-md-4 order-3 order-md-3">
              <div class="site-top-icons">
                <ul>
                  <li><a href="signup.php"><span class="icon glyphicon glyphicon-user"></span>SignIn/SignUp</a></li>
                  <li><a href="cart.php" class="site-cart"><span class="icon glyphicon glyphicon-shopping-cart">Cart</span>
                  <li><a href="logout.php"><span class="glyphicon glyphicon-log-out">logout</span></a></li>
                    </a>
                  </li> 
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu">
            <li><a href="index.php">Home</a></li>
            <li><a href="about.php">About us</a></li>
            <li><a href="shop.php">Shop</a></li>
            <li class="active"><a href="contactus.php">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="section" style="    margin: 150px;
    background-color: beige;">
      <h1><marquee> Contact us</marquee></h1>
      <p>If you have any query about our product or services. PLease feel free to contact us at 9876543210.</p>
      <p>Email-id:- HomeMeds@gmail.com</p>
    </div>
    
    <br>
    <br>
    <br><br><br><br><br><br><br>
    <footer class="footer" style="background-color:ghostwhite">	
          <div class="col-md-12 text-center">
            <p>
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> HomeMeds.com 
            </p>
          </div>
    </footer>
  </div>
    
	
	<script src="js/bootstrap.min.js"></script> 
	<script src="js/index.js"></script>
  
  </body>
</html>
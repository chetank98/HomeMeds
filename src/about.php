<?Php
session_start();
$search_query = '';
if(isset($_GET["query"])){
  $search_query = $_GET["query"];
}

$page_no = 1;
if(isset($_GET["pageno"])){
  $page_no = $_GET["pageno"];
}
?>
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

	
    
  </head>
  <body>
  
  <div class="site-wrap">
    <header class="site-navbar" style="background-color:ghostwhite">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1">
              <form action="shop.php" class="site-block-top-search">
                <input type="text" name="query" class="form-control border-0" placeholder="Search" value="<?php echo $search_query;?>">
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo" style="border:none">
                <a href="index.php" class="js-logo-clone">HomeMeds</a>
              </div>
            </div>

            <div class="text-right col-6 col-md-4 order-3 order-md-3">
              <div class="site-top-icons">
                <ul>
                  <li><a href="signup.php"><span class="icon glyphicon glyphicon-user">SignUp/SignIn</span></a></li>
                  <li><a href="cart.php" class="site-cart"><span class="icon glyphicon glyphicon-shopping-cart">Cart</span>
                  <li><a href="logout.php"><span class="glyphicon glyphicon-log-out">LogOut</span></a></li>
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
            <li class="active"><a href="about.php">About us</a></li>
            <li><a href="shop.php">Shop</a></li>
            <li><a href="Contactus.php">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="index.php">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">About</strong></div>
        </div>
      </div>
    </div>  

    <div class="site-section block-8">
      <div class="container">
        <div class="row justify-content-center  mb-5">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Learn more about our pharmacists</h2>
          </div>
        </div>
        <div class="row align-items-center">
          <div class="col-lg-12 col-lg-5 pl-md-5">
		  <p>HomeMeds pharmacists do much more than dispense prescriptions. Your pharmacist can help you and your family stay healthy by:</p>
            <button class="accordion">How Home meds is different from other online pharmacies?</button>
			<div class="panel">
			  <p>At Home meds, we deliver the medicines in the utmost quality and package integrity in the market. Summing up with the offers and discounts on all products makes Home meds a sensible option. Also, we handle only the products which are licensed by the government. </p>
			</div>
			
			<button class="accordion">What locations in India does Home meds deliver? </button>
			<div class="panel">
			  <p>We deliver all across India, Ranging to almost 26,000+ pin codes.</p>
			</div>
			
			<button class="accordion">What is covid 19</button>
			<div class="panel">
			  <p>COVID-19 is the disease caused by a new coronavirus called SARS-CoV-2.  WHO first learned of this new virus on 31 December 2019, following a report of a cluster of cases of ‘viral pneumonia’ in Wuhan, People’s Republic of China.</p>
			</div>
			
			<button class="accordion">What are symptoms of covid 19</button>
			<div class="panel">
			  <p>The most common symptoms of COVID-19 are <br>
•	Fever <br>
•	Dry cough <br>
•	Fatigue <br>
If you want to test yourself buy a testing kit from our site.
</p>
			</div>

      <button class="accordion">Who is most at risk of server illness from covid 19</button>
			<div class="panel">
			  <p>People aged 60 years and over, and those with underlying medical problems like high blood pressure, heart and lung problems, diabetes, obesity or cancer, are at higher risk of developing serious illness. 
However, anyone can get sick with COVID-19 and become seriously ill or die at any age.
</p>
			</div>

      <button class="accordion">How can we protect ourselves if we don’t know who is infected?</button>
			<div class="panel">
			  <p>Stay safe by taking some simple precautions, such as physical distancing, wearing a mask, especially when distancing cannot be maintained, keeping rooms well ventilated, avoiding crowds and close contact, regularly cleaning your hands, and coughing into a bent elbow or tissue. Check local advice where you live and work. Do it all!</p>
			</div>

      <button class="accordion">Are there any discounts and offers in Home med?</button>
			<div class="panel">
			  <p>All of our products have a discounted price. Moreover, there will be always different offers and discounts over a period of time. Kindly read the offer description for the eligibility to utilize it.</p>
			</div>

      <button class="accordion">Is there a limit on the number of products in one order?</button>
			<div class="panel">
			  <p>No, there is no limit for a number of products that you order.</p>
			</div>

      <button class="accordion">What are the payment options available?</button>
			<div class="panel">
			  <p>Credit or debit card / Online Banking / UPI / Online Wallets / Cash On Delivery (COD).</p>
			</div>

      <button class="accordion">Are there any hidden charges?</button>
			<div class="panel">
			  <p>No, there are no hidden charges for any activity you are engaged with Home med. We always follow an honest and transparent business policy.</p>
			</div>
			
			
		  <h4>So be sure to talk to your HomeMeds pharmacist today. The better they know you, the better they can help serve you and your needs.</h4>
          </div>
        </div>
      </div>
    </div>
  
    
    <footer class="site-footer border-top" style="background-color:ghostwhite">       
          <div class="col-md-12 text-center">
            <p>
            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
            </p>
          </div>
    </footer>
  </div>
    
	<script src="js/bootstrap.min.js"></script> 
	<script src="js/index.js"></script>
	
  </body>
</html>
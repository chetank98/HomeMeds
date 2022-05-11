<!--  <?php
include_once("db_connect.php");

$db = mysqli_connect('localhost', 'root', '', 'pharmacy_db');

if (isset($_POST['submit'])) {
    // receive all input values from the form
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password = mysqli_real_escape_string($db, $_POST['password']);
    $name = mysqli_real_escape_string($db, $_POST['name']);
    $phone = mysqli_real_escape_string($db, $_POST['phone']);
    $delivery = mysqli_real_escape_string($db, $_POST['delivery']);
    $pincode = mysqli_real_escape_string($db, $_POST['pincode']);
  
    // form validation: ensure that the form is correctly filled ...
    // by adding (array_push()) corresponding error unto $errors array
    if (empty($password)) { array_push($errors, "password is required"); }
    if (empty($email)) { array_push($errors, "Email is required"); }
    if (empty($name)) { array_push($errors, "name is required"); }
    if (empty($phone)) { array_push($errors, "phone is required"); }
    if (empty($delivery)) { array_push($errors, "delivery is required"); }
    if (empty($pincode)) { array_push($errors, "pincode is required"); }
  
    // first check the database to make sure 
    // a user does not already exist with the same username and/or email
    $user_check_query = "SELECT * FROM seller WHERE  email='$email' LIMIT 1";
    $result = mysqli_query($db, $user_check_query);
    $user = mysqli_fetch_assoc($result);
    
    
    
  
    // Finally, register user if there are no errors in the form
    
        $password = md5($password);//encrypt the password before saving in the database
  
        $query = "INSERT INTO seller ( email, password,full_name,phone_number,delivery_area,pincode) 
                  VALUES( '$email', '$password','$name','$phone','$delivery,'$pincode')";
        // mysqli_query($db, $query);
        // $_SESSION['username'] = $username;
        // $_SESSION['success'] = "You are now logged in";
        // header('location: index.php');
    
}
?>  --->

  </head>




 <?php
    require('db_connect.php');
    $mysqli = new mysqli("localhost", "root", "", "pharmacy_db");


    if (isset($_POST['submit']))
    {

      $Name = addslashes( $_POST['name'] );  
      $Email = $_POST['email'];
      $Password = $_POST['password'];
      $Phone = $_POST['phone'];
      $Delivery = $_POST['delivery'];
      $Pincode = $_POST['pincode'];

      $newpass = md5($myPassword); 


      $sql="SELECT * FROM seller WHERE email='$Email" or die(mysqli_error());
      $result= $mysqli->query($sql) or die(mysqli_error());

      $count=mysqli_num_rows($result);
    

      if($count>0){
        die( "This Email Id is already registered." );
      }
    else
    {
    $sql = "INSERT INTO seller(fullname, email, password, phone_number, delivery_area, pincode) VALUES ('$Name','$Email', '$myEmail','$newpass', '$Phone', '$Delivery', '$Pincode')";
    $result= $mysqli->query($sql) or die(mysqli_error());
    die("You have successfully registered as seller. You'll receive verification mail shortly");
  
    }
    }
  
  ?>










  <body>
  
  <div class="site-wrap">
    <header class="site-navbar" style="background:ghostwhite">
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
                  <li><a href="signup.php"><span class="icon glyphicon glyphicon-user">SignIn/SignUp</span></a></li>
                  <li><a href="cart.php" class="site-cart"><span class="icon glyphicon glyphicon-shopping-cart">Cart</span>
                  <li><a href="logout.php"><span class="glyphicon glyphicon-log-out">Logout</span></a></li>
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
            <li><a href="Contactus.php">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </header>
	
	
	
		  <div class="col-md-5 ml-auto">
				<div class="p-4 border mb-3">
					<div class="text-center">
						<h2 class="h3 mb-3 text-black">Seller Sign Up!</h2>
					</div>
				  <form id = "signup" class="form-container" method="post">
					<p>Password requirement : at least 1 digit, 1 Uppercase, 1 lower case, 1 special character. It should have 8 characters.</p>
					<div>
						<label for="name" class="text-black">Name <span class="text-danger">*</span></label>
						<input type="text" placeholder="Enter Name" id = "name" name="name">
						<span id="username_span"></span><br />
					</div>
					<div>
						<label for="email" class="text-black">Email <span class="text-danger">*</span></label>
						<input type="text" placeholder="Enter Email" id = "email" name="email">
						<span id="email_span"></span><br />
					</div>
					<div>
						<label for="password" class="text-black">Password <span class="text-danger">*</span></label>
						<input type="password" placeholder="Enter Password" id="password" name="password">
						<span id="password_span"></span><br />
					</div>
					<div>
						<label for="phone" class="text-black">Phone Number <span class="text-danger">*</span></label>
						<input type="text" placeholder="Enter Phone Number" id="phone" name="phone">
						<span id="phone_span"></span><br />
					</div>
                    <div>
						<label for="delivery" class="text-black">Area of Delivery <span class="text-danger">*</span></label>
						<input type="text" placeholder="Enter delivery area" id="delivery" name="delivery">
						<span id="delivery_span"></span><br />
					</div>
                    <div>
						<label for="pincode" class="text-black">Pincode <span class="text-pincoder">*</span></label>
						<input type="text" placeholder="Enter pincode" id="pincode" name="pincode">
						<span id="pincode_span"></span><br />
					</div>
					<button type="submit" class="btn" name="submit">Submit</button>	
				  </form>
				  </div>
          </div>
			
          </div>
        </div>
      </div>
    </div>			
						
      <footer class="site-footer border-top" style="background:ghostwhite">       
          <div class="col-md-12 text-center">
            <p>
            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
            </p>
          </div>
    </footer>
</html>
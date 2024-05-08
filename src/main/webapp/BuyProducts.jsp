<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Products</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">

    <%@ include file="BootStrapResources.jsp"%>
    
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="BuyProducts.css">
<style>
 
</style>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light"
		style="background: linear-gradient(45deg, #e3d2c4, #fcfcfb, #f9e7fe, #dafcfc); border-bottom: solid 1px;">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand">Shopping Retail System</a>
			                                                  
			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" id="nav"
						href="SignIn.jsp">Sign In/Sign Up</a></li>
					
					<li class="nav-item"><a class="nav-link " id="nav"
						href="BuyProducts.jsp">Buy Products</a></li>
					<li class="nav-item"><a class="nav-link" id="nav"
						href="Activity.jsp">Show Activity</a></li>
					
				</ul>
				
			</div>
		</div>
	</nav>
   
	<p></p>
	<p></p>
	<h4 class="heading">
		<center>Products</center>
	</h4>
	<div class="Instructions">
		<ul>
			<li>Click On The Category You Are Interested In.</li>
			<li>Check In The Item You Wish To Buy.</li>
			<li>After Selecting The Items , Click "Check Out" For Further
				Process.</li>
		</ul>
	</div>
	<p></p>
	<p></p>
	<div class="product_items">
		<form action="Product" method="post">
			<div class="dropdown-container">

				<div class="btn-group">
					<button type="button" class="btn btn-danger dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Fruits</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Apple 50/- <input
								type="checkbox" name="Fruits" value="Apple:50" id="50">
						</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Banana 30/- <input
								type="checkbox" name="Fruits" value="Banana:30" id="30"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Kiwi 80/- <input
								type="checkbox" name="Fruits" value="Kiwi:80" id="80"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Mango 60/- <input
								type="checkbox" name="Fruits" value="Mango:60" id="60"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Pine Apple 70/- <input
								type="checkbox" name="Fruits" value="PineApple:70" id="70"></a></li>
						<hr class="dropdown-divider"></hr>
						<li><a class="dropdown-item">Strawberry 75/- <input
								type="checkbox" name="Fruits" value="Strawberry:75" id="75">
						</a></li>

					</ul>
				</div>


				<div class="btn-group">
					<button type="button" class="btn btn-success dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						Vegetables</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1/2 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Carrot 50/- <input
								type="checkbox" name="Vegetables" value="Carrot:50" id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Banana 30/- <input
								type="checkbox" name="Vegetables" value="Banana:30" id="30"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Tomato 80/- <input
								type="checkbox" name="Vegetables" value="Tomato:80" id="80"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">BeetRoot 60/- <input
								type="checkbox" name="Vegetables" value="BeetRoot:60" id="60"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Onion 70/- <input
								type="checkbox" name="Vegetables" value="Onion:70" id="70"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Potato 70/- <input
								type="checkbox" name="Vegetables" value="Potato:70" id="70"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Garlic 75/- <input
								type="checkbox" name="Vegetables" value="Garlic:75" id="75"></a></li>
					</ul>
				</div>



				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Dairy</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Item Per Each</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Milk 21/- <input
								type="checkbox" name="Dairy" value="Milk:21" id="21"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Curd 35/- <input
								type="checkbox" name="Dairy" value="Curd:35" id="35"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Lassi 20/- <input
								type="checkbox" name="Dairy" value="Lassi:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Butter Milk 20/- <input
								type="checkbox" name="Dairy" value="Butter Milk:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Ghee 170/- <input
								type="checkbox" name="Dairy" value="Ghee:170" id="170"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Paneer 75/- <input
								type="checkbox" name="Dairy" value="Paneer:75" id="75"></a></li>
					</ul>
				</div>


				<div class="btn-group">
					<button type="button" class="btn btn-warning dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Spices</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">50g Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Salt 20/- <input
								type="checkbox" name="Spices" value="Salt:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Red Chill 20/- <input
								type="checkbox" name="Spices" value="Red Chill:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Cinnamon 20/- <input
								type="checkbox" name="Spices" value="Cinnamon:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Jeera 20/- <input
								type="checkbox" name="Spices" value="Jeera:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Black Pepper 20/- <input
								type="checkbox" name="Spices" value="Black Pepper:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Saffron 200/- <input
								type="checkbox" name="Spices" value="Saffron:200" id="200"></a></li>
					</ul>
				</div>



				<div class="btn-group">
					<button type="button" class="btn btn-info dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						Cosmetics</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Item Per Each</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Lip-Stick 100/- <input
								type="checkbox" name="Cosmetics" value="Lip-Stick:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Eye-Liner 145/- <input
								type="checkbox" name="Cosmetics" value="Eye-Liner:145" id="145"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Nail Polish 140/- <input
								type="checkbox" name="Cosmetics" value="Nail Polish:140"
								id="140"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Mascara 120/- <input
								type="checkbox" name="Cosmetics" value="Mascara:120" id="120"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Liquid Foundation 450/- <input
								type="checkbox" name="Cosmetics" value="Liquid Foundation:450"
								id="450"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Moisturizer 200/- <input
								type="checkbox" name="Cosmetics" value="Moisturizer:200"
								id="200"></a></li>
					</ul>
				</div>



				<div class="btn-group">
					<button type="button" class="btn btn-dark dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Dry
						Fruits</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Cashew 500/- <input
								type="checkbox" name="DryFruits" value="Cashew:500" id="500"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Badam 300/- <input
								type="checkbox" name="DryFruits" value="Badam:300" id="300"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Pistachio 170/- <input
								type="checkbox" name="DryFruits" value="Pistachio:170" id="170"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Hazel Nuts 250/- <input
								type="checkbox" name="DryFruits" value="Hazel Nuts:250" id="250"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Dates 100/- <input
								type="checkbox" name="DryFruits" value="Dates:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Wal Nuts 150/- <input
								type="checkbox" name="DryFruits" value="Wal Nuts:150" id="150"></a></li>
					</ul>
				</div>






				<div class="btn-group">
					<button type="button" class="btn btn-custom dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Ice
						Creams</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Item Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Chocolate 250/- <input
								type="checkbox" name="IceCreams" value="Chocolate:250" id="250"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Strawberry 300/- <input
								type="checkbox" name="IceCreams" value="Strawberry:300" id="300"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Butterscotch 100/- <input
								type="checkbox" name="IceCreams" value="Butterscotch:100"
								id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Vanilla 70/- <input
								type="checkbox" name="IceCreams" value="Vanilla:70" id="70"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Chocolate Brownie 300/- <input
								type="checkbox" name="IceCreams" value="Chocolate Brownie:300"
								id="300"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Mango 150/- <input
								type="checkbox" name="IceCreams" value="Mango:150" id="150"></a></li>
					</ul>
				</div>





				<div class="btn-group">
					<button type="button" class="btn btn-custom1 dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						Chocolates</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Item Per Each</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Dark 100/- <input
								type="checkbox" name="Chocolates" value="Dark:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">White 300/- <input
								type="checkbox" name="Chocolates" value="White:300" id="300"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Silk Collection 890/- <input
								type="checkbox" name="Chocolates" value="Silk Collection:890"
								id="890"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Kit Kat Dark Collection
								650/- <input type="checkbox" name="Chocolates"
								value="Kit Kat Dark Collection:650" id="650">
						</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Ferrero Rocher 700/- <input
								type="checkbox" name="Chocolates" value="Ferrero Rocher:700"
								id="700"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Kisses 150/- <input
								type="checkbox" name="Chocolates" value="Kisses:150" id="150"></a></li>
					</ul>
				</div>





				<div class="btn-group">
					<button type="button" class="btn btn-custom2 dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Meat</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Chicken 500/- <input
								type="checkbox" name="Meat" value="Chicken:500" id="500"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Goat 300/- <input
								type="checkbox" name="Meat" value="Goat:300" id="300"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Fish 170/- <input
								type="checkbox" name="Meat" value="Fish:170" id="170"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Pork 250/- <input
								type="checkbox" name="Meat" value="Pork:250" id="250"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Prawns 100/- <input
								type="checkbox" name="Meat" value="Prawns:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Turkey 150/- <input
								type="checkbox" name="Meat" value="Turkey:150" id="150"></a></li>
					</ul>

				</div>





				<div class="btn-group">
					<button type="button" class="btn btn-custom3 dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">Green
						Leafy Vegetables</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Spinach 50/- <input
								type="checkbox" name="GreenLeafyVegetables" value="Spinach:50"
								id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Mustard Greens 30/- <input
								type="checkbox" name="GreenLeafyVegetables"
								value="Mustard Greens:30" id="30"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Drumstick Leaves 50/- <input
								type="checkbox" name="GreenLeafyVegetables"
								value="Drumstick Leaves:50" id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Coriander Leaves 50/- <input
								type="checkbox" name="GreenLeafyVegetables"
								value="Coriander Leaves:50" id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Radish Greens 90/- <input
								type="checkbox" name="GreenLeafyVegetables"
								value="Radish Greens:90" id="90"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Curry Leaves 50/- <input
								type="checkbox" name="GreenLeafyVegetables"
								value="Curry Leaves:50" id="50"></a></li>
					</ul>
					<div id="GreenLeafyVegetables-Total"></div>
				</div>



				<div class="btn-group">
					<button type="button" class="btn btn-custom4 dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						Stationary</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Item Per Each</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Pencils 50/- <input
								type="checkbox" name="Stationary" value="Pencils:50" id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Pens 30/- <input
								type="checkbox" name="Stationary" value="Pens:30" id="30"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Highlighters 170/- <input
								type="checkbox" name="Stationary" value="Highlighters:170"
								id="170"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Books 50/- <input
								type="checkbox" name="Stationary" value="Books:50" id="50"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Erasers 20/- <input
								type="checkbox" name="Stationary" value="Erasers:20" id="20"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Rulers 30/- <input
								type="checkbox" name="Stationary" value="Rulers:30" id="30"></a></li>
					</ul>
					<div id="Stationary-Total"></div>
				</div>





				<div class="btn-group">
					<button type="button" class="btn btn-custom5 dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false">
						Groceries</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item">1 Kg Per Each Item</a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Rice Flour 100/- <input
								type="checkbox" name="Groceries" value="Rice Flour:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Coffee Powder 100/- <input
								type="checkbox" name="Groceries" value="Coffee Powder:100"
								id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Tea Powder 100/- <input
								type="checkbox" name="Groceries" value="Tea Powder:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Maida 100/- <input
								type="checkbox" name="Groceries" value="Maida:100" id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Wheat Flour 100/- <input
								type="checkbox" name="Groceries" value="Wheat Flour:100"
								id="100"></a></li>
						<hr class="dropdown-divider">
						<li><a class="dropdown-item">Sugar 150/- <input
								type="checkbox" name="Groceries" value="Sugar:150" id="150"></a></li>
					</ul>
					<div id="Groceries-Total"></div>

				</div>

				<div class="Buy">
					<span class="note">Note:-</span> This Process Cannot Be Undone!!.
					<div class="cart billing-div">Click Here For the Billing
						Process :-</div>
					<div class="container-fluid">
						<div class="row justify-content-end">
							<div class="col-12 col-md-8 col-lg-6 d-flex justify-content-end">
								<button class="btn btn-primary custom-button" type="submit"
									id="Cart-Button">Check Out</button>
							</div>
						</div>
					</div>
				</div>

				<p></p>
				<p></p>
		</form>
		<form action="Exit.jsp" method="post">
			<div class="Buy">
				<span class="note">Umm,</span> Not Sure What To Purchase
				<div class="cart billing-div">Do You Wish To :-</div>
				<div class="container-fluid">
					<div class="row justify-content-end">
						<div class="col-12 col-md-8 col-lg-6 d-flex justify-content-end">
							<button class="btn btn-primary custom-button" type="submit"
								id="Cart-Button">Exit</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

	<p></p>
	<p></p>
	<footer class="text-center text-lg-start bg-body-tertiary text-muted">

		<section
			class="d-flex justify-content-center justify-content-lg-between p-2 border-bottom">
			<div class="me-3 d-none d-lg-block">
				<span>Get connected with us on social networks:</span>
			</div>
		</section>

		<section class="">
			<div class="container text-center text-md-start mt-3">
				<div class="row mt-3">
					<div class="custom-left">
						<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-2 custom-left">
							<h6 class="text-uppercase fw-bold mb-2">
								<i class="fas fa-gem me-2"></i><a href=""
									class="me-2 text-reset">C-Garage</a>
							</h6>
							<p>
								We offer a sneak peek into how students can kickstart their
								projects.<br> Our Community helps beginners with ideas and
								guidance for creating simple projects from the start.
							</p>
						</div>
					</div>
					<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-2">
						<h6 class="text-uppercase fw-bold mb-2">Applications</h6>
						<p>
							<a href="#!" class="text-reset">Billing System</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Student Management System</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Tutorials</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Some Other Projects</a>
						</p>
					</div>

					<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-2">
						<h6 class="text-uppercase fw-bold mb-2">Quick links</h6>
						<p>
							<a href="#!" class="text-reset">About Us</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Settings</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Privacy Policy</a>
						</p>
						<p>
							<a href="#!" class="text-reset">Help</a>
						</p>
					</div>


				</div>
			</div>
		</section>

		<div class="text-center p-2"
			style="background-color: rgba(0, 0, 0, 0.1);">

			© 2024 Copyright: <a class="text-reset fw-bold" href="#">C-Community</a>
		</div>
	</footer>
</body>
</html>

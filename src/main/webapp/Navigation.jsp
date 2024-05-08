<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style>
        body {
    margin: 0;
    padding-left: 0;
}
.navbar {
   
    top: 0;
    width: 100%;
    z-index: 1000;
    padding-right: 0;
    margin-bottom: 0;
}
.container-fluid {
    padding-right: 0;
    padding-left: 0;
}
.navbar-nav {
    padding-left: 20px; 
}
.navbar-brand {
    padding-left: 20px; 
}


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

</body>

</html>

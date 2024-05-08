<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Online Shopping</title>
<link rel="icon"
	href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">

<%@ include file="BootStrapResources.jsp"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>


<style>
body {
    padding: 15px;
    background: linear-gradient(to bottom right, #ffffff, #f5f5f5);
}



footer {
	background-color: rgba(255, 255, 255, 0.8);
	padding: 15px;
}

.container {
	text-align: center;
	margin-top: 20px;
}

ul {
	list-style-type: none;
}

.res,
.Obj,
.Note {
   
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    width: 95%;
    margin-top: 20px;
}
.res1{
   
    background-color: #ffffff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    width: 60%;
    margin-top: 20px;
}

.res ul,
.Obj ul,
.Note ul {
    list-style-type: none;
    padding: 0;
}

.res h4,
.Obj h4,
.Note h5 {
    color: #333333;
    margin-bottom: 15px;
}

.d-grid {
	text-align: center;
	margin-top: 20px;
}
.N-Head
{
   color:red;
}
</style>
</head>
<body>
	<div class="container">
		<h1 >Online Shopping Store</h1>
	</div>
	<p></p>
	<p></p>
	<div class="res">
		<h4 class="res-hed">RESPONSIBILITIES :-</h4>
		<ul>
			<li>This sample project file represents a Shopping Retail
				System, aimed at enhancing user experience through the efficient
				storage and management of preferences.</li>
			<li>As part of this project, our responsibilities encompass the
				development and implementation of a user-friendly web interface.</li>
			<li>This may include details on frontend development, backend
				setup, user interface design, etc.</li>
			<li>The aim is to ensure clarity and organization in delineating
				project responsibilities and tasks.</li>
		</ul>
	</div>
	<div class="Obj">
		<h4 class="obj-hed">Objectives :-</h4>
		<ul>
			<li>Improve user experience through efficient storage and
				management of preferences.</li>
			<li>Implement a secure backend system for data storage and
				management.</li>
			<li>Enhance system performance for optimal user experience.</li>
			<li>Maintain clear organization and communication for effective
				project completion.</li>
			<li>Develop an intuitive and user-friendly web interface.</li>
		</ul>
	</div>


	<div>
		<div class="Note">
			<h5 class="N-Head" style="color:red;">NOTE :-</h5>
			We Use Session Management To Transfer Information i.e Your Data Like
			Email,Password Etc.<br> Your Sensitive Data Is Safeguarded
			During Transmission Through Secured HTTP Session Management
			Techniques.
		</div>
		<div class="res1">
		<form action="<%=request.getContextPath()%>/GetStarted"
			method="post">
			<ul>
				<li><input type="checkbox" value="Note" name="GST" /> I Have
					Read All Terms And Conditions. And Like To View The Sample
					Application.</li>
				<br>
				<div class="d-grid gap-1 col-7 mx-auto">
					<button class="btn btn-primary" type="submit">Get Started</button>
				</div>
		</form>
		</ul>
	</div>
<p></p>
<p></p>
</body>
<footer>
	<%@ include file="Footer.jsp"%>
</footer>
</html>
<!-- https://img.freepik.com/free-photo/arrangement-black-friday-shopping-carts-with-copy-space_23-2148667047.jpg
     https://i.pinimg.com/originals/a5/d5/63/a5d56382d5dab933a840dbbad43a4d22.png
     https://media.licdn.com/dms/image/D4E12AQGqjoC8MyN8DQ/article-cover_image-shrink_720_1280/0/1677062096855?e=2147483647&v=beta&t=27oFTjemlWnayzgZ4mXx6Mcu14p23HIg7jW5q16r8ws
     
 -->
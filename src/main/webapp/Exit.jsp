<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Exit Page</title>
<link rel="icon"
	href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
<%@ include file="BootStrapResources.jsp"%>

<style>
body {
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
	min-height: 100vh;
	background-color: #f0f0f0;
	margin: 0;
	padding: 12px;
}

.success-message {
	text-align: center;
	background-color: #ffffff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 50%;
	margin-top: 100px;
}

.message {
	color: green;
}

footer {
	width: 100%;
	background-color: #f0f0f0;
	text-align: center;
	padding: 10px 0;
}
</style>
<%@ include file="BootStrapResources.jsp"%>
</head>
<body>
	<div class="success-message">
		<h6 style="color: red;">Your Session Is Terminated.</h6>
		<h6 class="message">
			You Can Exit The Application. <br> Thank You For Your Time.
		</h6>
	</div>
	<p></p>
	<p></p>
	<p></p>
        <% HttpSession session1 = request.getSession(); 
           if (session1 != null) 
           { 
               session1.invalidate(); 
           } %>
	<footer>
		<%@ include file="Footer.jsp"%>
	</footer>
</body>
</html>

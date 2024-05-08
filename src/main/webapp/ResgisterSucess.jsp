<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registration Success</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
<%@ include file="BootStrapResources.jsp"%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
    body 
    {
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
        min-height: 100vh;
        background-color: #f0f0f0; 
        margin: 0; 
        padding: 0; 
    }

    .success-message 
    {
        text-align: center;
        background-color: #ffffff; 
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        width: 50%;
        margin-top:100px;
    }

    .message 
    {
        color: green; 
    }

    footer 
    {
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
        <p class="message">You've Been Registered. Please <a href="SignIn.jsp">Login</a> For Access</p>
    </div>
    <p></p>
    <p></p>
    <p></p>
    <footer>
        <%@ include file="Footer.jsp"%>
    </footer>
</body>
</html>

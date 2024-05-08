<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Activity</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
    <%@ include file="BootStrapResources.jsp"%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
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
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); 
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
<%@ include file="Navigation.jsp"%>
  
    <div class="success-message">
        <p class="message">Do You Want Get The History of the User For This Cart.
          <div class="d-grid gap-2 col-9 mx-auto">
         <form action="Cart_History" method="post"> <button class="btn btn-outline-info" type="submit">Get</button> </form> </div> </p>
    </div>
   
    <p></p>
    <div class="success-message">
        <p class="message">Do You Want Get The Entire Shopping History of the User.
          <div class="d-grid gap-2 col-9 mx-auto">
         <form action="User_Complete_History" method="post"> <button class="btn btn-outline-info" type="submit">Get</button> </form> </div> </p>
    </div>
    <div class="success-message">
        <p class="message">Do You Want Exit.
          <div class="d-grid gap-2 col-9 mx-auto">
         <form action="Exit.jsp" method="post"> <button class="btn btn-outline-info" type="submit">Exit</button> </form> </div> </p>
    </div>
    
    <p></p>
    <footer>
        <%@ include file="Footer.jsp"%>
    </footer>
</body>
</html>
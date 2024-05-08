<!DOCTYPE html>
<html>
<head>
<%@ include file="BootStrapResources.jsp"%>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>ErrorPage</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
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

    .error-container 
    {
        text-align: center;
        background-color: #ffffff; 
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        width: 50%;
        margin-top:100px;
    }

    .error-message 
    {
        color: red; 
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
    <div class="error-container">
        <h6 class="error-message">You've Encountered an Error. Please <a href="SignIn.jsp">Try Again</a></h6>
    </div>
    <p></p>
    <p></p>
    <p></p>
    
    
    <footer>
        <%@ include file="Footer.jsp"%>
    </footer>
</body>
</html>

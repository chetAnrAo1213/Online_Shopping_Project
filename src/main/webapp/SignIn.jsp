<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/8754/8754557.png">
<style>
 
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

<body>

<div class="d1">
  <div class="container">
    <br>
    <p class="text-center">Click Here if you Dont Have an <a href="SignUp.jsp">Account</a></p>
    <hr>

    <div class="row">
      <div class="col-sm-4 offset-sm-4"> 
        <div class="card">
          <article class="card-body">
            <a href="SignUp.jsp" class="float-right btn btn-outline-primary">Sign up</a>
            <h4 class="card-title mb-4 mt-1">Sign in</h4>
            
            <form action="SignInServlet" method="Post">
              <div class="form-group">
                <label>Your email</label>
                <input required name="email" class="form-control" placeholder="Email" type="email">
              </div> 
              <div class="form-group">
                
                <label>Your password</label>
                <input required class="form-control" placeholder="******" type="password" name="password">
              </div>  
              <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block"> Login  </button>
              </div> 
            </form>
          </article>
          </div>
        </div>
      </div>
    </div>
 </div>
 <p></p>
 <p></p>
</body>
<footer>
     <%@ include file="Footer.jsp"%>
</footer>
</html>

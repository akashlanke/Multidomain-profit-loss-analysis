<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> User Details</title>
    <link rel="stylesheet" href="style.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/stylesheet/styles2.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div class="wrapper">
       <div class="title-text">
          <div class="title login">
              User Details 
          </div>
          <div class="title signup">
             User Details
          </div>
       </div>
     <!--   <div class="form-container">
          <div class="slide-controls">
             <input type="radio" name="slide" id="login" checked>
             <input type="radio" name="slide" id="signup">
             <label for="login" class="slide login">Login</label>
             <label for="signup" class="slide signup">SignUp</label>
             <div class="slider-tab"></div>
          </div> -->
          <div class="form-inner">
             <form action="createUser" >
                <div class="field">
                   <input type="text" name ="username1" placeholder="Email Address" required>
                </div>
                <div class="field">
                   <input type="password" name ="password1"  placeholder="Password" required>
                </div>
              <!--   <div class="pass-link">
                   <a href="#">Reset password?</a>
                </div> -->
                <div class="field btn">
                   <div class="btn-layer"></div>
                   <input type="submit" value="Login">
    </div>
<!--     <script src="style.js"></script> -->
  </body>
</html>
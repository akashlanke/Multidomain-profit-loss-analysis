<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Log In</title>
    <link rel="stylesheet" href="style.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/stylesheet/styles2.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div class="wrapper">
       <div class="title-text">
          <div class="title login">
             Login with Valid Credentials
          </div>
          <div class="title signup">
             Account LogIns
          </div>
       </div>
       <div class="form-container">
       
          <div class="form-inner">
             <form action="login" method="post">
                <div class="field">
                   <input type="text"  name ="username" placeholder="Email Address" required>
                </div>
                <div class="field">
                   <input type="password" name ="password"  placeholder="Password" required>
                </div>
                <div class="field btn">
                   <div class="btn-layer"></div>
                   <input type="submit" value="Login">
                </div>
                <div class="signup-link">
                   Don't Have Account? <a href="create">Create A New</a>
                </div>
             </form>
          </div>
       </div>
    </div>
<!--     <script src="style.js"></script> -->
  </body>
</html>
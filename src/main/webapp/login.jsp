<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link href="${pageContext.request.contextPath}/assets/stylesheet/styles2.css" rel="stylesheet">
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
</body>
</html>
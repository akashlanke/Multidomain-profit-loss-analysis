<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Snapshots Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<style>
     .logo{
          width:90px;
          height:60px;
        }
       
		.login_btn{
			border: none;
			outline:none;
			
		}

          .text-shadow{
             text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
          }
          
		.login_btn:hover{
			background-color: #fff;
			color:#000;
		}
		.nav-link{
		  font-weight:bold;
		  color:#fff;
		  font-size:20px;
		}
		.nav-link:hover{
		    color:#000;
		}
		
        .card{
           margin-top:180px;
           box-shadow:4px 4px 18px 2px #8888;
           border-radius: 14px;
        }
        
        .img-fluid{
           width:200px;
           height:200px;
        }
</style>
</head>
<body>
     <!-- Navbar start -->
         <nav style="background:linear-gradient(90deg, #EB80D5FF 0%, #FBC8D5 100%)" class="navbar navbar-expand-lg navbar-scroll fixed-top shadow-0 p-2 ">
          <div class="container">
            <a class="navbar-brand" href="#!">
              <img src="assets/images/logo.jpeg" class="logo" alt="hh" />
            </a>
            <button class="navbar-toggler text-light" type="button" data-mdb-toggle="collapse"
              data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              &#9776;
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ms-auto">
                <li class="nav-item active me-2">
                  <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item me-2">
                  <a class="nav-link" href="aboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item me-2">
                  <a class="nav-link" href="snapshots.jsp">Snapshot</a>
                </li>
                <li class="nav-item me-2">
                  <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
                <button type="button" class="btn btn-dark ms-3 login_btn">Login</button>
              </ul>
            </div>
          </div>
        </nav>
        
         <!-- Navbar end -->
         
         <!-- snapshot start -->
            <div class="container card">
               <div class="row row-cols-2 row-cols-md-3 g-4">
                   <div class="col">
                       <img alt="" src="assets/images/logo.jpeg" class="img-fluid">
                   </div>
                   <div class="col">
                       <img alt="" src="assets/images/profitLoss.jpg" class="img-fluid">
                   </div>
                   <div class="col">
                       <img alt="" src="assets/images/logo.jpeg" class="img-fluid">
                   </div>
                   <div class="col">
                       <img alt="" src="assets/images/profitLoss.jpg" class="img-fluid">
                   </div>
                   <div class="col">
                       <img alt="" src="assets/images/profitLoss.jpg" class="img-fluid">
                   </div>
                   <div class="col">
                       <img alt="" src="assets/images/logo.jpeg" class="img-fluid">
                   </div>
               </div>
            </div>
         <!--snapshot end  -->
</body>
</html>
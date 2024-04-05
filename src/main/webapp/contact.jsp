<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
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
		
        
        .contact-form{
            padding-top:180px;
            height:100vh;
        }
        .card{
           box-shadow:4px 4px 20px 4px #8888;
           padding:30px ;
           border-radius: 13px;
        }
        .btns{
           display: flex;
           justify-content: center;
           align-items: center;
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
            <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
              data-mdb-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav ms-auto">
                <li class="nav-item  me-2">
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
         
         
         <!-- Contact us start -->
             <section class="contact-form container">
                 <div class="row">
                     <div class="col-md-6 offset-md-3">
                       <form class="card">
                       <h3 class="text-center text-primary">Contact Us</h3>
                       
                       <div class="mb-3 ">
					    <label for="name" class="form-label">Name</label>
					    <input type="text" placeholder="Enter your Name" class="form-control" id="name">
					  </div>
					  
					  <div class="mb-3 ">
					    <label for="email" class="form-label">Email address</label>
					    <input type="email" placeholder="Enter your Email" class="form-control" id="email" aria-describedby="emailHelp">
					    <div id="email"  class="form-text">Email must be required!!!</div>
					  </div>
					  
					  <div class="mb-3">
					    <label for="phone" class="form-label">Mobile Number</label>
					    <input type="number"  placeholder="Enter your Mobile Number" class="form-control" id="phone">
					  </div>
					  
					 <div className="btns">
					    <button type="submit" class="btn btn-primary">Submit</button>
					 </div>
				</form>
                     </div>
                 </div>
             </section>
         <!-- contact us end -->
</body>
</html>
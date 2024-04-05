<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <link rel="stylesheet" href="styles.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style type="text/css">
    /* custom css for ui */
    
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
		
        .visuals{
           display: flex;
           flex-wrap:wrap;
           justify-content: space-between;
           align-items: center;
           width:100%;
           padding:0px 40px;
        }
        .visual_img{
           width:400px;
           height:400px;
        }
        .welcome_wrapper{
            border: 2px solid #000;
            padding:15px 30px;
            border-radius: 10px;
            width:400px;
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
              </ul>
               <a href="login.jsp">
                <button type="button" class="btn btn-dark ms-3 login_btn">Login</button>
               </a>
            </div>
          </div>
        </nav>
        
         <!-- Navbar end -->

         <!-- Hero section start -->
            <section class="d-flex flex-column  justify-content-center  align-items-center gap-5" style="margin-top: 120px; padding: 10px; height: 600px;">
              <!-- first section -->
               <div class="border-bottom border-black">
                  <h3 class="display-4 fw-bold text-shadow">Multidomain Profit-Losss Analysis</h3>
               </div>

               <!-- second section -->
               <div class="visuals">
                    <!-- welcome message -->
                    <div class="welcome_wrapper">
                        <h4 class="fw-bold">Welcome,</h4>
                        <p>Unlock profit insights across Multiple Domains.</p>
                        <p>Optimize your strategies and maximize profitability with data-driven decisions.</p>
                    </div>

                    <!-- visuals for the analysis or profit loss -->
                    <div>
                       <img class="visual_img" src="assets/images/profitLoss.jpg" alt="ff" />
                    </div>
               </div>
            </section>
    
         <!-- hero section end -->
       <!--    <script src="style.js"></script> -->
  </body>
</html>
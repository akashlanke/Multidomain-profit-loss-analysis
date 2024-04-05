<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
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
		
  .para{
     width:86%;
     text-align:start;
  }
  .heading{
  font-weight:bold;
  font-size:27px;
  }
  .about{
     padding-top: 60px;
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
                <button type="button" class="btn btn-dark ms-3 login_btn">Login</button>
              </ul>
            </div>
          </div>
        </nav>
        
         <!-- Navbar end -->
   <div class=" about d-flex flex-column justify-content-center align-items-center m-5 gap-3 mt-5">
      <h4 class="heading">About Us</h4>
      <p class="para">	Welcome to Multidomain profit loss analysis, where we specialize in providing comprehensive analysis and insights across multiple domains to optimize profitability and success for our clients.
      </p>
      <p class="para">
			At to Multidomain profit loss analysis, we understand the complexity of modern business landscapes. With markets evolving rapidly and competition intensifying, it's crucial to have a partner who can navigate these challenges with expertise and precision. That's where we come in.	   </p>
      <p class="para">Our team of seasoned professionals brings together diverse backgrounds and deep industry knowledge to offer unparalleled support in analyzing projects across various domains. Whether it's finance, technology, marketing, or any other sector, we have the tools and insights to drive informed decision-making and maximize returns.</p>
      <p class="para">What sets us apart is our commitment to excellence and innovation. We leverage cutting-edge methodologies and advanced analytics to deliver actionable recommendations tailored to your specific needs. From identifying potential risks to uncovering hidden opportunities, we go above and beyond to ensure your projects are positioned for success.
		</p>
		<p class="para">At the heart of our approach is a dedication to transparency and integrity. We believe in building long-term relationships based on trust and mutual respect. When you partner with us, you can rest assured that your interests are our top priority
		</p>
		<p class="para">Welcome to the future of project analysis. Welcome to to Multidomain profit loss analysis.</p>
   </div>
</body>
</html>
<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">
	<?php include 'includes/navbar.php'; ?>

	  <div class="content-wrapper">
	    <div class="container">
	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-12">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
							<h2 class="text-center">Welcome to CJ's Convenience Store</h2>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="assets/banner/cjstore.png" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="assets/banner/cjstore.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="assets/banner/cjstore-3.jpg" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
		            <h3 class="text-center">Our Products</h3>
								<div class="jumbotron jumbotron-fluid">
							  <div class="container">
							    <h1 class="display-4">Welcome!</h1>
							    <p class="lead">We are excited yo annouce our official website. Your local Convenience Store Store has now gone online.</p>
									<p class="lead">Shop our products with online payment and get the stuff delivered at your home.</p>
									<p class="lead">10% Off on your first online purchase. Terms and Conditions apply.</p>
									<p class="lead">Sign up today!!</p>
							  </div>
								<div class="container">
								 <h1 class="display-4">Our Products</h1>
								 <p class="lead">All the products available are available for purchase online.</p>
								 <p class="lead">Your convenience store just got more conveninet for you</p>
								 <p class="lead">10% Off on your first online purchase. Terms and Conditions apply.</p>
								 <p class="lead">Sign up today!!</p>
							 </div>
							</div>

			        	<div class="col-sm-3">
			        		<?php include 'includes/sidebar.php'; ?>
			        	</div>
			        </div>
			      </section>

			    </div>
			  </div>

		  	<?php include 'includes/footer.php'; ?>
		</div>

		<?php include 'includes/scripts.php'; ?>
		</body>
		</html>

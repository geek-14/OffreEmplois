<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>Site des offres d'emploi</title>
		
  
		
		<link href="css2/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js2/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		 <!---- animated-css ---->
		<link href="css2/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js2/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
		<!---- animated-css ---->
		  <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js2/move-top.js"></script>
		<script type="text/javascript" src="js2/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		
		 <!---- start-smoth-scrolling---->
		<link href="css2/style.css" rel='stylesheet' type='text/css' />
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
	</head>
	<body>
		<div class="bg">
		<!----- start-header---->
		
			<div id="home" class="header wow bounceInDown" data-wow-delay="0.4s">
					<div class="top-header">
						<div class="container">
						<div class="logo">
							<a href="index.jsp"><img src="images/logo.png" title="dreams" /></a>
						</div>
						<!----start-top-nav---->
						 <nav class="top-nav">
							<ul class="top-nav">
								<li><a href="#sign" class="scroll">Sign Up</a></li>															
								<li><a href="#sign" class="scroll">Sign In</a></li>
								<li class="active"><a href="#services" class="scroll">Services</a></li>
								<li><a href="#contact" class="scroll">Contact</a></li>
							</ul>
							<a href="#" id="pull"><img src="images/menu-icon.png" title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!----- //End-header---->
			<!---- banner ---->
			<div class="banner wow fadeIn" data-wow-delay="0.5s">
				<div class="container">
					<div class="banner-info text-center">
						<h1>Find the job of your dreams</h1><br />
						<span> </span>
						<p style="text-align:center;">GET INFORMED!!</p>
						<p style="text-align:center;"> "The <em><b><font color='#FF3358'>secret</font></b></em> of business is to know something that nobody else knows"</p>
                        <p style="text-align:right;"><font color='#FF3358'> Aristotle Onassis</font></p>
					</div>
				</div>
			</div>
		</div>
			<!---- banner ---->
			<!--- services --->
			<div id="services" class="services">
				<div class="container">
					<div class="service-head text-center">
						<h2>Core Services</h2>
						<span> </span>
					</div>
					<!--- services-grids --->
					<div class="services-grids text-center">
						<div class="col-md-4">
							<div class="service-grid wow bounceIn" data-wow-delay="0.4s">
								<span class="service-icon1"> </span>
								<h3><a href="offersignin.html">Finding important Offers</a></h3>											
								<p>Knowing about and applying for imminent offers</p>
							

  </div>
						</div>
						<div class="col-md-4">
							<div class="service-grid wow bounceIn" data-wow-delay="0.4s">
								<span class="service-icon2"> </span>
								<h3>linking businesses and people</h3>								
								<p>Putting important businesses and job seekers in the same platforms to benefit each other and the society<p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="service-grid wow bounceIn" data-wow-delay="0.4s">
							<span class="service-icon1"> </span>	
							<h3><a href="offersignin.html"> Finding interesting profiles</a></h3>																						
								<p>Finding adequate applicants for the offers presented</p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!--- services-grids --->
				</div>
			</div>
			<!--- services --->
			<div class="clearfix"> </div>
			
			<!---- team --->
			<div id="sign" class="team-members">
					<div class="wrap"> 
						<div class="tm-head">
							<h3>Choose your entity and welcome amongst us!</h3>
							
						</div>
						<div class="tm-head-grids">
							<div class="tm-head-grid wow fadeInLeft" data-wow-delay="0.5s">
								<a href="signUp.html"><img src="images/enterprise.jpg" alt="" width="500" height="200"></a>
								<h4>Enterprise</h4>
							</div>
							
							<div class="tm-head-grid wow fadeInRight" data-wow-delay="0.5s">
								<a href="signUpSub.html"><img src="images/Job-Seeker.jpg" alt="" width="500" height="200"></a>
								<h4>Job Seeker</h4>
							</div>
							
							<div class="clearfix"> </div>
						</div>
						<p class="team-info"></p>
					</div>
				</div>
			<!---- team --->
			<!---- contact --->
			<div id="contact" class="contact">
				<div class="container">
				<div class="contact-grids">
					<div class="col-md-6">
						<div class="contact-left wow fadeInRight" data-wow-delay="0.4s">
							<h3>Contact Us</h3>
							<label>Don't be shy, drop us an email and say hello! We are a really nice bunch of people :)</label>
							<div class="contact-left-grids">
								<div class="col-md-6">
									<div class="contact-left-grid">
										<p><span class="c-mobi"> </span>(212) 6-4595-5003</p>
										<p><span class="c-twitter"> </span><a href="#">@dreams</a></p>
										<p><span class="c-pluse"> </span><a href="#">plus.com/dreams</a></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="contact-right-grid">
										<p><span class="c-msg"> </span><a href="mailto:hello@dreams.com">hello@dreams.com</a></p>
										<p><span class="c-face"> </span><a href="#">facebook.com/dreams</a></p>
										<p><span class="c-pin"> </span><a href="#">pinterest.com/dreams</a></p>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="contact-right wow fadeInLeft" data-wow-delay="0.4s">
							<form>
								<input type="text" class="text" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
					 			<input type="text" class="text" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
					 	 		<textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
								<input class="wow shake" data-wow-delay="0.3s" type="submit" value="Send Message" />
							</form>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<!--- copy-right ---->
				<div class="copy-right text-center">
					<p></p>
					<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
									<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
				<!--- copy-right ---->
			</div>
			</div>
			<!---- contact --->
		
	</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"	
    import ="java.io.IOException"
    import ="java.io.PrintWriter"
    import ="javax.servlet.ServletException"
    import ="javax.servlet.annotation.WebServlet"
    import ="javax.servlet.http.HttpServlet"
    import ="javax.servlet.http.HttpServletRequest"
    import ="javax.servlet.http.HttpServletResponse"
    import ="java.sql.*"
    import = "javax.servlet.http.HttpSession"
    %>    
     
 <%   
 int id= Integer.parseInt(request.getParameter("id"));
      java.sql.Connection con;
      java.sql.Statement s;
      java.sql.ResultSet rs, rs1, rs2,res,res1,ress,ren;
      java.sql.PreparedStatement ps, pst, pss,mg, pos,of,en;

      con=null;
      ps=null;
      rs=null;
      
     
          Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_offer","root","");
            
                    ps=con.prepareStatement("SELECT name, selfdesc FROM subscriber WHERE id=?");
            ps.setLong(1, id);
            rs =ps.executeQuery();
                     pst=  con.prepareStatement("SELECT titre, nom_entreprise, lieu,description FROM experience WHERE id_subscriber=?");
	        pst.setLong(1, id);
	        rs1= pst.executeQuery();
	                 pss=con.prepareStatement("SELECT ecole, diplome,discipline,description FROM formation WHERE id_subscriber=?");
	                 pss.setLong(1, id);
	     	        rs2= pss.executeQuery();                	                	     	        
%>	

<!DOCTYPE html>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		 <!-- Custom Theme files -->
		 <!---- animated-css ---->
		<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
		<!---- animated-css ---->
		  <!---- start-smoth-scrolling---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<link href="css/style2.css" rel='stylesheet' type='text/css' />
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
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="assets/css/main.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>User Profile</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css1/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css1/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css1/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css1/style.css">

	<!-- Modernizr JS -->
	<script src="js2/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js2/respond.min.js"></script>
	<![endif]-->
<style>
.pdp {
  margin: 0 15px 0 0;
  border-radius: 50%;
}

</style>
<div id="home" class="header wow bounceInDown" data-wow-delay="0.4s">
					<div class="top-header">
						<div class="container">
						<div class="logo">
							<a href="index.jsp"><img src="images/logo.png" title="dreams" /></a>
						</div>
						<!----start-top-nav---->
						<div class="clearfix"> </div>
					</div>
				</div>
        </div>
	</head>
	<body>
	
	<div id="fh5co-main">
		<div class="fh5co-tab-wrap">
			<ul class="fh5co-tab-menu">
				<li class="active"><a href="#" data-tab="1"><span class="icon icon-glass"></span><span class="menu-text">Profile</span></a></li>
				<li><a href="#" data-tab="2"><span class="icon icon-graduation-cap"></span><span class="menu-text">Education</span></a></li>				
				<li><a href="#" data-tab="3"><span class="icon icon-black-tie"></span><span class="menu-text">Experience</span></a></li>
				
				</ul>
			<div class="fh5co-tab-content active" data-content="1">
				<div class="fh5co-content-inner text-center">
					<div class="row row-bottom-padded-sm">
						<div class="col-md-12">
							<figure>
							<img class="pdp" src="images/no-image-icon-hi.png" width="200" height="190">
							
							</figure>
							<h1><% while( rs.next()){
			            out.print(rs.getString("name"));
		            } rs =ps.executeQuery(); %></h1>
							<p><% while( rs.next()){
			            out.print(rs.getString("selfdesc"));
		            } %></p>
						</div>
					</div>
										<ul class="fh5co-social">
						<li><a href="#"><i class="icon-envelope"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-instagram"></i></a></li>
						<li><a href="#"><i class="icon-google"></i></a></li>
						<li><a href="#"><i class="icon-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="2">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">
							<p><% while( rs2.next()){
			            out.print(rs2.getString("description"));
		            } rs2 =pss.executeQuery(); %></p>

							<div class="fh5co-feature">
								<div class="fh5co-icon">
									<i class="icon-graduation-cap"></i>
								</div>
								<div class="fh5co-text">
									<h2>School:</h2>
									<p><% while( rs2.next()){
			            out.print(rs2.getString("ecole"));} rs2 =pss.executeQuery();
		             %></p>
								</div>
							</div>

							<div class="fh5co-feature">
								<div class="fh5co-icon">
									<i class="icon-graduation-cap"></i>
								</div>
								<div class="fh5co-text">
									<h2>Diploma:</h2>
									<p><% while( rs2.next()){
			            out.print(rs2.getString("diplome"));
		            } rs2 =pss.executeQuery(); %></p>
								</div>
							</div>	
							<div class="fh5co-feature">
								<div class="fh5co-icon">
									<i class="icon-graduation-cap"></i>
								</div>
								<div class="fh5co-text">
									<h2>Field of studies:</h2>
									<p><% while( rs2.next()){
			            out.print(rs2.getString("discipline"));}
		             %></p>
								</div>
							</div>						
						</div>
						
					</div>
				</div>
			</div>
			<div class="fh5co-tab-content" data-content="3">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">

							<p>I have the privilege to work with these cool companies.</p>

							<div class="fh5co-feature">
								<div class="fh5co-icon">
									<i class="icon-black-tie"></i>
								</div>
								<div class="fh5co-text">
									<h2> 
									<% while( rs1.next()){out.print(rs1.getString("nom_entreprise"));} rs1= pst.executeQuery(); %> </h2>
									<h3> <% while( rs1.next()){	out.print(rs1.getString("titre"));} rs1= pst.executeQuery(); %> </h3>
									<p><% while( rs1.next()){out.print(rs1.getString("description"));} %></p>
								</div>
							</div>

						</div>
						
					</div>
				</div>
			</div>								
		</div>
		<footer id="fh5co-footer">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					
				</div>
			</div>
		</footer>
	</div>
	
	<!-- jQuery -->
	<script src="js2/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js2/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js2/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js2/jquery.waypoints.min.js"></script>
	<!-- Easy PieChart -->
	<script src="js2/jquery.easypiechart.min.js"></script>
	<!-- MAIN JS -->
	<script src="js2/main.js"></script>

	</body>
</html>


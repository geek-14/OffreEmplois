<%@
page contentType="text/html"
    pageEncoding="UTF-8"
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
      session=request.getSession();
      Integer id= (Integer)session.getAttribute("Id");
      java.sql.Connection con;
      java.sql.ResultSet rs;
      java.sql.PreparedStatement ps;
      con=null;
      ps=null;
      rs=null;
     Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection
                       ("jdbc:mysql://localhost:3306/job_offer","root","");
            ps=con.prepareStatement
                    ("SELECT name, email, Description FROM entreprise WHERE id=?");
            ps.setLong(1, id);
            rs =ps.executeQuery();
            while( rs.next() ){
								%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
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

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Personal &mdash; Free HTML5 Bootstrap Website Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />



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
	<script src="js1/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style>
	.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 6px
    margin: 4px 2px;
    cursor: pointer;
}
.button5 {
    background-color: white;
    color: black;
    border: 2px solid #000033;
}
.pdp {
  margin: 0 15px 0 0;
  border-radius: 50%;
}
h7{
font-family:  'Hoefler Text', Georgia, 'Times New Roman', serif;
	font-weight: normal;
        font-size: 1.75em;
	letter-spacing: .2em;
	line-height: 1.1em;
	margin:0px;
	text-align: center;
	text-transform: uppercase;
	color: #8abaab;
}
* {margin: 0; padding: 0;}

div.offres {
  margin: 20px;
}

.affichage {
  list-style-type: none;
  width: 500px;
}

h1 {
  color: #fff;
  font-family: Georgia, "Times New Roman", Times, serif;
  font-weight: 400;
  margin: 0 0 10px 0;
}
.lien {
color: #fff;
}
.element img {
  float: left;
  margin: 0 15px 0 0;
  border-radius: 50%;
}

.element p {
color: #8b8b8b;
	font-style: italic;
	font-family: Georgia, "Times New Roman", Times, serif;
}

.element {
  padding: 10px;
  overflow: auto;
}

.element:hover {
  background: #eee;
  cursor: pointer;
}
	</style>

	</head>
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
	<body>
	
	<div id="fh5co-main">
		<div class="fh5co-tab-wrap">
			<ul class="fh5co-tab-menu">
				<li class="active"><a href="#" data-tab="1"><span class="icon icon-glass"></span><span class="menu-text">Name</span></a></li>
				<li><a href="#" data-tab="3"><span class="icon icon-black-tie"></span><span class="menu-text">Job Offers</span></a></li>
			</ul>
			<div class="fh5co-tab-content active" data-content="1">
				<div class="fh5co-content-inner text-center">
					<div class="row row-bottom-padded-sm">
						<div class="col-md-12">
							<figure>
								<img class="pdp" src="images1/images.jpg" width="200" height="190">
							</figure>
							
							<h1><%
							 out.print(rs.getString("name"));
							 %></h1>
							<h9><%
							out.print(rs.getString("Description"));
							%></h9>
							<%} %>
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
			<div class="fh5co-tab-content" data-content="3">
				<div class="fh5co-content-inner">
					<div class="row">
						<div class="col-md-12">

							<h7>We propose these offers</h7>
	                              <%
	                              java.sql.Connection conn;
	                              java.sql.ResultSet rst;
	                              java.sql.PreparedStatement pst;
	                              conn=null;
	                              pst=null;
	                              rst=null;
	                              conn=DriverManager.getConnection
	                                      ("jdbc:mysql://localhost:3306/job_offer","root","");
									pst=conn.prepareStatement
				                    ("SELECT * FROM offer WHERE id_entreprise=?");
				            pst.setLong(1, id);
				            rst =pst.executeQuery();
									%>
								<div class="offres">
                                <ul class="affichage">
                              <%while( rst.next() ){ %>
                                <li class="element">
                     <h1><a class="lien" href="http://localhost:8080/embauche/offer.jsp?id=<%out.print(rst.getInt("id"));%>"> <% out.print(rst.getString("name")); %> </a></h1>
                        <p><% out.print(rst.getString("Description")); %></p>
                                  </li>
                            <%} %>
                           </ul>
                           </div>
								</div>
							</div>

						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery -->
	<script src="js1/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js1/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js1/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js1/jquery.waypoints.min.js"></script>
	<!-- Easy PieChart -->
	<script src="js1/jquery.easypiechart.min.js"></script>
	<!-- MAIN JS -->
	<script src="js1/main.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.js"></script> 

	</body>
</html>


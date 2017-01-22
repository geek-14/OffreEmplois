<%@ page language="java" contentType="text/html; charset=windows-1256"
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
                    ("SELECT * FROM offer");
            rs =ps.executeQuery();
            	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
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
		<style>
* {margin: 0; padding: 0;}

div.offres {
  margin: 20px;
}

h1 {
  color: #fff;
  font-family: Georgia, "Times New Roman", Times, serif;
  font-weight: 400;
  margin: 0 0 10px 0;
}
a {
color: #fff;
}
h2{
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

li img {
  float: left;
  margin: 0 15px 0 0;
  border-radius: 50%;
}

li p {
color: #8b8b8b;
	font-style: italic;
	font-family: Georgia, "Times New Roman", Times, serif;
}

li {
  padding: 10px;
  overflow: auto;
}

li:hover {
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
        <h2>Latest Offers</h2>
<div class="offres">
  <ul>
  <%while( rs.next() ){ %>
    <li>
      <img src="images1/images.jpg" width="100" height="90">
      <h1><a href="http://localhost:8080/embauche/offer.jsp?id=<%out.print(rs.getInt("id"));%>"> <% out.print(rs.getString("name")); %> </a></h1>
      <p><% out.print(rs.getString("Description")); %></p>
    </li>
    <%} %>
  </ul>
</div>
	<body>
	</body>
	</html>

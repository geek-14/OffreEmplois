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
    <%java.sql.Connection con;
    java.sql.Statement s;
    java.sql.ResultSet rs, rs1,rss;
    java.sql.PreparedStatement ps, pst;
    
    Class.forName("com.mysql.jdbc.Driver"); 
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_offer","root","");
    
    ps=con.prepareStatement("SELECT * FROM subscriber ");    
    rs =ps.executeQuery();
    
    	    
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Profiles</title>
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
		</script>
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
<div id="team" class="team-members">
					<div class="wrap"> 
						<div class="tm-head">
							<h3>our amazing Profiles</h3>
							
						</div><%while( rs.next()){
					    	Integer ids= rs.getInt("id");
					    	  /*session=request.getSession();         
					          session.setAttribute("id", ids);*/
					    pst= con.prepareStatement("SELECT * FROM subscriber WHERE id=?");
					    pst.setLong(1,ids);
					    rss=pst.executeQuery(); %>
						<div class="tm-head-grids">
							<div class="tm-head-grid wow fadeInLeft" data-wow-delay="0.4s">
								<img src="images/no-image-icon-hi.png" alt="" width="150" height="100">
								<a href="useprofile1.jsp?id=<%out.print(ids);%>"><h2><%								
								while( rss.next()){
			            out.print(rss.getString("name"));
		            } rss =pst.executeQuery(); %></h2></a>
								<h3><% while( rss.next()){
			            out.print(rss.getString("selfdesc"));
		            %></h3>
								<ul class="top-social-icons">
									<li><a class="twitter" href="#"> </a></li>
									<li><a class="facebook" href="#"> </a></li>
									<li><a class="pin" href="#"> </a></li>	
									<div class="clear"> </div>																									
								</ul>
							</div>												
							<div class="clearfix"> </div>
						</div>
						<%}} %>
					</div>
				</div>
<body>

</body>
</html>
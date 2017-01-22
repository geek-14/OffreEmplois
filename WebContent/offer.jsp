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
       int id = Integer.parseInt(request.getParameter("id"));
       int ident = -1;
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
                    ("SELECT * FROM offer WHERE id=?");
            ps.setInt(1, id);
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
		.fancy {
  line-height: 0.5;
  text-align: center;
}
.fancy span {
  display: inline-block;
  position: relative;  
}
.fancy span:before,
.fancy span:after {
  content: "";
  position: absolute;
  height: 5px;
  border-bottom: 1px solid white;
  border-top: 1px solid white;
  top: 0;
  width: 600px;
}
.fancy span:before {
  right: 100%;
  margin-right: 15px;
}
.fancy span:after {
  left: 100%;
  margin-left: 15px;
}
h1, h2 {
font-family:Georgia,serif;
	color:#fff;
	font-variant: small-caps; text-transform: none; font-weight: 100; margin-bottom: 0;
}
a{
font-family:Georgia,serif;
	color:#fff;
	font-variant: small-caps; text-transform: none; font-weight: 100; margin-bottom: 0;
	text-align: center;
}
p{
font-family: Georgia, "Times New Roman", Times, serif;
        font-size:24px;
	margin-top: 5px; margin-bottom: 0px;
	text-align: center;
        font-weight: normal;
        color: #fff;
}
li img {
  position: center;
  margin: 0 15px 0 0;
  border-radius: 50%;
  display: block;
    margin-left: auto;
    margin-right: auto
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
		
		<%while (rs.next()){ 
		ident= rs.getInt("id_entreprise");
		session=request.getSession();  
        session.setAttribute("Id",ident);
		%>
		<h1 class="fancy"><span>Opportunity</span></h1>
		<p><% out.print(rs.getString("name")); %></p>
		
		<%
		java.sql.PreparedStatement pst=con.prepareStatement
        ("SELECT * FROM entreprise WHERE id=?");
		pst.setInt(1, ident); 
		java.sql.ResultSet rst =pst.executeQuery();
		while (rst.next()){
	%>
	<h2 class="fancy"><span>Company</span></h2>
	 <li>
      <img src="images1/images.jpg" width="100" height="90">
      <p><a href="http://localhost:8080/Company.jsp"> <% out.print(rst.getString("name")); %> </a></p>
      <p><% out.print(rst.getString("email")); %></p>
    </li>
  <h2 class="fancy"><span>Offer Details</span></h2>
  <p><% out.print(rs.getString("Description")); %></p>
  <%} %>
  <%} %>
		</body>
		</html>
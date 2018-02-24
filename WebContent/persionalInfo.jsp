<%@page pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Personnal</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<script src="js/modernizr-2.6.2.min.js"></script>
<link href="css/persiongnal_style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Preface Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<!-- webfonts -->
<link href='//fonts.googleapis.com/css?family=Asap:400,700,400italic'
	rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600'
	rel='stylesheet' type='text/css'>
<!-- webfonts -->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/ps_move-top.js"></script>
<script type="text/javascript" src="js/ps_easing.js"></script>
<!-- 导航栏需要的文件 -->
<script src="js/scrolling-nav.js"></script>
		<script src="js/modernizr-2.6.2.min.js"></script>
<link href="css/p_style.css" rel="stylesheet" type="text/css"
	media="all" />
	<link rel="stylesheet" href="css/swipebox.css" type="text/css" media="all">
<!-- 	<link rel="stylesheet" href="css/style.css"> --><!-- 缓冲加载  转圈 -->
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/icomoon.css"><!-- 底部分享图标 -->
<!-- <link rel="stylesheet" href="css/style.css"> -->
<!-- 导航栏需要的文件 -->
</head>
	<script type="text/javascript">
			$(function() {
				$('#login-a').click(function() {
					$('#loginbox').modal('show');
				});
				$('#sign-btn').click(function() {
					$(location).prop('href', 'sign.html');
				});
				$('#notice_btn').click(function() {
					$('.popover-hide').popover('show');
					setInterval(function function_name() {
						$('.popover-hide').popover('hide');
					}, 3000);
				});
			});
		</script>
<body>
	<div class="gtco-loader"></div>
	<!-- container -->
	<%@include file="nav_plugin.jsp"%>
	<!-- about -->
	<div id="about" class="about">
		<div class="col-md-6 about-left">
			<div id="owl-demo1" class="owl-carousel owl-carousel2">
				<div class="item">
					<div class="about-left-grid">
						<h2>
							Hi! I'm <span>Rob Lee</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
							aute irure dolor in reprehenderit in voluptate velit esse cillum
							dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum. Sed ut perspiciatis.</p>
						<ul>
							<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
							<li><a class="a-btn-h scroll" href="#contact">Hire Me</a></li>
						</ul>
					</div>
				</div>
				<div class="item">
					<div class="about-left-grid">
						<h2>
							Hi! I'm <span>Rob Lee</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
							aute irure dolor in reprehenderit in voluptate velit esse cillum
							dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum. Sed ut perspiciatis.</p>
						<ul>
							<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
							<li><a class="a-btn-h scroll" href="#contact">Hire Me</a></li>
						</ul>
					</div>
				</div>
				<div class="item">
					<div class="about-left-grid">
						<h2>
							Hi! I'm <span>ROB LEE</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim ad minim veniam, quis nostrud exercitation
							ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
							aute irure dolor in reprehenderit in voluptate velit esse cillum
							dolore eu fugiat nulla pariatur. Excepteur sint occaecat
							cupidatat non proident, sunt in culpa qui officia deserunt mollit
							anim id est laborum. Sed ut perspiciatis.</p>
						<ul>
							<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
							<li><a class="a-btn-h scroll" href="#contact">Hire Me</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6 about-right"></div>
		<div class="clearfix"></div>
		<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo1").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText : false,
					pagination : true,
				});
			});
		</script>
		<!-- Feedback -->
		<script>
			$(document).ready(function() {
				$("#owl-demo3").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText : true,
					pagination : true,
				});
			});
		</script>
	</div>
	<!-- /about -->
	<!-- services -->
	<div id="services" class="services">
		<div class="container">
			<div class="service-head one text-center ">
				<h4>WHAT I DO</h4>
				<h3>
					MY <span>SERVICES</span>
				</h3>
				<span class="border two"></span>
			</div>
			<!-- services-grids -->
			<div class="wthree_about_right_grids w3l-agile">
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-pencil"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-cog"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-leaf"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 wthree_about_right_grid">
					<div class="col-xs-4 wthree_about_right_grid_left">
						<div class="hvr-rectangle-in">
							<i class="glyphicon glyphicon-gift"></i>
						</div>
					</div>
					<div class="col-xs-8 wthree_about_right_grid_right">
						<h4>Web Design</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna
							aliqua. Ut enim.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>

			<!-- services-grids -->
		</div>
	</div>
	<!-- services -->
	<!--work-experience-->
	<div id="work" class="work">
		<div class="container">
			<div class="service-head text-center">
				<h4>WHAT I DID</h4>
				<h3>
					MY <span>EXPERIENCE</span>
				</h3>
				<span class="border one"></span>
			</div>
			<div class="time-main w3l-agile">
				<div class="col-md-6 year-info">
					<ul class="year">
						<li>2016</li>
						<li>2015</li>
						<li>2014</li>
						<li>2013</li>
						<li>2012</li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<ul class="col-md-6 timeline">
					<li>
						<div class="timeline-badge info">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">COMPANY NAME</h4>
							</div>
							<div class="timeline-body">
								<p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur
									a sapiente delectus, ut aut reiciendis voluptatibus maiores
									alias consequatur aut perferendis doloribus</p>
							</div>
						</div>
					</li>

					<li>
						<div class="timeline-badge primary">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">COMPANY NAME</h4>
							</div>
							<div class="timeline-body">
								<p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur
									a sapiente delectus, ut aut reiciendis voluptatibus maiores
									alias consequatur aut perferendis doloribus</p>
							</div>
						</div>
					</li>



					<li>
						<div class="timeline-badge danger">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">COMPANY NAME</h4>
							</div>
							<div class="timeline-body">
								<p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur
									a sapiente delectus, ut aut reiciendis voluptatibus maiores
									alias consequatur aut perferendis doloribus</p>
							</div>
						</div>
					</li>

					<li>
						<div class="timeline-badge success">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">COMPANY NAME</h4>
							</div>
							<div class="timeline-body">
								<p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur
									a sapiente delectus, ut aut reiciendis voluptatibus maiores
									alias consequatur aut perferendis doloribus</p>
							</div>
						</div>
					</li>
					<li>
						<div class="timeline-badge pass">
							<i class="glyphicon glyphicon-briefcase"></i>
						</div>
						<div class="timeline-panel">
							<div class="timeline-heading">
								<h4 class="timeline-title">COMPANY NAME</h4>
							</div>
							<div class="timeline-body">
								<p>Lorem ipsum dolor sit amet.Itaque earum rerum hic tenetur
									a sapiente delectus, ut aut reiciendis voluptatibus maiores
									alias consequatur aut perferendis doloribus</p>
							</div>
						</div>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//work-experience-->

	<!-- portfolio -->
	<div class="portfolio" id="port">
		<div class="service-head text-center">
			<h4>MY WORKS</h4>
			<h3>
				MY <span>PORTFOLIO</span>
			</h3>
			<span class="border"></span>
		</div>
		<div class="portfolio-grids">
			<script src="js/ps_easyResponsiveTabs.js" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#horizontalTab').easyResponsiveTabs({
						type : 'default', //Types: default, vertical, accordion           
						width : 'auto', //auto or any width like 600px
						fit : true
					// 100% fit in a container
					});
				});
			</script>
			<div class="sap_tabs">
				<div id="horizontalTab"
					style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>ALL</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>WEB
								DESIGN</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>MOBILE
								UI</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>ILLUSTRATIONS</span></li>
					</ul>
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal1"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic4.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal3"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic5.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal2"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic9.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal4"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic6.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd yes_marg ">

								<a href="#portfolioModal5"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic10.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd yes_marg ">

								<a href="#portfolioModal6"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic11.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd yes_marg ">

								<a href="#portfolioModal7"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic13.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd yes_marg ">

								<a href="#portfolioModal8"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic14.jpg" alt="">

								</a>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
							<div class="col-md-3 team-gd ">
								<div class="thumb">
									<a href="#portfolioModal5"
										class="portfolio-link b-link-diagonal b-animate-go"
										data-toggle="modal"><img src="images/pic10.jpg" alt="">

									</a>
								</div>
							</div>
							<div class="col-md-3 team-gd  ">
								<div class="thumb">
									<a href="#portfolioModal6"
										class="portfolio-link b-link-diagonal b-animate-go"
										data-toggle="modal"><img src="images/pic11.jpg" alt="">

									</a>
								</div>
							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal7"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic13.jpg" alt="">

								</a>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal2"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic9.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal4"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic6.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd">

								<a href="#portfolioModal5"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic10.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd">

								<a href="#portfolioModal6"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic11.jpg" alt="">

								</a>

							</div>
							<div class="clearfix"></div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal5"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic10.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd">

								<a href="#portfolioModal6"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic11.jpg" alt="">

								</a>

							</div>
							<div class="col-md-3 team-gd ">

								<a href="#portfolioModal7"
									class="portfolio-link b-link-diagonal b-animate-go"
									data-toggle="modal"><img src="images/pic13.jpg" alt="">

								</a>

							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //portfolio -->
	<!-- top-grids -->
	<div class="blog" id="blogs">
		<div class="container">
			<div class="service-head text-center">
				<h4>BLOGS</h4>
				<h3>
					MY <span>BLOGS</span>
				</h3>
				<span class="border one"></span>
			</div>
			<div class="news-grid w3l-agile">
				<div class="col-md-6 news-img">
					<a href="#" data-toggle="modal" data-target="#myModal1"> <img
						src="images/b1.jpg" alt=" " class="img-responsive"></a>

				</div>
				<div class="col-md-6 news-text">
					<h3>
						<a href="#" data-toggle="modal" data-target="#myModal1">HERE
							GOES AN AWESOME BLOG TITLE</a>
					</h3>
					<ul class="news">
						<li><i class="glyphicon glyphicon-user"></i> <a href="#">Admin</a></li>
						<li><i class="glyphicon glyphicon-comment"></i> <a href="#">2
								Comments</a></li>
						<li><i class="glyphicon glyphicon-heart"></i> <a href="#">50
								Likes</a></li>
						<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
								Tags</a></li>
					</ul>
					<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut
						reiciendis voluptatibus maiores alias consequatur aut perferendis
						doloribus asperiores repellat. Neque porro quisquam est, qui
						dolorem ipsum quia dolor sit amet.</p>
					<a href="#" data-toggle="modal" data-target="#myModal1"
						class="read hvr-shutter-in-horizontal">Read More</a>

				</div>

				<div class="clearfix"></div>
			</div>
			<div class="news-grid">

				<div class="col-md-6 news-text two">
					<h3>
						<a href="#" data-toggle="modal" data-target="#myModal1">HERE
							GOES AN AWESOME BLOG TITLE</a>
					</h3>
					<ul class="news">
						<li><i class="glyphicon glyphicon-user"></i> <a href="#">Admin</a></li>
						<li><i class="glyphicon glyphicon-comment"></i> <a href="#">2
								Comments</a></li>
						<li><i class="glyphicon glyphicon-heart"></i> <a href="#">50
								Likes</a></li>
						<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
								Tags</a></li>
					</ul>
					<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut
						reiciendis voluptatibus maiores alias consequatur aut perferendis
						doloribus asperiores repellat. Neque porro quisquam est, qui
						dolorem ipsum quia dolor sit amet.</p>
					<a href="#" data-toggle="modal" data-target="#myModal1"
						class="read hvr-shutter-in-horizontal">Read More</a>

				</div>
				<div class="col-md-6 news-img two">
					<a href="#" data-toggle="modal" data-target="#myModal1"> <img
						src="images/b2.jpg" alt=" " class="img-responsive"></a>

				</div>
				<div class="clearfix"></div>
			</div>
			<div class="news-grid">
				<div class="col-md-6 news-img">
					<a href="#" data-toggle="modal" data-target="#myModal1"> <img
						src="images/b3.jpg" alt=" " class="img-responsive"></a>

				</div>
				<div class="col-md-6 news-text">
					<h3>
						<a href="#" data-toggle="modal" data-target="#myModal1">HERE
							GOES AN AWESOME BLOG TITLE</a>
					</h3>
					<ul class="news">
						<li><i class="glyphicon glyphicon-user"></i> <a href="#">Admin</a></li>
						<li><i class="glyphicon glyphicon-comment"></i> <a href="#">2
								Comments</a></li>
						<li><i class="glyphicon glyphicon-heart"></i> <a href="#">50
								Likes</a></li>
						<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
								Tags</a></li>
					</ul>
					<p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut
						reiciendis voluptatibus maiores alias consequatur aut perferendis
						doloribus asperiores repellat. Neque porro quisquam est, qui
						dolorem ipsum quia dolor sit amet.</p>
					<a href="#" data-toggle="modal" data-target="#myModal1"
						class="read hvr-shutter-in-horizontal">Read More</a>

				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- top-grids -->
	<!-- /blog-pop-->
	<div class="modal ab fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog about" role="document">
			<div class="modal-content about">
				<div class="modal-header">
					<button type="button" class="close ab" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body about">
					<div class="about">

						<div class="about-inner">

							<img src="images/b3.jpg" alt="about" />
							<h4 class="tittle">A Fews words about us</h4>
							<p>Lorem ipsum dolor sit amet Integer gravida,Lorem ipsum
								dolor sit amet Integer gravida velit,Ming sits in the corner the
								whole day. She's into crochet. quis dolor tristiqumsan.Mirum est
								notare quam littera gothica, quam nunc putamus parum claram,
								anteposuerit litterarum formas humanitatis per seacula quarta
								decima et quinta decima. velit quis dolor tristiqumsan.</p>
							<p>Lorem ipsum dolor sit amet. Integer gravida velit quis
								dolor tristiqumsan.anteposuerit litterarum formas humanitatis
								per seacula amet Integer gravida velit.</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //blog-pop-->

	<!-- /header -->
	<%@include file="foot_plugin.jsp"%>
	<!-- //footer -->
	<!-- /container -->
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic4.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic9.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic5.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic6.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic10.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic11.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal7"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic13.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal8"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<h3>Image-Title</h3>
							<img src="images/pic14.jpg" class="img-responsive img-centered"
								alt="">
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry. Lorem Ipsum has been the industry's
								standard dummy text ever since the 1500s, when an unknown
								printer took a galley of type and scrambled it to make a type
								specimen book.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="portfolio-modal modal fade slideanim" id="portfolioModal9"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content port-modal">
			<div class="close-modal" data-dismiss="modal">
				<div class="lr">
					<div class="rl"></div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<div class="modal-body">
							<img src="images/pic1.jpg" class="img-responsive img-centered"
								alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<a href="#home" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!--start-smooth-scrolling-->
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!--end-smooth-scrolling-->
	<!-- //for bootstrap working -->



</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Justice by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>

<head>
<meta charset="utf-8">
<!--<meta http-equiv="X-UA-Compatible" content="IE=edge">-->
<title>首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by GetTemplates.co" />
<meta name="keywords"
	content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
<meta name="author" content="GetTemplates.co" />
<link
	href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i|Roboto+Mono"
	rel="stylesheet">
<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<!--<link rel="stylesheet" href="css/bootstrap.css">-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">
<!-- custom-theme -->

<!-- //custom-theme -->
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>-->
<!--<script src="js/respond.min.js"></script>-->
<!--<![endif]-->
<!-- Scrolling Nav JavaScript -->
<script src="js/scrolling-nav.js"></script>
<link href="css/p_style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //fixed-scroll-nav-js -->
<!-- /.modal -->
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Stellar -->
<script src="js/jquery.stellar.min.js"></script>
<!-- Main -->
<script src="js/main.js"></script>
<!-- 个人页需要文件 -->
<link href="css/persiongnal_style.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/ps_easing.js"></script>
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
<script src="js/ps_easyResponsiveTabs.js" type="text/javascript"></script>
<!-- 个人页需要文件 -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
		$("#owl-demo1").owlCarousel({
			items : 1,
			lazyLoad : false,
			autoPlay : true,
			navigation : false,
			navigationText : false,
			pagination : true,
		});
		$("#owl-demo3").owlCarousel({
			items : 1,
			lazyLoad : false,
			autoPlay : true,
			navigation : false,
			navigationText : true,
			pagination : true,
		});
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});

	});
</script>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<!--模态框的js控制-->
	<script type="text/javascript">
		$(function() {
			$('#login-a').click(function() {
				$('#loginbox').modal('show');
			});
		});
	</script>

	<div class="gtco-loader"></div>

	<div id="page">
		<%@include file="nav_plugin.jsp"%>

		<header id="gtco-header" class="gtco-cover" role="banner"
			style="background-image: url(images/img_1.jpg);"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<!-- about -->
					<div id="about" class="about" style="margin-top: 20px;">
						<div class="col-md-6 about-left" style="padding-bottom: 2.9em;">
							<div id="owl-demo1" class="owl-carousel owl-carousel2">
								<div class="item">
									<div class="about-left-grid">
										<h2>
											Hi! I'm <span>Rob Lee</span>
										</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in
											voluptate velit esse cillum dolore eu fugiat nulla pariatur.
											Excepteur sint occaecat cupidatat non proident, sunt in culpa
											qui officia deserunt mollit anim id est laborum. Sed ut
											perspiciatis.</p>
										<ul style="padding-bottom: 10px;">
											<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
											<li><a class="a-btn-h scroll" href="#contact">Hire
													Me</a></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="about-left-grid">
										<h2>
											Hi! I'm <span>Rob Lee</span>
										</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in
											voluptate velit esse cillum dolore eu fugiat nulla pariatur.
											Excepteur sint occaecat cupidatat non proident, sunt in culpa
											qui officia deserunt mollit anim id est laborum. Sed ut
											perspiciatis.</p>
										<ul>
											<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
											<li><a class="a-btn-h scroll" href="#contact">Hire
													Me</a></li>
										</ul>
									</div>
								</div>
								<div class="item">
									<div class="about-left-grid">
										<h2>
											Hi! I'm <span>ROB LEE</span>
										</h2>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in
											voluptate velit esse cillum dolore eu fugiat nulla pariatur.
											Excepteur sint occaecat cupidatat non proident, sunt in culpa
											qui officia deserunt mollit anim id est laborum. Sed ut
											perspiciatis.</p>
										<ul>
											<li><a class="a-btn-a scroll" href="#port">My Work</a></li>
											<li><a class="a-btn-h scroll" href="#contact">Hire
													Me</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 about-right"></div>
						<div class="clearfix"></div>
					</div>
					<!-- /about -->
				</div>
			</div>
		</header>

		<div id="gtco-main" style="    padding: 0em;">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-12">
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

								<div class="sap_tabs">
									<div id="horizontalTab"
										style="display: block; width: 100%; margin: 0px;">
										<ul class="resp-tabs-list">
											<li class="resp-tab-item" aria-controls="tab_item-0"
												role="tab"><span>ALL</span></li>
											<li class="resp-tab-item" aria-controls="tab_item-1"
												role="tab"><span>WEB DESIGN</span></li>
											<li class="resp-tab-item" aria-controls="tab_item-2"
												role="tab"><span>MOBILE UI</span></li>
											<li class="resp-tab-item" aria-controls="tab_item-3"
												role="tab"><span>ILLUSTRATIONS</span></li>
										</ul>
										<div class="resp-tabs-container">
											<div class="tab-1 resp-tab-content"
												aria-labelledby="tab_item-0">
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
											<div class="tab-1 resp-tab-content"
												aria-labelledby="tab_item-1">
												<div class="col-md-3 team-gd ">
													<div class="thumb">
														<a href="#portfolioModal5"
															class="portfolio-link b-link-diagonal b-animate-go"
															data-toggle="modal"><img src="images/pic10.jpg"
															alt=""> </a>
													</div>
												</div>
												<div class="col-md-3 team-gd  ">
													<div class="thumb">
														<a href="#portfolioModal6"
															class="portfolio-link b-link-diagonal b-animate-go"
															data-toggle="modal"><img src="images/pic11.jpg"
															alt=""> </a>
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
											<div class="tab-1 resp-tab-content"
												aria-labelledby="tab_item-2">
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
											<div class="tab-1 resp-tab-content"
												aria-labelledby="tab_item-3">
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
										<a href="detail.jsp"> <img
											src="images/b1.jpg" alt=" " class="img-responsive"></a>

									</div>
									<div class="col-md-6 news-text">
										<h3>
											<a href="detail.jsp" >一条测试用的内容</a>
										</h3>
										<ul class="news">
											<li><i class="glyphicon glyphicon-user"></i> <a href="#">Admin</a></li>
											<li><i class="glyphicon glyphicon-comment"></i> <a
												href="#">2 Comments</a></li>
											<li><i class="glyphicon glyphicon-heart"></i> <a
												href="#">50 Likes</a></li>
											<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
													Tags</a></li>
										</ul>
										<p>Itaque earum rerum hic tenetur a sapiente delectus, ut
											aut reiciendis voluptatibus maiores alias consequatur aut
											perferendis doloribus asperiores repellat. Neque porro
											quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
										<a href="detail.jsp"
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
											<li><i class="glyphicon glyphicon-comment"></i> <a
												href="#">2 Comments</a></li>
											<li><i class="glyphicon glyphicon-heart"></i> <a
												href="#">50 Likes</a></li>
											<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
													Tags</a></li>
										</ul>
										<p>Itaque earum rerum hic tenetur a sapiente delectus, ut
											aut reiciendis voluptatibus maiores alias consequatur aut
											perferendis doloribus asperiores repellat. Neque porro
											quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
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
											<li><i class="glyphicon glyphicon-comment"></i> <a
												href="#">2 Comments</a></li>
											<li><i class="glyphicon glyphicon-heart"></i> <a
												href="#">50 Likes</a></li>
											<li><i class="glyphicon glyphicon-tags"></i> <a href="#">3
													Tags</a></li>
										</ul>
										<p>Itaque earum rerum hic tenetur a sapiente delectus, ut
											aut reiciendis voluptatibus maiores alias consequatur aut
											perferendis doloribus asperiores repellat. Neque porro
											quisquam est, qui dolorem ipsum quia dolor sit amet.</p>
										<a href="#" data-toggle="modal" data-target="#myModal1"
											class="read hvr-shutter-in-horizontal">Read More</a>

									</div>

									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<!-- top-grids -->
						<!-- /blog-pop-->
						<div class="modal ab fade" id="myModal1" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel">
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
												<p>Lorem ipsum dolor sit amet Integer gravida,Lorem
													ipsum dolor sit amet Integer gravida velit,Ming sits in the
													corner the whole day. She's into crochet. quis dolor
													tristiqumsan.Mirum est notare quam littera gothica, quam
													nunc putamus parum claram, anteposuerit litterarum formas
													humanitatis per seacula quarta decima et quinta decima.
													velit quis dolor tristiqumsan.</p>
												<p>Lorem ipsum dolor sit amet. Integer gravida velit
													quis dolor tristiqumsan.anteposuerit litterarum formas
													humanitatis per seacula amet Integer gravida velit.</p>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //blog-pop-->

						<!-- /header -->

						<!-- //footer -->
						<!-- /container -->
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal1" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic4.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal2" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic9.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal3" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic5.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal4" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic6.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal5" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic10.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal6" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic11.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal7" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic13.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal8" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic14.jpg"
													class="img-responsive img-centered" alt="">
												<p>Lorem Ipsum is simply dummy text of the printing and
													typesetting industry. Lorem Ipsum has been the industry's
													standard dummy text ever since the 1500s, when an unknown
													printer took a galley of type and scrambled it to make a
													type specimen book.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="portfolio-modal modal fade slideanim"
							id="portfolioModal9" tabindex="-1" role="dialog"
							aria-hidden="true">
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
												<img src="images/pic1.jpg"
													class="img-responsive img-centered" alt="">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<footer id="gtco-footer" role="contentinfo">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-12">
						<h3 class="footer-heading">Most Popular</h3>
					</div>
					<div class="col-md-4">
						<div class="post-entry">
							<div class="post-img">
								<a href="#"><img src="images/img_1.jpg"
									class="img-responsive"
									alt="Free HTML5 Bootstrap Template by GetTemplates.co"></a>
							</div>
							<div class="post-copy">
								<h4>
									<a href="#">How Web Hosting Can Impact Page Load Speed</a>
								</h4>
								<a href="#" class="post-meta"><span class="date-posted">4
										days ago</span></a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="post-entry">
							<div class="post-img">
								<a href="#"><img src="images/img_2.jpg"
									class="img-responsive"
									alt="Free HTML5 Bootstrap Template by GetTemplates.co"></a>
							</div>
							<div class="post-copy">
								<h4>
									<a href="#">How Web Hosting Can Impact Page Load Speed</a>
								</h4>
								<a href="#" class="post-meta"><span class="date-posted">4
										days ago</span></a>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="post-entry">
							<div class="post-img">
								<a href="#"><img src="images/img_3.jpg"
									class="img-responsive"
									alt="Free HTML5 Bootstrap Template by GetTemplates.co"></a>
							</div>
							<div class="post-copy">
								<h4>
									<a href="#">How Web Hosting Can Impact Page Load Speed</a>
								</h4>
								<a href="#" class="post-meta"><span class="date-posted">4
										days ago</span></a>
							</div>
						</div>
					</div>
				</div>

				<%@include file="foot_plugin.jsp"%>

			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<!-- 模态框（Modal） -->
	<!-- /.modal-dialog -->
	</div>

</body>

</html>
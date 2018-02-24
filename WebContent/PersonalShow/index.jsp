<%@page import="com.alex.entity.UserInfo"%>
<%@page import="com.alex.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = path + "/PersonalShow";
	User user = (User) session.getAttribute(User.CURRENTUSER);
%>
<html>
<head>
<title>个人主页</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
<link href='http://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/magnific-popup.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/style.css">
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="ui" value="${user.userInfo}"/>
	<header>
		<nav class="navbar navbar-fixed-top" id="header-nav">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="<%=path%>/index"> <img
						src="<%=path%>/images/uiimages/logo.png" alt="Wooster logo" />
					</a>
					<h2 class="navbar-brand">石墙</h2>
				</div>
				<div class="primary-menu">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a data-scroll href="#">置顶</a></li>
							<li><a data-scroll href="#personal">简介</a></li>
							<li><a data-scroll href="#portfolio">公开照</a></li>
							<li><a data-scroll href="#posts">最新动态</a></li>
							<li><a href="Person">我的动态</a></li>
							<li><a href="index">主页</a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>

		<div class="main-head">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h4>I Have Something To Tell You:</h4>
						<div class="divider"></div>
						<h3>${ui.signature}</h3>
						<a data-scroll href="#personal" class="btn btn-primary btn-lg" style="margin-top: 20px">开始浏览</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="call-to-action">
		<!-- 暂时不使用 过渡条 栏目  可添加内容   display: none;-->
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-offset-2">
					<h4>Best psd template for your vintage website. It's free and
						it's awesome</h4>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</div>
	<section id="personal" class="no-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 section-text">
					<div class="title title-left">
						<h2>自我简介</h2>
						<h5>${ui.sex}/${ui.age } /${ui.job } 现居地： ${ui.address }</h5>
						<div class="divider divider-sm"></div>
					</div>
					<p>${ui.intro}</p>
					<a data-scroll href="#portfolio" class="btn btn-primary">公开照</a>
				</div>
				<div class="col-md-6">
					<img src="<%=basePath%>/img/typewriter.jpg" class="img-responsive">
				</div>
			</div>
		</div>
		<div class="video">
			<div class="video-wrapper">
				<div class="centred-container">
					<h3>See our video</h3>
					<a href="https://www.youtube.com/watch?v=-EiFyiogGmY"
						id="popup-youtube"><i class="fa fa-play-circle"></i></a>
				</div>
			</div>
		</div>
	</section>
	<section class="portfolio" id="portfolio">
		<div class="col-md-8 col-md-offset-2">
			<div class="title text-center">
				<h2>公开照</h2>
				<h6>用 影 像 记 录 最 美 好 的 时 刻</h6>
				<div class="divider divider-lg"></div>
				<!-- <p>Daydreaming lightly through the rain 白日梦轻轻地穿透雨滴 All's forgiven on a summer train 所有的一切都能被谅解 在这夏日的列车上</p> -->
			</div>
		</div>
		<div class="container" id="portfolio-grid">
			<nav class="centered-pills clearfix">
				<ul class="nav nav-pills">
					<li><a href="javascript:void(0);" class="filter active"
						data-filter="all">All</a></li>
					<li><a href="javascript:void(0);" class="filter"
						data-filter=".mockups">Mockups</a></li>
					<li><a href="javascript:void(0);" class="filter"
						data-filter=".devices">Devices</a></li>
					<li><a href="javascript:void(0);" class="filter"
						data-filter=".frames">Frames</a></li>
					<li><a href="javascript:void(0);" class="filter"
						data-filter=".templates">Templates</a></li>
				</ul>
			</nav>
			<div class="row">
				<c:forEach items="${images}" var="image" >
				<figure class="mix all devices col-md-4 col-sm-6">
				<img class="img-responsive"
						src="<%=path%>/images/postimages/${image.imageName}"
						alt="MackBook Mockup" />
				</figure>
				</c:forEach>
				<figure class="mix all frames col-md-4 col-sm-6">
					<img class="img-responsive"
						src="<%=basePath%>/img/portfolio/frame.jpg" alt="Frame" />
				</figure>
				<figure class="mix all templates col-md-4 col-sm-6">
					<img class="img-responsive"
						src="<%=basePath%>/img/portfolio/coming-soon.jpg"
						alt="Coming soon" />
				</figure>
				<figure class="mix all devices col-md-4 col-sm-6">
					<img class="img-responsive"
						src="<%=basePath%>/img/portfolio/phone.jpg" alt="Adena icons pack" />
				</figure>
				<figure class="mix all templates col-md-4 col-sm-6">
					<img class="img-responsive"
						src="<%=basePath%>/img/portfolio/branding.jpg"
						alt="Adena icons pack" />
				</figure>
				<figure class="mix all mockups col-md-4 col-sm-6">
					<img class="img-responsive"
						src="<%=basePath%>/img/portfolio/iphone6.jpg"
						alt="Adena icons pack" />
				</figure>
			</div>
		</div>
	</section>
	<div class="copyrights">
		Collect from <a href="#" title="ç½ç«æ¨¡æ¿">Mango</a>
	</div>
	<section id="about">
<!-- 		<div class="testimonial">
			<div class="mask">
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="single-testimonial">
								<i class="fa fa-quote-right"></i>
								<p>The space between an idea and a concept is your lips. If
									you canât say it out loud you canât do it.</p>
								<h6>NICK LONGO</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<div class="container" id="posts">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="title">
						<h2>最新动态</h2>
						<span>About life</span>
						<div class="divider divider-lg"></div>
					</div>
				</div>
			</div>
			<div class="row team">
				<div class="col-md-3 col-sm-6">
					<div class="team-member">
						<img src="<%=basePath%>/img/team/img1.jpg" class="img-responsive">
						<h6>Graph Berry</h6>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="team-member">
						<img src="<%=basePath%>/img/team/img2.jpg" class="img-responsive">
						<h6>Graph Berry</h6>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="team-member">
						<img src="<%=basePath%>/img/team/img3.jpg" class="img-responsive">
						<h6>Graph Berry</h6>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="team-member">
						<img src="<%=basePath%>/img/team/img4.jpg" class="img-responsive">
						<h6>Graph Berry</h6>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<h3>About Us</h3>
					<p>I like jumping back and forth between a few different things
						to let my subconscious chew on one problem while my conscious
						works on something else.</p>
				</div>
				<div class="col-md-4">
					<h3>Who We Are</h3>
					<p>I like jumping back and forth between a few different things
						to let my subconscious chew on one problem while my conscious
						works on something else.</p>
				</div>
				<div class="col-md-4">
					<h3>Why We Do This</h3>
					<p>I like jumping back and forth between a few different things
						to let my subconscious chew on one problem while my conscious
						works on something else.</p>
				</div>
			</div>
		</div>

	</section>
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<img src="<%=basePath%>/img/logo-white.png" class="logo-footer" />
					<ul class="social">
						<li class="wow bounceIn"><a href="#/RqhEjP" target="_blank"><i
								class="fa fa-facebook"></i></a></li>
						<li class="wow bounceIn" data-wow-delay="0.1s"><a
							href="#/hUfpSB" target="_blank"><i class="fa fa-twitter"></i></a></li>
						<li class="wow bounceIn" data-wow-delay="0.2s"><a
							href="#/k9zAy5" target="_blank"><i class="fa fa-dribbble"></i></a></li>
						<li class="wow bounceIn" data-wow-delay="0.3s"><a
							href="#/FPjuCE" target="_blank"><i class="fa fa-behance"></i></a></li>
						<li class="wow bounceIn" data-wow-delay="0.4s"><a
							href="#/UYjGTR" target="_blank"><i class="fa fa-pinterest"></i></a></li>
						<li class="wow bounceIn" data-wow-delay="0.5s"><a
							href="#/r4xzR4" target="_blank"><i class="fa fa-google"></i></a></li>
					</ul>
					<p>
						 created by <a href="#" target="_blank">Mango</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<script src="<%=basePath%>/js/jquery.mixitup.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/smooth-scroll.js"></script>
	<script src="<%=basePath%>/js/custom.js"></script>
</body>
</html>
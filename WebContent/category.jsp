<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String Basepath = path + "/Person";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="stylesheet" href="<%=path%>/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="<%=path%>/css/icomoon.css">
<!-- Bootstrap  -->
<!--<link rel="stylesheet" href="<%=path%>/css/bootstrap.css">-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="<%=path%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"
	charset="utf-8"></script>
<!-- Magnific Popup -->
<link rel="stylesheet" href="<%=path%>/css/magnific-popup.css">

<!-- Theme style  -->
<link rel="stylesheet" href="<%=path%>/css/style.css">
<!-- custom-theme -->

<!-- //custom-theme -->
<!-- Modernizr JS -->
<script src="<%=path%>/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>-->
<!--<script src="<%=path%>/js/respond.min.js"></script>-->
<!--<![endif]-->
<!-- Scrolling Nav JavaScript -->
<script src="<%=path%>/js/scrolling-nav.js"></script>
<link href="<%=path%>/css/p_style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //fixed-scroll-nav-js -->
<!-- /.modal -->
<!-- jQuery Easing -->
<script src="<%=path%>/js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script src="<%=path%>/js/jquery.waypoints.min.js"></script>
<!-- Stellar -->
<script src="<%=path%>/js/jquery.stellar.min.js"></script>
<!-- Main -->
<script src="<%=path%>/js/main.js"></script>

<!-- CSS
   ================================================== -->
<link rel="stylesheet" href="<%=Basepath%>/css/base.css">
<link rel="stylesheet" href="<%=Basepath%>/css/vendor.css">
<link rel="stylesheet" href="<%=Basepath%>/css/coll_main.css">

<!-- script
   ================================================== -->
<script src="<%=Basepath%>/js/modernizr.js"></script>
<script src="<%=Basepath%>/js/pace.min.js"></script>
</head>
<style type="text/css">
.Highlights {
	transition: all 1s;
	z-index: 1;
	box-shadow: 1px 1px 6px #77756f;
}
</style>
<script type="text/javascript">
	$(function() {
		$('article').mouseover(function() {
			$(this).addClass("Highlights");
		});
		$('article').mouseout(function() {
			$(this).removeClass("Highlights");
		});
	});
</script>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<!-- 经用于转换时间类型 -->
	<jsp:useBean id="date" class="java.util.Date" />
	<div class="gtco-loader"></div>
	<div id="page">
		<%@include file="nav_plugin.jsp"%>
		<!-- 下面是内容去 -->
		<div class="row">
			<!--  masonry -->
			<section id="bricks">
				<div class="row masonry">
					<!-- brick-wrapper -->
					<div class="bricks-wrapper">
						<div class="grid-sizer"></div>
						<div class="brick entry featured-grid animate-this">
							<div class="entry-content">
								<div id="featured-post-slider" class="flexslider">
									<!-- 滑动切换图片的模块 -->
									<ul class="slides">
										<c:forEach items="${posts }" begin="0" end="2" var="post">
											<jsp:setProperty name="date" property="time"
												value="${post.publishTime}" />
											<fmt:formatDate value="${date}" type="both" var="publishtime"
												pattern="yyyy年MM月dd日 HH:mm" />
											<li>
												<div class="featured-post-slide">
													<div class="post-background"
														style="background-image: url('<%=path%>/images/postimages/${post.images[0].imageName }');"></div>
													<div class="overlay"></div>
													<div class="post-content">
														<ul class="entry-meta">
															<li>${publishtime}</li>
															<li><a href="#">${post.author.user.uname }</a></li>
														</ul>
														<h1 class="slide-title">
															<a href="Detail?pid=${post.pid }" title="">${post.title }</a>
														</h1>
													</div>
												</div>
											</li>
											<!-- /slide -->
										</c:forEach>
									</ul>
									<!-- end slides -->
								</div>
								<!-- end featured-post-slider -->
							</div>
							<!-- end entry content -->
						</div>
						<c:forEach items="${posts }" var="post" begin="3">
							<jsp:setProperty name="date" property="time"
								value="${post.publishTime}" />
							<fmt:formatDate value="${date}" type="both" var="publishtime"
								pattern="yyyy年MM月dd日 HH:mm" />
							<c:choose>
								<c:when test="${fn:length(post.images)<=0 }">
									<article class="brick entry format-quote animate-this">

										<div class="entry-thumb">
											<blockquote>
												<p>
													<a href="Detail?pid=${post.pid }">${post.title }</a>
												</p>
												<cite>${post.author.user.uname }</cite>
											</blockquote>
										</div>
									</article>
									<!-- end article -->
								</c:when>
								<c:when test="${$post.topic.typeName=='链接' }">
									<article class="brick entry format-link animate-this">
										<div class="entry-thumb">
											<div class="link-wrap">
												<p>${post.title }</p>
												<cite> <a target="_blank"
													href="http://www.dreamhost.com">http://www.dreamhost.com</a>
												</cite>
											</div>
										</div>

									</article>
									<!-- end article -->
								</c:when>
								<c:otherwise>
									<article class="brick entry format-standard animate-this">
										<div class="entry-thumb">
											<a href="Detail?pid=${post.pid }" class="thumb-link"> <img
												src="<%=path%>/images/postimages/${post.images[0].imageName}"
												alt="">
											</a>
										</div>

										<div class="entry-text">
											<div class="entry-header">

												<div class="entry-meta">
													<span class="cat-links"> <a href="topic?topic=${post.topic.tid }">#
															${post.topic.typeName } #</a>
													</span>
												</div>
												<h1 class="entry-title">
													<a href="Detail?pid=${post.pid }">${post.title }</a>
												</h1>
											</div>
											<div class="entry-excerpt">${post.con_top }</div>
										</div>
									</article>
									<!-- end article -->
								</c:otherwise>
							</c:choose>
						</c:forEach>


						<article class="brick entry format-standard animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/ferris-wheel.jpg"
									alt="ferris wheel">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Design</a> <a
											href="#">UI</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">This Is Another Standard
											Format Post.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<div class="copyrights">
							Collect from <a href="http://www.cssmoban.com/">企业网站模板</a>
						</div>

						<!-- format audio here -->
						<article class="brick entry format-audio animate-this">

							<div class="entry-thumb">
								<a href="single-audio.html" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/concert.jpg" alt="concert">
								</a>

								<div class="audio-wrap">
									<audio id="player"
										src="./Person/media/AirReview-Landmarks-02-ChasingCorporate.mp3"
										width="100%" height="42" controls="controls"></audio>
								</div>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Design</a> <a
											href="#">Music</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="single-audio.html">This Is a Audio Format Post.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- /article -->



						<article class="brick entry animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/shutterbug.jpg" alt="Shutterbug">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Photography</a> <a
											href="#">html</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">Photography Skills Can
											Improve Your Graphic Design.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<article class="brick entry animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/usaf-rocket.jpg" alt="USAF rocket">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Branding</a> <a
											href="#">Mockup</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">The 10 Golden Rules of
											Clean Simple Design.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<article class="brick entry format-gallery group animate-this">

							<div class="entry-thumb">

								<div class="post-slider flexslider">
									<ul class="slides">
										<li><img src="<%=path%>/images/thumbs/gallery/work1.jpg"></li>
										<li><img src="<%=path%>/images/thumbs/gallery/work2.jpg"></li>
										<li><img src="<%=path%>/images/thumbs/gallery/work3.jpg"></li>
									</ul>
								</div>

							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Branding</a> <a
											href="#">Wordpress</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="single-gallery.html">Workspace Design Trends and
											Ideas.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->




						<article class="brick entry animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/diagonal-pattern.jpg"
									alt="Pattern">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Design</a> <a
											href="#">UI</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">You Can See Patterns
											Everywhere.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<article class="brick entry format-video animate-this">

							<div class="entry-thumb video-image">
								<a
									href="http://player.vimeo.com/video/14592941?title=0&amp;byline=0&amp;portrait=0&amp;color=F64B39"
									data-lity> <img
									src="<%=path%>/images/thumbs/ottawa-bokeh.jpg" alt="bokeh">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Design</a> <a
											href="#">Branding</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">This Is a Video Post Format.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<article class="brick entry animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/lighthouse.jpg" alt="Lighthouse">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Photography</a> <a
											href="#">Design</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">Breathtaking Photos of
											Lighthouses.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

						<article class="brick entry animate-this">

							<div class="entry-thumb">
								<a href="#" class="thumb-link"> <img
									src="<%=path%>/images/thumbs/liberty.jpg" alt="Liberty">
								</a>
							</div>

							<div class="entry-text">
								<div class="entry-header">

									<div class="entry-meta">
										<span class="cat-links"> <a href="#">Branding</a> <a
											href="#">html</a>
										</span>
									</div>

									<h1 class="entry-title">
										<a href="#">Designing With Black and
											White.</a>
									</h1>

								</div>
								<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
									aliqua sed incididunt aliqua incididunt mollit id et sit
									proident dolor nulla sed commodo est ad minim elit
									reprehenderit nisi officia aute incididunt velit sint in aliqua
									cillum in consequat consequat in culpa in anim.</div>
							</div>

						</article>
						<!-- end article -->

					</div>
					<!-- end brick-wrapper 

		</div>
		<!-- end row -->
					<!-- 	下面是分页插件 -->
					<div class="row">
						<nav class="pagination col-sm-12">
							<span class="page-numbers prev inactive">Prev</span> <span
								class="page-numbers current">1</span> <a href="#"
								class="page-numbers">2</a> <a href="#" class="page-numbers">3</a>
							<a href="#" class="page-numbers">4</a> <a href="#"
								class="page-numbers">5</a> <a href="#" class="page-numbers next">Next</a>
						</nav>
					</div>
			</section>
			<!-- end bricks -->
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
	<!--瀑布流用到的 Java Script
   ================================================== -->
	<script src="<%=Basepath%>/js/plugins.js"></script>
	<script src="<%=Basepath%>/js/coll_main.js"></script>

</body>

</html>
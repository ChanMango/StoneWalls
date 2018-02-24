<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String resourcePath = request.getContextPath();
	String resourceBasePath = resourcePath + "/Person";
%>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

<!--- basic page needs
   ================================================== -->
<meta charset="utf-8">
<title>收藏</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- mobile specific metas
   ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css"
	href="<%=resourcePath%>/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=resourceBasePath%>/css/nav_main.css" />
<script src="<%=resourcePath%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=resourcePath%>/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=resourceBasePath%>/js/skel.min.js"></script>
<script src="<%=resourceBasePath%>/js/util.js"></script>
<!--[if lte IE 8]><script src="<%=resourceBasePath%>/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=resourceBasePath%>/js/main.js"></script>
<!-- CSS
   ================================================== -->
<link rel="stylesheet" href="<%=resourceBasePath%>/css/base.css">
<link rel="stylesheet" href="<%=resourceBasePath%>/css/vendor.css">
<link rel="stylesheet" href="<%=resourceBasePath%>/css/coll_main.css">


<!-- script
   ================================================== -->
<script src="<%=resourceBasePath%>/js/modernizr.js"></script>
<script src="<%=resourceBasePath%>/js/pace.min.js"></script>

<!-- favicons
	================================================== -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

</head>
<style type="text/css">
#nav_brand {
	line-height: 50px;
	letter-spacing: 0.25em;
	text-transform: uppercase;
}
</style>
<body id="top">
	<jsp:include page="nav_plugin.jsp"></jsp:include>
	<!-- masonry
   ================================================== -->
	<div class="container">
		<section id="bricks" class="with-top-sep">

			<div class="row masonry">

				<!-- brick-wrapper -->
				<div class="bricks-wrapper">

					<div class="grid-sizer"></div>
					<c:forEach items="${posts}" var="post" varStatus="vs">
						<jsp:useBean id="date" class="java.util.Date" />
						<jsp:setProperty name="date" property="time"
							value="${post.publishTime}" />
						<fmt:formatDate value="${date}" type="both" var="publishtime"
							pattern="yyyy年MM月dd日 HH:mm" />
						<c:if test="${fn:length(post.images)>0}">
							<article class="brick entry format-standard animate-this">

								<div class="entry-thumb">
									<a href="Detail?pid=${post.pid }" class="thumb-link"><img
										src="images/postimages/${post.images[0].imageName}" alt="">
									</a>
								</div>

								<div class="entry-text">
									<div class="entry-header">

										<div class="entry-meta">
											<span class="cat-links"> <a href="#">${post.topic.typeName }</a>
											<!--  <a
										href="#">Photography</a> -->
											</span>
										</div>

										<h1 class="entry-title">
											<a href="Detail?pid=${post.pid }">${post.title }</a>
										</h1>

									</div>
									<div class="entry-excerpt">${post.con_top }</div>
									<cite>${publishtime}</cite>
								</div>
							</article>
							<!-- end article -->
						</c:if>
						<c:if test="${fn:length(post.images)==0 }">
							<!-- 没有图片的帖子 -->
							<article class="brick entry format-quote animate-this">

								<div class="entry-thumb">
									<blockquote>
										<p>${post.title}</p>

										<cite>By ${post.author.user.uname }</cite>
										<cite>${publishtime}</cite>
									</blockquote>
								</div>

							</article>
							<!-- end article -->
						</c:if>
					</c:forEach>

					<article class="brick entry format-standard animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/ferris-wheel.jpg" alt="ferris wheel">
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
									<a href="single-standard.html">This Is Another Standard
										Format Post.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-audio animate-this">

						<div class="entry-thumb">
							<a href="single-audio.html" class="thumb-link"> <img
								src="images/thumbs/concert.jpg" alt="concert">
							</a>

							<div class="audio-wrap">
								<audio id="player2"
									src="<%=resourceBasePath%>/media/AirReview-Landmarks-02-ChasingCorporate.mp3"
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
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- /article -->


					<article class="brick entry format-standard animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/shutterbug.jpg" alt="Shutterbug">
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
									<a href="single-standard.html">Photography Skills Can
										Improve Your Graphic Design.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-standard animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/usaf-rocket.jpg" alt="USAF rocket">
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
									<a href="single-standard.html">The 10 Golden Rules of Clean
										Simple Design.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-gallery group animate-this">

						<div class="entry-thumb">

							<div class="post-slider flexslider">
								<ul class="slides">
									<li><img src="images/thumbs/gallery/work1.jpg"></li>
									<li><img src="images/thumbs/gallery/work2.jpg"></li>
									<li><img src="images/thumbs/gallery/work3.jpg"></li>
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
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-link animate-this">

						<div class="entry-thumb">
							<div class="link-wrap">
								<p>Looking for affordable &amp; reliable web hosting? We
									recommend Dreamhost.</p>
								<cite> <a target="_blank"
									href="http://www.dreamhost.com/r.cgi?287326">http://www.dreamhost.com</a>
								</cite>
							</div>
						</div>

					</article>
					<!-- end article -->


					<article class="brick entry animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/diagonal-pattern.jpg" alt="Pattern">
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
									<a href="single-standard.html">You Can See Patterns
										Everywhere.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-video animate-this">

						<div class="entry-thumb video-image">
							<a
								href="http://player.vimeo.com/video/14592941?title=0&amp;byline=0&amp;portrait=0&amp;color=F64B39"
								data-lity> <img src="images/thumbs/ottawa-bokeh.jpg"
								alt="bokeh">
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
									<a href="single-video.html">This Is a Video Post Format.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-standard animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/lighthouse.jpg" alt="Lighthouse">
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
									<a href="single-standard.html">Breathtaking Photos of
										Lighthouses.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

					<article class="brick entry format-standard animate-this">

						<div class="entry-thumb">
							<a href="single-standard.html" class="thumb-link"> <img
								src="images/thumbs/liberty.jpg" alt="Liberty">
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
									<a href="single-standard.html">Designing With Black and
										White.</a>
								</h1>

							</div>
							<div class="entry-excerpt">Lorem ipsum Sed eiusmod esse
								aliqua sed incididunt aliqua incididunt mollit id et sit
								proident dolor nulla sed commodo est ad minim elit reprehenderit
								nisi officia aute incididunt velit sint in aliqua cillum in
								consequat consequat in culpa in anim.</div>
						</div>

					</article>
					<!-- end article -->

				</div>
				<!-- end brick-wrapper -->

			</div>
			<!-- end row -->

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
		<!-- bricks -->
		<div id="preloader">
			<div id="loader"></div>
		</div>
	</div>
	<!--瀑布流用到的 Java Script
   ================================================== -->
	<script src="<%=resourceBasePath%>/js/plugins.js"></script>
	<script src="<%=resourceBasePath%>/js/coll_main.js"></script>

</body>

</html>
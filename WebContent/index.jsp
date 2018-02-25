<%@page import="com.alex.Utils.DateUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>

<html>

<head>
<meta charset="utf-8">
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
</head>
<script type="text/javascript">
	$(function() {
		acceptMessage();

	});
	function acceptMessage() {
		 //创建 websocket
		 //服务器应该有一个接受WebSocket连接的端点  否则握手会失败
       // var url = 'ws://'+ window.location.host + '<%=request.getContextPath()%>	/msg';
		//var sock = new WebSocket(url);
		//websocket 连接行为
		//sock.onopen = function() {
		//console.log('开启 websocket 连接');
		//	};
		//websocket 接受到信息行为
		//sock.onmessage = function(e) {
		//console.log('接受信息', e.data);
		/* 	setTimeout(function() {
				console.log('发送信息：hello world!');
				sock.send('form client: Hello world!');
			}, 2000); */
		//};
		//websocket 关闭行为
		//sock.onclose = function() {
		//			console.log('关闭 websocket 连接');
		//};
		//sock.onerror = function() {
		//alert("网络不佳，消息接收失败");
		//	}
	}
</script>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
	<jsp:useBean id="date" class="java.util.Date" />
	<div class="gtco-loader"></div>
	<div id="page">
		<%@include file="nav_plugin.jsp"%>
		<header id="gtco-header" class="gtco-cover" role="banner"
			style="background-image: url(images/keyboard.jpg);"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-7 text-left">
						<div class="display-t">
							<div class="display-tc animate-box"
								data-animate-effect="fadeInUp">
								<span class="date-post">4天前</span>
								<h1 class="mb30">
									<a href="#">How Web Hosting Can Impact Page Load Speed</a>
								</h1>
								<p>
									<a href="#" class="text-link">Read More</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<div id="gtco-main">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-12">
						<ul id="gtco-post-list">
							<c:forEach items="${posts}" var="post" begin="0" end="2">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="full entry animate-box" data-animate-effect="fadeIn">
									<a href="Detail?pid=${post.pid }">
										<div class="entry-img"
											style="background-image: url('<%=path%>/images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_center }</p>
											<%-- 	 --%>
										</div> <%-- 	 --%>
										<p class="post-meta">
											<a href="Topic?tid=${post.topic.tid }"> <span>#
													${post.topic.typeName }# </span>
											</a> <a href="Pshow?uid=${post.author.user.id }"> <span>
													by ${post.author.user.uname }</span></a> <span class="date-posted">
												${publishtime }</span>
										</p>
								</li>
							</c:forEach>

							<c:forEach items="${posts}" var="post" begin="3" end="3">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="two-third entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="Detail?pid=${post.id }" class="post-meta">#${post.topic.typeName
										}#<span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
							<c:forEach items="${posts}" var="post" begin="4" end="4">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="one-third entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="Detail?pid=${post.id }" class="post-meta">#${post.topic.typeName}#
										<span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>

							<c:forEach items="${posts}" var="post" begin="5" end="7">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="one-third entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Deatil?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="detail.jsp" class="post-meta">#${post.topic.typeName
										}# <span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
							<c:forEach items="${posts}" var="post" begin="8" end="9">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="one-half entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="detail.jsp" class="post-meta">#${post.topic.typeName
										}# <span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
							<c:forEach items="${posts}" var="post" begin="10" end="10">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="one-third entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="Detail?pid=${post.id }" class="post-meta">#${post.topic.typeName}#
										<span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
							<c:forEach items="${posts}" var="post" begin="11" end="11">
								<jsp:setProperty name="date" property="time"
									value="${post.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 HH:mm" />
								<li class="two-third entry animate-box"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.id }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${post.title }</h3>
											<p>${post.con_top }</p>
										</div>
								</a> <a href="Detail?pid=${post.id }" class="post-meta">#${post.topic.typeName
										}#<span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
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
					<c:forEach items="realtePosts" var="post" begin="0" end="2">
						<jsp:setProperty name="date" property="time"
							value="${post.publishTime}" />
						<fmt:formatDate value="${date}" type="both" var="publishtime"
							pattern="yyyy年MM月dd日 HH:mm" />
						<div class="col-md-4">
							<div class="post-entry">
								<div class="post-img">
									<a href="#"><img
										src="images/postimages/${post.images[0].imageName}"
										class="img-responsive"
										alt="Free HTML5 Bootstrap Template by GetTemplates.co"></a>
								</div>
								<div class="post-copy">
									<h4>
										<a href="#">${post.tile }</a>
									</h4>
									<a href="#" class="post-meta"><span class="date-posted">${publishtime }</span></a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<%@include file="foot_plugin.jsp"%>
		</footer>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

</body>

</html>
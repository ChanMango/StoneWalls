<%@page contentType="text/html" language="java"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String resourcePath = request.getContextPath();
	String resourceBasePath = resourcePath + "/Person";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>我的动态</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="<%=resourceBasePath%>/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=resourceBasePath%>/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="<%=resourcePath%>/css/bootstrap.min.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="<%=resourceBasePath%>/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="<%=resourceBasePath%>/css/ie8.css" /><![endif]-->
<!-- Scripts -->
<script src="<%=resourcePath%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=resourcePath%>/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=resourceBasePath%>/js/skel.min.js"></script>
<script src="<%=resourceBasePath%>/js/util.js"></script>
<!--[if lte IE 8]><script src="<%=resourceBasePath%>/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=resourceBasePath%>/js/main.js"></script>
</head>
<style type="text/css">
#nav_brand {
	margin-top: -4px !important;
}
</style>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<%@include file="nav_plugin.jsp"%>

		<!-- Main -->
		<div id="main">
			<!-- 最大的Post -->
			<c:forEach var="post" items="${maxPosts }">
				<jsp:setProperty name="date" property="time"
					value="${post.publishTime}" />
				<fmt:formatDate value="${date}" type="both" var="publishtime"
					pattern="yyyy年MM月dd日 HH:mm" />
				<article class="post">
					<header>
						<div class="title">
							<h2>
								<a href="/Detail?pid=${post.pid }">${post.title }</a>
							</h2>
							<p>${post.con_top }</p>
						</div>
						<div class="meta">
							<time class="published" datetime="2015-11-01">${publishtime }</time>
							<a href="#" class="author"><span class="name">${post.author.user.uname }</span><img
								src="<%=resourcePath%>/images/usertx/${post.author.txpic}"
								alt="" /></a>
						</div>
					</header>
					<a href="#" class="image featured"><c:if
							test="${fn:length(post.images)>0 }">
							<img
								src="<%=resourcePath%>/images/postimages/${post.images[0].imageName}"
								alt="" />
						</c:if></a>
					<p>${post.con_center }</p>
					<footer>
						<ul class="actions">
							<li><a href="#" class="button big">阅读更多</a></li>
						</ul>
						<ul class="stats">
							<li><a href="#">${post.topic.typeName }</a></li>
							<li><a href="#" class="icon fa-heart">${post.likeCounts}</a></li>
							<li><a href="#" class="icon fa-comment">${post.readCounts }</a></li>
						</ul>
					</footer>
				</article>
			</c:forEach>
			<!-- Post -->

			<c:if test="${minPosts!=null||maxPosts!=null||minPosts!=null }">
				<!-- Pagination  上下页-->
				<ul class="actions pagination">
					<li><a href="#" class="disabled button big previous">上一页 </a></li>
					<li><a href="#" class="button big next">下一页</a></li>
				</ul>
			</c:if>
			<c:if test="${minPosts==null&&maxPosts==null&&minPosts==null }">
				<div class="row">
					<div class="col-sm-12" style="text-align: center;">
						<h2>没有内容 | 快去收藏一篇吧</h2>
						<img alt="" src="images/uiimages/loader.gif">
					</div>
				</div>
			</c:if>
		</div>

		<!-- Sidebar -->
		<section id="sidebar">

			<!-- Intro -->
			<section id="intro">
				<a href="<%=resourcePath%>/Pshow?uid=<%=user.getId()%>" id="picbtn"><img
					style="width: 100px; height: 100px;"
					class="img-thumbnail img-circle"
					src="<%=resourcePath%>/images/usertx/<%=ui.getTxpic()%>" alt="" /></a>
				<header>
					<h2><%=user.getUname()%></h2>
					<p>
						<%=ui.getSignature()%>
					</p>
				</header>
			</section>

			<!-- Mini Posts -->
			<section>
				<div class="mini-posts">
					<!-- Mini Post  中等列表-->
					<c:forEach var="post" items="${medPosts }">
						<jsp:setProperty name="date" property="time"
							value="${post.publishTime}" />
						<fmt:formatDate value="${date}" type="both" var="publishtime"
							pattern="yyyy年MM月dd日 HH:mm" />
						<!-- Mini Post -->
						<article class="mini-post">
							<header>
								<h3>
									<a href="#">${post.title }</a>
								</h3>
								<time class="published" datetime="2015-10-19">${publishtime }</time>
								<a href="#" class="author"><c:if
										test="${fn:length(post.images)>0 }">
										<img
											src="<%=resourcePath%>/images/postimages/${post.images[0].imageName}"
											alt="" />
									</c:if></a>
							</header>
							<a href="<%=resourcePath%>/Pshow?uid=${post.author.user.id}"
								class="image"><img
								src="<%=resourcePath%>/images/usertx/${post.author.txpic}"
								alt="" /></a>
						</article>
					</c:forEach>
				</div>
			</section>

			<!-- Posts List 小列表-->
			<section>
				<ul class="posts">
					<c:forEach var="post" items="${minPosts }">
						<jsp:setProperty name="date" property="time"
							value="${post.publishTime}" />
						<fmt:formatDate value="${date}" type="both" var="publishtime"
							pattern="yyyy年MM月dd日 HH:mm" />
						<li>
							<article>
								<header>
									<h3>
										<a href="#">${post.title }</a>
									</h3>
									<time class="published" datetime="2015-10-20">${publishtime }</time>
								</header>
								<a href="#" class="image"> <c:if
										test="${fn:length(post.images)>0 }">
										<img
											src="<%=resourcePath%>/images/postimages/${post.images[0].imageName}"
											alt="" />
									</c:if>
								</a>
							</article>
						</li>
					</c:forEach>
				</ul>
			</section>

			<!-- About 左下  关于 版权等-->
			<section class="blurb">
				<h2>About</h2>
				<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus
					nisl. Sed mattis nunc id lorem euismod amet placerat. Vivamus
					porttitor magna enim, ac accumsan tortor cursus at phasellus sed
					ultricies.</p>
				<ul class="actions">
					<li><a href="#" class="button">Learn More</a></li>
				</ul>
			</section>

			<!-- Footer -->
			<!--版权-->
			<section id="footer">
				<!-- 	<ul class="icons">
					<li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="fa-rss"><span class="label">RSS</span></a></li>
					<li><a href="#" class="fa-envelope"><span class="label">Email</span></a></li>
				</ul> -->
				<p class="copyright">
					&copy; Untitled. More Templates <a href="javascript:;"
						target="_blank" title="模板之家">Mango</a>
				</p>
			</section>

		</section>

	</div>




</body>
</html>
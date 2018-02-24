<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String resourcePath = request.getContextPath();
	String resourceBasePath = resourcePath + "/Person";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关注</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Page-Enter"
	content="revealTrans(Duration=2.0,Transition=6)" />
<!--[if lte IE 8]><script src="js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=resourceBasePath%>/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
<!-- Scripts -->
<link rel="stylesheet" type="text/css"
	href="<%=resourcePath%>/css/bootstrap.min.css" />
<script src="<%=resourcePath%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=resourcePath%>/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=resourceBasePath%>/js/skel.min.js"></script>
<script src="<%=resourceBasePath%>/js/util.js"></script>
<!--[if lte IE 8]><script src="js/ie/respond.min.js"></script><![endif]-->
<script src="<%=resourceBasePath%>/js/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=resourcePath%>/css/infocard_style.css">
</head>
<style type="text/css">
#nav_brand {
	margin-top: -1px !important;
}
.container{margin-top: 50px;

}
.nav-item{
min-width: 50%;
font-size: 20px;
text-align: center;
}
</style>
<body>
	<!-- Wrapper -->
	<%@include file="nav_plugin.jsp"%>
	<!-- Main -->
	<div class="container">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item active"><a class="nav-link "
				data-toggle="tab" href="#GZ">我的关注</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#FS">我的粉丝</a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div id="GZ" class="container tab-pane active">
				<br>
				<c:forEach items="${ lovers}" var="lover">
					<div class="single-member effect-3 " id="Pcard">
						<div class="member-image">
							<img
								src="<%=request.getContextPath()  %>/images/usertx/${lover.txpic}"
								alt="Member">
						</div>
						<div class="member-info">
							<h3>${lover.user.uname }</h3>
							<h5>${lover.sex }</h5>
							<p>${lover.signature }</p>
							<div class="social-touch">
								<a href="javaScript:;"
									onclick="cancelLove(this,'${lover.user.id}')"> <span
									class="glyphicon glyphicon-heart"></span>取消关注
								</a> <a href="javascript:;" onclick="sharePeople(this)"><span
									class="glyphicon glyphicon-share"></span>分享</a><br> <br>
								<a href="Pshow?uid=${lover.user.id }"><span
									class="glyphicon glyphicon-share">个人首页</span></a>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:if test="${fn:length(lovers)!=0 }">
					<!-- Pagination  上下页-->
					<ul class="actions pagination">
						<li><a href="#" class="disabled button big previous">上一页
						</a></li>
						<li><a href="#" class="button big next">下一页</a></li>
					</ul>
				</c:if>
				<c:if test="${fn:length(lovers)==0 }">
					<div class="row">
						<div class="col-sm-12" style="text-align: center;">
							<h2>还没有关注谁噢 || 快去关注喜欢的人吧</h2>
							<img alt="" src="images/uiimages/loader.gif">
						</div>
					</div>
				</c:if>
			</div>
			<div id="FS" class="container tab-pane fade">
				<br>
				<c:forEach items="${fans}" var="lover">
					<div class="single-member effect-3 ">
						<div class="member-image">
							<img
								src="<%=request.getContextPath()  %>/images/usertx/${lover.txpic}"
								alt="Member">
						</div>
						<div class="member-info">
							<h3>${lover.user.uname }</h3>
							<h5>${lover.sex }</h5>
							<p>${lover.signature }</p>
							<div class="social-touch">
								<a href="#"> <span class="glyphicon glyphicon-heart"></span>取消关注
								</a> <a href="#"><span class="glyphicon glyphicon-share"></span>分享</a>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:if test="${fn:length(fans)!=0}">
					<!-- Pagination  上下页-->
					<ul class="actions pagination">
						<li><a href="#" class="disabled button big previous">上一页
						</a></li>
						<li><a href="#" class="button big next">下一页</a></li>
					</ul>
				</c:if>
				<c:if test="${fn:length(fans)==0 }">
					<div class="row">
						<div class="col-sm-12" style="text-align: center;">
							<h2>||可怜的小家伙，暂时还没有粉丝呢</h2>
							<img alt="" src="images/uiimages/loader.gif">
						</div>
					</div>
				</c:if>

			</div>

		</div>
	</div>
	<div id="preloader">
		<div id="loader"></div>
	</div>
</body>
</html>
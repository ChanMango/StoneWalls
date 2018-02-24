<%@page import="com.alex.entity.UserInfo"%>
<%@page import="com.alex.entity.User"%>
<%@page pageEncoding="UTF-8"%>
<%
	String sresourcePath = request.getContextPath();
	String sresourceBasePath = sresourcePath + "/Person";
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body>
	<script type="text/javascript">
		$(function() {
			$('#showdialog').click(function() {
				$('#pInfoModal').modal('show');
			});
			$('#showdialog1').click(function() {
				$('#pInfoModal').modal('show');
			});
		});
	</script>
	<%@include file="modal_pinfo.jsp"%>
	<!-- Header -->
	<header id="header">
		<h1 id="nav_brand"
			style="margin-top: -5px; padding-left:; line-height: 50px;">
			<!-- 静态引入其它文件 而其它文件中已经声名变量  此处报错 不影响 -->
			<a href="<%=sresourcePath%>/index">石墙</a>
		</h1>
		<nav class=" navbar-link links ">
			<ul>
				<li><a href="<%=sresourcePath%>/Pshow?uid=${ui.user.id}">个人主页</a></li>
				<li><a href="<%=sresourceBasePath%>/WritePost.jsp">发帖</a></li>
				<li class="active"><a href="<%=sresourcePath%>/Person">我的动态</a></li>
				<li><a href="<%=sresourcePath%>/Collpost">收藏</a></li>
				<li><a href="<%=sresourcePath%>/Lovers">关注</a></li>
				<li><a id="showdialog" href="#">修改信息</a></li>
			</ul>
		</nav>
		<nav class="main">
			<ul>
				<li class="search"><a class="fa-search" href="#search">Search</a>
					<form id="search" method="get" action="#">
						<input type="text" name="query" placeholder="帖子关键字" />
					</form></li>
				<li class="menu"><a class="fa-bars" href="#menu">Menu</a></li>
			</ul>
		</nav>
	</header>

	<!-- Menu -->
	<section id="menu">

		<!-- Search -->
		<section>
			<form class="search" method="get" action="#">
				<input type="text" name="query" placeholder="帖子关键字" />
			</form>
		</section>

		<!-- Links -->
		<section>
			<ul class="links">
				<li><a href="<%=sresourcePath%>/Pshow?uid=${ui.user.id}">
						<h3>个人主页</h3>
						<p>Feugiat tempus veroeros dolor</p>
				</a></li>
				<li><a href="<%=sresourceBasePath%>/WritePost.jsp">
						<h3>发帖</h3>
				</a></li>
				<li><a href="<%=sresourcePath%>/Person">
						<h3>我的动态</h3>
				</a></li>
				<li><a href="<%=sresourcePath%>/Collpost">
						<h3>收藏</h3>
				</a></li>
				<li><a href="<%=sresourcePath%>/Lovers"><h3>关注
						</h3> </a></li>
				<li><a id="showdialog1" href="#"><h3>修改个人信息</h3></a></li>
			</ul>
		</section>

		<!-- Actions -->
		<!--	<section>
								<ul class="actions vertical">
									<li><a href="#" class="button big fit">Log In</a></li>
								</ul>
							</section>-->

	</section>

</body>
</html>

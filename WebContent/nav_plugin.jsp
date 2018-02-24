<!DOCTYPE html>
<%@page import="com.alex.entity.User" language="java"%>
<%@page pageEncoding="UTF-8"%>
<%
	String cpath = request.getContextPath();
%>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<script type="text/javascript">
function changeStatus(obj) {
	alert("into");
	var nowTag = $(obj).parent();
	alert(nowTag);
	nowTag.addClass("active");
	$nowTag.forEach(index, domEle)
	{
		$(domEle).removeClass("active");
	}
}
</script>
<body>
	<%@include file="modal_plugin.jsp"%>
	<%
		User user = (User) session.getAttribute("currUser");
	%>
	<nav class="navbar navbar-collapse navbar-default navbar-fixed-top"
		role="navigation">
		<div class=" container-fluid">
			<div class="  page-scroll  ">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<%=cpath%>/index">石墙</a>
			</div>
			<div>
				<span class="navbar-header"><img style="width: 50px;"
					src="images/uiimages/logo.png"
					class="img-circle img-responsive collapse navbar-collapse"
					width="50"></span>
				<p class="navbar-text collapse navbar-collapse" id="show-username">Wel
					Runoob！！</p>
			</div>
			<div class="collapse navbar-collapse" id="example-navbar-collapse">
				<ul class="nav navbar-nav navbar-left ">
					<li ><a 
						href="<%=cpath%>/index">圈子</a></li>
					<li class="active"><a href="Popular" >热门</a></li>
					<!-- <li>
								<div >
									<form class="navbar-form navbar-left" role="search" style="height: 0px;">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Search" style="height: 42px;">
										</div>
										<button type="submit" class="btn btn-default">搜索</button>
									</form>
								</div>
							</li> -->
				</ul>
				<ul class="nav navbar-nav navbar-right  "
					data-target="#example-navbar-collapse">
					<li><a href="#" id="notice_modal"><span
							class="glyphicon glyphicon-camera">通知</span> </a></li>
					<li class="dropdown"><a href="login.jsp"
						class="dropdown-toggle" data-toggle="dropdown"> <%
 	if (user != null)
 		out.print(user.getUname());
 	else
 		out.print("登陆/注册");
 %> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="Person"><span
									class="glyphicon glyphicon-user"></span>个人中心</a></li>
							<li class="divider"></li>
							<li><a href="Pshow"><span
									class="glyphicon glyphicon-user"></span>个人主页</a></li>
							<li class="divider"></li>
							<li><a href="logout"><span
									class="glyphicon glyphicon-log-out"></span>退出 </a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>

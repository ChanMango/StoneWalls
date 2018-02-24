<%@page import="java.util.Date"%>
<%@page import="com.alex.Utils.DateUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String resourcePath = request.getContextPath();
	String resourceBasePath = resourcePath + "/Person";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发帖</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="<%=resourceBasePath%>/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=resourceBasePath%>/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="<%=resourceBasePath%>/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="<%=resourceBasePath%>/css/ie8.css" /><![endif]-->
<!-- Scripts -->
<link rel="stylesheet" type="text/css"
	href="<%=resourcePath%>/css/bootstrap.min.css" />
<script src="<%=resourcePath%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script>
<script src="<%=resourceBasePath%>/js/bootstrap.min.js"
	type="text/javascript" charset="utf-8"></script>
<script src="<%=resourceBasePath%>/js/skel.min.js"></script>
<script src="<%=resourceBasePath%>/js/util.js"></script>
<!--[if lte IE 8]><script src="<%=resourceBasePath%>/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=resourceBasePath%>/js/main.js"></script>
</head>
<style type="text/css">
#nav_brand {
	margin-top: -1px !important;
}

#file_upload {
	position: absolute;
	overflow: hidden;
	right: 0;
	top: 0;
	opacity: 0;
}

.intor {
	display: inline-block;
}
</style>
<script type="text/javascript">
	$(function() {
	});
	var bindbtnListener = function(obj, mytag) {
		if (mytag == "false") {
			$(obj).parent().siblings("button").show();
			$(obj).parent().siblings("p").css("display", "block");
			$(obj).parent().prop('lastChild').nodeValue = '更换照片';
		}
		$(obj).parent().siblings("button").unbind().click(function() {
			$(this).parent().parent().parent().remove()
		});
	}

	function myfileChange(obj) {
		dataindex = ($('#imagebox').children('div').length);
		var img = obj.parentElement.parentNode.previousElementSibling;
		var file = obj.files[0];
		var mytag = $(obj).attr("mytag");
		if (file) {
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e) {
				//				var img = document.getElementById("img1");
				img.src = e.target.result;
				if (mytag == "false") {
					var figure = $('<div class="col-sm-6 col-md-3 " id="imaitem "><div class="thumbnail "><img src="../images/uiimages/addImage.png"><div class="caption "> <p id="imgDes" style="display: none;">图片描述：若无内容，则忽略排版<input class="form-control" type="text" name="images['+dataindex+'].imageDescribetion"></p><a href = "javascript:;" role = "btn" class = "btn btn-primary"	style = "position: relative; ">  <input id = "file_upload" type = "file" mytag="false"	name = "file"	accept = "image/*" onchange="myfileChange(this)"/>选择图片</a> <button id="imadelbtn " class="btn btn-primary" style="display: none;">删除 </button></div> </div> </div> ');
					figure.appendTo(imagebox);
					$(obj).attr("mytag", "true");
				}
				// 为新元素节点添加事件侦听器
				bindbtnListener(obj, mytag);
			}
		}
	}
</script>

<body>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Header -->
		<%@include file="nav_plugin.jsp"%>
		<!-- Main -->
		<div id="main">
			<!-- Post -->
			<form action="../foren" method="post" enctype="multipart/form-data">
				<article class="post"> <header>
				<div class="meta">
					<time class="published" datetime="2015-11-01"><%=new Date().toLocaleString()%></time>
					<a href="#" class="author"><span class="name"><%=user.getUname()%></span><img
						class="img-thumbnail img-circle"
						src="<%=resourcePath%>/images/usertx/<%=ui.getTxpic()%>" alt="头像" /></a>
				</div>
				<div class="title form-group">
					<h1>
						<input type="text" name="title" class="form-control"
							maxlength="450" placeholder="文章标题">
					</h1>
				</div>
				</header>
				<div class="form-group">
					<label for="p_top"><h5>文头</h5></label>
					<p>
						<textarea name="con_top" id="p_top" style="min-height: 150px"
							placeholder="请输入你要发表的文头内容.  无内容将忽略排版**  文头内容请尽量简短，控制在100字以内"
							class="form-control  "></textarea>
					</p>
				</div>
				<div class="form-group">
					<label for="p_center"><h5>文中</h5></label>
					<p>
						<textarea id="p_center" name="con_center"
							style="min-height: 150px"
							placeholder="请输入你要发表的文中内容. 无内容将忽略排版，可自定义文字的布局方式"
							class="form-control  "></textarea>
					</p>
				</div>
				<div class="form-group">
					<label for="p_buttom"><h5>文尾</h5></label>
					<p>
						<textarea id="p_buttom" name="con_buttom"
							style="min-height: 150px"
							placeholder="请输入你要发表的文尾内容 .  无内容将忽略排版  可自定义文字的布局方式"
							class="form-control  "></textarea>
					</p>
				</div>
				<div class="form-group">
					<p class="help-block">添加图片</p>
				</div>
				<div>
					<div class="row" id="imagebox">
						<div class="col-sm-6 col-md-3 " id="imaitem">
							<div class="thumbnail ">
								<img src="../images/uiimages/addImage.png" id="images" alt=" ">
								<div class="caption ">
									<p id="imgDes" style="display: none;">
										图片描述：若无内容，则忽略排版<input class="form-control" id="imgDes-inp"
											type="text" dataindex="0" name="images[0].imageDescribetion">
									</p>
									<a href="javascript:;" role="btn" class="btn btn-primary"
										style="position: relative;"> <input id="file_upload"
										type="file" name="file" mytag="false" accept="image/*"
										onchange="myfileChange(this)" />选择图片
									</a>
									<button id="imadelbtn " class="btn btn-primary"
										style="display: none;">删除</button>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!--<a href="#" class="image featured"><img  id="ima2" src="images/pic01.jpg" alt="" /></a>-->
				<br />
				<footer>
				<ul class="actions form-group">
					<li><input type="submit" class="btn btn-default" value="发布文章" />
					</li>
				</ul>
				</footer> </article>
			</form>

			<!-- Footer -->
			<!--版权-->
			<section id="footer">
			<ul class="icons">
				<li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a>
				</li>
				<li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a>
				</li>
				<li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a>
				</li>
				<li><a href="#" class="fa-rss"><span class="label">RSS</span></a>
				</li>
				<li><a href="#" class="fa-envelope"><span class="label">Email</span></a>
				</li>
			</ul>
			<p class="copyright">&copy; Mango</p>
			</section>
		</div>
	</div>
</body>

</html>
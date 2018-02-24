<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>出错了</title>
<meta name="keywords"
	content="404 iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<link href="css/error_style.css" rel="stylesheet" type="text/css"
	media="all" />
</head>

<body>
	<!--start-wrap--->
	<div class="wrap">
		<!---start-header---->
		<div class="header">
			<div class="logo">
				<h1>Ohh 出错了，工程师正在抢修中</h1>
			</div>
		</div>
		<!---End-header---->
		<!--start-content------>
		<div class="content">
			<img src="images/error-img.png" title="error" />
			<p>
				<span><label>O</label>hh.....</span>You Requested the page that is
				no longer There.<br />您请求的页面出错了
			</p>
			<a href="<%=request.getContextPath() %>/index">Back To Home/回到主页</a> <br /> <br /> <br /> <br />
			<br /> <br />

		</div>

	</div>
	<!--End-Cotent------>

	</div>
	<center><%@include file="foot_plugin.jsp"%></center>
	<!--End-wrap--->
</body>

</html>
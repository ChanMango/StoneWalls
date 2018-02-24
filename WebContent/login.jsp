<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String resourcePath = request.getContextPath();
%>
<html>
<head>
<title>登录</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Frequent Sign In Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } 






</script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/login-register.css" rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="js/login-register.js"></script>
<link rel="stylesheet" href="css/loign_font-awesome.css">
<!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/login_style.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<!-- //css files -->
<!-- web-fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700"
	rel="stylesheet">
<!-- //web-fonts -->

</head>
<body style="overflow: hidden;">
	<div class="banner-overlay-agileinfo">
		<!--header-->
		<div class="header-w3l">
			<h1>Frequent Sign In Form</h1>
		</div>
		<!--//header-->
		<!--main-->
		<div class="main-w3layouts-agileinfo">
			<!--form-stars-here-->
			<div class="wthree-form">
				<h2>Sign in to your account</h2>
				<form method="post">
					<div class="form-sub-w3">
						<input type="text" name="uname" id="uname" placeholder="Name"
							required="required" />
						<div class="icon-w3">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div>
					</div>
					<div class="form-sub-w3">
						<input type="password" name="upassword" id=upass
							placeholder="Password" required="required" />
						<div class="icon-w3">
							<i class="fa fa-unlock-alt" aria-hidden="true"></i>
						</div>
					</div>
					<p class="forgot-w3ls">
						忘记密码?<a class="" href="#" onclick="openLoginModal();"> 点击这里</a>
					</p>
					<p class="forgot-w3ls1">
						新用户?<a class="" href="#" onclick="openRegisterModal();"> 注册</a>
					</p>
					<div class="clear"></div>
					<div class="submit-agileits">
						<input class="btn  btn-primary" type="button" value="Login"
							onclick="loginAjax();">
					</div>
				</form>

			</div>
			<!--//form-ends-here-->

		</div>
		<!--//main-->
		<!--footer-->
		<div class="footer"
			style="position: relative; bottom: 20px; margin-left: -60px; /*div宽度的一半*/ left: 5%;">
			<div class="col-md-12 ">
				<p>
					<small class="block">&copy; 2017 Free HTML5. All Rights
						Reserved.</small> <small class="block">Designed by <a
						href="JavaScript:;" target="_blank">Mango</a>
					</small>
				</p>
			</div>
		</div>

		<!--//footer-->
	</div>

	<!-- 弹出框 -->
	<div class="modal fade login" id="loginModal">
		<div class="modal-dialog login animated">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Login with</h4>
				</div>
				<div class="modal-body">
					<div class="box">
						<div class="content">
							<div class="social">
								<a class="circle github" href="/auth/github"> <i
									class="fa fa-github fa-fw"></i>
								</a> <a id="google_login" class="circle google"
									href="/auth/google_oauth2"> <i
									class="fa fa-google-plus fa-fw"></i>
								</a> <a id="facebook_login" class="circle facebook"
									href="/auth/facebook"> <i class="fa fa-facebook fa-fw"></i>
								</a>
							</div>
							<div class="division">
								<div class="line l"></div>
								<span>or</span>
								<div class="line r"></div>
							</div>
							<div class="error"></div>
							<div class="form loginBox">
								<form method="post" action="login" accept-charset="UTF-8">
									<input id="loginemail" class="form-control" type="text"
										placeholder="UserName" name="uname"> <input
										id="password" class="form-control" type="password"
										placeholder="Password" name="upassword"> <input
										class="btn btn-default btn-login" type="button" value="Login"
										onclick="">
								</form>
							</div>
						</div>
					</div>
					<div class="box">
						<div class="content registerBox" style="display: none;">
							<div class="form">
								<form method="post"  action="Register"
									accept-charset="UTF-8" id="registerform">
									<input id="signemail" class="form-control" type="text"
										placeholder="UserName" name="uname"> <input id="psw"
										class="form-control" type="password" placeholder="Password"
										name="upassword"> <input id="rpsw"
										class="form-control" type="password"
										placeholder="Repeat Password" name="rupassword_confirmation">
									<input id="email" class="form-control" type="text"
										placeholder="Telephone" name="telphone"> <input
										class="btn btn-default btn-login" type="button" value="sign"
										onclick="registerAjax()">
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class="forgot login-footer">
						<span>Looking to <a href="javascript: showRegisterForm();">create
								an account</a> ?
						</span>
					</div>
					<div class="forgot register-footer" style="display: none">
						<span>Already have an account?</span> <a
							href="javascript: missModal();">登陆</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
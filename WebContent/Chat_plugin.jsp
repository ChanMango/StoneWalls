<%@ page language="java" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- 	<script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"
	charset="utf-8"></script> --%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/chatplugin_styles.css">
<script src="<%=request.getContextPath()%>/js/mycommon.js"></script>
<!--[if IE]>
		<script src="http://cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
	<![endif]-->
</head>
<style>
li a {
	color: #fff;
}
</style>
<body>
	<div id="chatbox">
		<div id="chatview" class="p1">
			<div id="profile">
				<div id="close">
					<div class="cy"></div>
					<div class="cx"></div>
				</div>
				<img
					src="<%=request.getContextPath()%>/images/usertx/${post.author.txpic}" />
				<p>${post.author.user.uname}</p>
				<span>${post.author.email }</span><br>
				<c:if test="${pstatus==false }">
					<li><a href="javascript:"
						onclick="love('<%=request.getContextPath() %>','${post.author.user.id}')"><span
							class="glyphicon glyphicon-heart" id="GZSPAN"
							style="color: #f5f5f5; font-size: 14px;">关 注</span></a></li>
				</c:if>
				<c:if test="${pstatus==true }">
					<li><a href="javascript:"
						onclick="love('<%=request.getContextPath() %>','${post.author.user.id}')"><span
							class="glyphicon glyphicon-heart" id="GZSPAN"
							style="color: rgb(255, 0, 0); font-size: 14px;"> 取消关注</span> </a></li>
				</c:if>
				<a href="Pshow?uid=${post. author.user.id}"
					style="color: #f5f5f5; font-size: 14px;"> <span
					class="glyphicon glyphicon-heart"></span>个人首页   
				</a><a href="javascript:;" onclick="sharePeople(this)"
					style="color: #f5f5f5; font-size: 14px; margin-left: 10px"><span
					class="glyphicon glyphicon-share"></span>分享</a>
			</div>
		</div>
	</div>
	<script>
		$(document)
				.ready(
						function() {
							$('#chatbox').hide();
							$('#userLink')
									.each(
											function() {
												$(this)
														.click(
																function() {
																	$(
																			'#chatbox')
																			.show();
																	var childOffset = $(
																			this)
																			.offset();
																	var parentOffset = $(
																			this)
																			.parent()
																			.parent()
																			.offset();
																	var childTop = childOffset.top
																			- parentOffset.top;
																	var clone = $(
																			'#chatview')
																			.find(
																					'img')
																			.eq(
																					0)
																			.clone();
																	$(
																			'#chatview')
																			.find(
																					'img')
																			.hide();
																	var top = childTop
																			+ 12
																			+ 'px';
																	$(clone)
																			.css(
																					{
																						'top' : top
																					})
																			.addClass(
																					'floatingImg')
																			.appendTo(
																					'#chatbox');
																	setTimeout(
																			function() {
																				$(
																						'#profile p')
																						.addClass(
																								'animate');
																				$(
																						'#profile')
																						.addClass(
																								'animate');
																			},
																			100);
																	setTimeout(
																			function() {
																				$(
																						'#chat-messages')
																						.addClass(
																								'animate');
																				$(
																						'.cx, .cy')
																						.addClass(
																								's1');
																				setTimeout(
																						function() {
																							$(
																									'.cx, .cy')
																									.addClass(
																											's2');
																						},
																						100);
																				setTimeout(
																						function() {
																							$(
																									'.cx, .cy')
																									.addClass(
																											's3');
																						},
																						200);
																			},
																			150);
																	$(
																			'.floatingImg')
																			.animate(
																					{
																						'width' : '68px',
																						'left' : '108px',
																						'top' : '20px'
																					},
																					200);
																	var name = $(
																			this)
																			.find(
																					'p strong')
																			.html();
																	var email = $(
																			this)
																			.find(
																					'p span')
																			.html();
																	$(
																			'#profile p')
																			.html(
																					name);
																	$(
																			'#profile span')
																			.html(
																					email);
																	$(
																			'.message')
																			.not(
																					'.right')
																			.find(
																					'img')
																			.attr(
																					'src',
																					$(
																							clone)
																							.attr(
																									'src'));
																	$(
																			'#friendslist')
																			.fadeOut();
																	$(
																			'#chatview')
																			.fadeIn();
																	$('#close')
																			.unbind(
																					'click')
																			.click(
																					function() {
																						$(
																								'#chat-messages, #profile, #profile p')
																								.removeClass(
																										'animate');
																						$(
																								'.cx, .cy')
																								.removeClass(
																										's1 s2 s3');
																						$(
																								'.floatingImg')
																								.animate(
																										{
																											'width' : '40px',
																											'top' : top,
																											'left' : '12px'
																										},
																										200,
																										function() {
																											$(
																													'.floatingImg')
																													.remove();
																										});
																						setTimeout(
																								function() {
																									$(
																											'#chatview')
																											.fadeOut();
																									$(
																											'#friendslist')
																											.fadeIn();
																								},
																								50);
																						$(
																								'#chatbox')
																								.hide();
																					});
																});
											});
						});
	</script>
</body>

</html>
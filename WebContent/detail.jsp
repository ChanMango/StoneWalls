<%@page contentType="text/html" language="java"%>
<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>帖子详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- 这是评论插件的文件 -->
<link rel="stylesheet" href="css/comment_style.css">
<link rel="stylesheet" href="css/comment.css">
<!-- 这是评论插件的文件 -->
<!-- Bootstrap  -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">
<!-- custom-theme -->
<link href="css/p_style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //custom-theme -->
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<!-- Scrolling Nav JavaScript -->
<script src="js/scrolling-nav.js"></script>
<!-- //fixed-scroll-nav-js -->
<!-- /.modal -->
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Stellar -->
<script src="js/jquery.stellar.min.js"></script>
<script src="js/mycommon.js"></script>
<!-- Main -->
<script src="js/main.js"></script>
<!--这是评论需要的文件-->
<link href='//fonts.googleapis.com/css?family=Oswald:400,300,700'
	rel='stylesheet' type='text/css'>
<link href="css/detail_style.css" rel="stylesheet" type="text/css"
	media="all" />
</head>
<style>
pre {
	background-color: white;
	border: none;
}

#infoArea ul {
	padding-left: 20px;
	width: 100%;
}

#infoArea ul li {
	float: left;
	text-align: center;
	margin: 20px 80px 0px 0px;
	list-style: none;
}

.entry-desc {
	padding: 7px !important;
	margin-bottom: 15px !important;
}

.entry-desc p {
	margin-bottom: 10px !important;
}
</style>
<body>
	<!-- 将long形的时间转换格式 -->
	<jsp:useBean id="date" class="java.util.Date" />
	<jsp:setProperty name="date" property="time"
		value="${post.publishTime}" />
	<fmt:formatDate value="${date}" type="both" var="publishtime"
		pattern="yyyy年MM月dd日 HH:mm" />

	<div class="gtco-loader"></div>

	<div id="page">
		<%@include file="nav_plugin.jsp"%>
		<header id="gtco-header" class="gtco-cover" role="banner"
			style="background-image: url(images/postimages/${post.images[0].imageName});"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-7 text-left">
						<div class="display-t">
							<div class="display-tc animate-box"
								data-animate-effect="fadeInUp">
								<span class="date-post">${publishtime }</span>
								<h1 class="mb30">
									<a href="javascript:void();">${post.title }</a>
								</h1>
								<p>
									<a href="javascript:;" id="userLink" class="text-link"><span
										style="font-size: 17px;"> BY</span> ${post.author.user.uname }</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<div id="gtco-maine">
			<div class="container">
				<div class="row row-pb-md">
					<div class="col-md-12">
						<article class="mt-negative">
							<div class="text-left content-article">
								<div class="row">
									<div class="col-lg-8 cp-r animate-box">
										<p>
										<pre>${post.con_center }</pre>
										</p>

									</div>
									<div class="col-lg-4 animate-box">
										<div class="gtco-highlight right">
											<h4>INFORMATION</h4>
											<p>
											<pre>${post.con_top}</pre>
											</p>
										</div>
									</div>
								</div>

								<%-- 					<div class="row row-pb-sm">
									<div class="col-md-12 animate-box">
										<blockquote>
											<p>
												&ldquo;She packed her seven versalia, put her initial into
												the belt and made herself on the way. When she reached the
												first hills of the Italic Mountains, she had a last view
												back on the skyline of her hometown Bookmarksgrove &rdquo; <cite>&mdash;
													Jean Smith</cite>
											</p>
										</blockquote>
									</div>
								</div> --%>
								<div class="row row-pb-sm">
									<div class="col-lg-6 col-md-12 animate-box">
										<c:forEach items="${post.images}" var="image" begin="0"
											end="1">
											<c:if test="${image!=null}">
												<figure>
													<img src="images/postimages/${image.imageName }"
														alt="Free " class="img-responsive">
													<figcaption>${image.imageDescribetion }</figcaption>
												</figure>
											</c:if>
										</c:forEach>
									</div>
									<div class="col-lg-6 col-md-12 cp-l animate-box">
										<p>
										<pre>${post.con_buttom }</pre>
										</p>
									</div>
								</div>
								<ul id="gtco-post-list">
									<c:forEach items="${post.images }" var="image" begin="2"
										varStatus="vs">
										<c:if test="${vs.index/2==0}">
											<li class="two-third entry animate-box"
												data-animate-effect="fadeIn"><a href="javascript:;">
													<div class="entry-img"
														style="background-image: url('images/postimages/${image.imageName}');"></div>
													<div class="entry-desc">
														<p>${image.imageDescribetion}</p>
													</div>
											</a> <a href="detail.jsp" class="post-meta">Business <span
													class="date-posted">4 days ago</span></a></li>
										</c:if>
										<c:if test="${vs.index/2!=0}">

										</c:if>
										<li class="one-third entry animate-box"
											data-animate-effect="fadeIn"><a href="javascript:;">
												<div class="entry-img"
													style="background-image: url('images/postimages/${image.imageName}');">

												</div>
												<div class="entry-desc">
													<p>${image.imageDescribetion}</p>
												</div>
										</a></li>
									</c:forEach>
								</ul>


								<!--信息模块模块-->
								<div class="row" id="infoArea">
									<ul>
										<li><a href="javascript:;" id="userLink"><span
												class="glyphicon glyphicon-user"
												style="color: rgb(58, 51, 8); font-size: 17px;">
													${author.user.uname}</span></a></li>
										<li><a href="javascript:"><span
												class="glyphicon glyphicon-tags"
												style="color: rgb(58, 51, 8); font-size: 17px;">
													#${post.topic.typeName }#</span></a></li>
										<li><a href="javascript:"><span
												class="glyphicon glyphicon-book"
												style="color: rgb(36, 32, 0); font-size: 17px;">
													浏览${post.readeCounts } </span></a></li>
										<li><a href="javascript:" onclick="Praise('${post.pid}')"><span
												mytag="false" id="likeTag" class="glyphicon glyphicon-heart"
												style="color: rgb(58, 51, 8); font-size: 17px;">
													${post.likeCounts}</span></a></li>
										<c:if test="${status==false }">
											<li><a href="javascript:"
												onclick="likePost('${post.pid}')"><span
													class="glyphicon glyphicon-star-empty" id="collTag"
													style="color: rgb(58, 51, 8); font-size: 17px;"> 收藏</span>
											</a></li>
										</c:if>
										<c:if test="${status==true }">
											<li><a href="javascript:"
												onclick="likePost('${post.pid}')"><span
													class="glyphicon glyphicon-star-empty" id="collTag"
													style="color: rgb(255, 0, 0); font-size: 17px;"> 已收藏</span>
											</a></li>
										</c:if>
									</ul>
								</div>
								
								<div class="commentAll">
									<!--评论区域 begin-->
									<div class="reviewArea clearfix ">
									<form id="hfform" class="from_group">
									<textarea name="content" class="content comment-input"
											placeholder="Please enter a comment&hellip;"
											onkeyup="keyUP(this)"></textarea>
										<a href="javascript:;" class="plBtn">评论</a>
									</form>
										
									</div>
									<!--评论区域 end-->
									<!--回复区域 begin-->
									<div class="comment-show">
									<c:forEach items="${comments}" var="comm">
										<jsp:setProperty name="date" property="time"
											value="${comm.spoketime}" />
										<fmt:formatDate value="${date}" type="both" var="spoketime"
											pattern="yyyy年MM月dd日 HH:mm" />
										<div class="comment-show-con clearfix">
											<div class="comment-show-con-img pull-left">
												<img src="images/usertx/${comm.spokesman.txpic }" alt="">
											</div>
											<div class="comment-show-con-list pull-left clearfix">
												<div class="pl-text clearfix">
													<a href="#" class="comment-size-name">${comm.spokesman.user.uname } : </a> <span
														class="my-pl-con">&nbsp;${comm.content }</span>
												</div>
												<div class="date-dz">
													<span class="date-dz-left pull-left comment-time">${spoketime }</span>
													<div class="date-dz-right pull-right comment-pl-block">
														<a href="javascript:;" class="removeBlock" uidTag="${comm.spokesman.id }" cidTag="${comm.cid }">删除</a> <a
															href="javascript:;"
															class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span
															class="pull-left date-dz-line">|</span> <a
															href="javascript:;" class="date-dz-z pull-left"><i
															class="date-dz-z-click-red"></i>赞 (<i class="z-num">${comm.supportNumber }</i>)</a>
													</div>
												</div>
												<div class="hf-list-con"></div>
											</div>
										</div>
										</c:forEach>
									</div>
									<!--回复区域 end-->
								</div>
							</div>
						</article>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h2 class="related-title animate-box">Related Posts</h2>
					</div>
				</div>
				<div class="row row-pb-md">
					<div class="col-md-12">
						<ul id="gtco-post-list">
							<c:forEach items="${realteposts}" var="rpost" begin="0" end="2">
								<jsp:setProperty name="date" property="time"
									value="${rpost.publishTime}" />
								<fmt:formatDate value="${date}" type="both" var="publishtime"
									pattern="yyyy年MM月dd日 " />
								<li class="one-third animate-box entry"
									data-animate-effect="fadeIn"><a
									href="Detail?pid=${post.pid }">
										<div class="entry-img"
											style="background-image: url('images/postimages/${post.images[0].imageName}');"></div>
										<div class="entry-desc">
											<h3>${rpost.title }</h3>
											<p>${rpost.con_top }</p>
										</div>
								</a> <a href="javascript:;" id="userLink" class="post-meta">${rpost.author.user.uname }
										<span class="date-posted">${publishtime }</span>
								</a></li>
							</c:forEach>
						</ul>
						<div class="row">
							<form action="comment" method="post">
								<div class="col-sm-12"></div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>

		<footer id="gtco-footer" role="contentinfo">
			<footer id="gtco-footer" role="contentinfo">
				<%@include file="foot_plugin.jsp"%>
			</footer>
		</footer>
	</div>
	<%@ include file="Chat_plugin.jsp"%>
	<div class="gototop js-top">
		<a href="javascript:;" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<script type="text/javascript" src="js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        //动态创建评论模块
        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
        	var data;
            $.ajax({
            	type:"post",
              	url:"Reply",
              	async:true,
              	data:{"pid":"${post.pid}","content":oSize,"targetuid":"${post.author.user.id}"},
              	success:function(da){
              		data=da;
              	}
            });
            var comHtml1=$(" <div class='comment-show-con clearfix'><div class='comment-show-con-img pull-left'><img src='images/usertx/${currUser.userInfo.txpic}'alt=''></div>            <div class='comment-show-con-list pull-left clearfix'>                <div class='pl-text clearfix'>                    <a href='#'class='comment-size-name'>${currUser.uname} : </a>                    <span class='my-pl-con'>&nbsp;"+ oSize+"</span></div><div class='date-dz'>                    <span class='date-dz-left pull-left comment-time'>2017-5-2 11:11:39</span>                    <div class='date-dz-right pull-right comment-pl-block'>                        <a href='javascript:;'class='removeBlock'>删除</a>                        <a href='javascript:;'class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a>                        <span class='pull-left date-dz-line'>|</span>                        <a href='javascript:;'class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num'>666</i>)</a>                    </div>               </div>                <div class='hf-list-con'></div>            </div>        </div>");
       	   $(this).parents('.reviewArea ').siblings('.comment-show').append(comHtml1);
            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
        }
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
	
    $('.comment-show').on('click','.pl-hf',function(){
        //获取回复人的名字
        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@'+fhName;
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"><form id="dyhfform"><textarea name="content" class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> </form><a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
                       
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }
    });
<!--评论回复块创建-->
    $('.comment-show').on('click','.hf-pl',function(){
    	var id=$(this).attr("uidTag");
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var  oHfVal= $(this).siblings('form').find('.hf-input').val();
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var uid = $(this).parents('.hf-con').siblings('.date-dz-right').find('.removeBlock').attr("uidTag");
        var oAllVal = '回复@'+oHfName;
        $(this).parent().hide();
        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){
        }else {
        	var data;
          $.ajax({
          	type:"post",
          	url:"Reply",
          	async:true,
        	data:{"pid":"${post.pid}","content":oHfVal,"targetuid":uid},
          	success:function(da){
          		if(da!=null){
          			data=da;
          		}
          	}
          });
          oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="images/usertx/${currUser.userInfo.txpic}"alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">${currUser.uname} </a> <span class="my-pl-con">&nbsp;'+ oHfVal +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block">  <a href="javascript:;" class="removeBlock" cidTag="'+data+'" uidTag="${currUser.id}">删除</a>  <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">0</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
         
			$(oHtml).appendTo(".comment-show");
        }
    });
</script>
<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click','.removeBlock',function(){
    	var id=$(this).attr("uidTag");
    	var cid=$(this).attr("cidTag");
    	if(${currUser.id}!=id){
    		alert("您没有操作权限");
    	}else{
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if(oT.siblings('.all-pl-con').length >= 1){
            oT.remove();
        }else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();
        $.ajax({
        	type:"post",
          	url:"delComment",
          	async:true,
          	data:{"cid":cid},
          	success:function(data){
          		alert(data);
          	}
        	
        });
        
    	} })
</script>
<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>

</html>
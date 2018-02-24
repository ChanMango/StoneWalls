function cancelLove(obj, uid) {
	if (confirm("确定取消关注?")) {
		$.ajax({
			type : "post",
			data : {
				"uid" : uid
			},
			url : "<%=resourcePath%>/cancelLove",
			async : true,
			success : function(data) {
				if (data == "ok") {
					$(obj).parents("div #Pcard").remove();
				}
			}
		});
	}
}
function love(src, uid) {
	alert(src+"     "+uid);
	$.ajax({
		type : "post",
		data : {
			"uid" : uid
		},
		url : src+"/Love",
		async : true,
		success : function(data) {
			if (data == "loved") {
				$('#GZSPAN').html(" 取消关注");
				$('#GZSPAN').css("color", "rgb(255, 0, 0)");
			}else if(data=="cancelLove"){
				$('#GZSPAN').html(" 关注");
				$('#GZSPAN').css("color", "#f5f5f5");
			} else {
				alert(data);
			}
		}
	});
}
function sharePeople() {
	alert("into sharePeople");
}
function toPshow(uid) {
	location.href = "/Pshow?uid=" + uid;
}
function Praise(pid) {
	var mytag = $('#likeTag').attr("mytag");
	$.ajax({
		type : "post",
		url : "Praise",
		data : {
			"pid" : pid,
			'mytag' : mytag
		},
		async : true,
		success : function(data) {
			if (mytag == ("false")) {
				$('#likeTag').attr("mytag", "true");
				$('#likeTag').text(" " + data);
				$('#likeTag').css("color", "rgb(255, 0, 0)");
			} else if (mytag == ("true")) {
				$('#likeTag').attr("mytag", "false");
				$('#likeTag').text(" " + data);
				$('#likeTag').css("color", "rgb(58, 51, 8)");
			}

		}
	});
}
function likePost(pid) {
	$.ajax({
		type : "post",
		url : "Favorite",
		data : {
			"pid" : pid
		},
		async : true,
		success : function(data) {
			if (data == ("keep")) {
				$('#collTag').html(" 已收藏");
				$('#collTag').css("color", "rgb(255, 0, 0)");

			} else if (data == ("cancelkeep")) {
				$('#collTag').html(" 收藏");
				$('#collTag').css("color", "rgb(58, 51, 8)");
			} else {
				alert(data);
			}
		}
	});
}

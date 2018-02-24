<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发帖</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

</head>
<script type="text/javascript">
		function fileChange(base) {
			$("#fileTypeError").html('');
			var fileName = $('#file_upload').val(); //获得文件名称
			var fileType = fileName.substr(fileName.length - 4, fileName.length);//截取文件类型,如(.xls)
			if(fileType == '.jpg' || fileType == '.png' || fileType == 'jpeg') {//验证文件类型,此处验证也可使用正则
				$.ajax({
					url: '../addFile',					　　　　　　　　　　 //上传地址
					type: 'POST',
					cache: false,
					data: new FormData($('#fileuploadForm')[0]), //表单数据
					processData: false,
					contentType: false,
					success: function(data) {
						if(data == 'fileTypeError') {
							$("#fileTypeError").html('*上传文件类型错误,支持类型: .xsl .doc .pdf'); //根据后端返回值,回显错误信息
						}
						$("input[name='enclosureCode']").attr('value', data);
					}
				});
			} else {
				$("#fileTypeError").html('*上传文件类型错误,支持类型: .jpg .jpeg .png');
			}
		}
	</script>

<body>
	<form id="fileuploadForm" enctype="multipart/form-data">
		<!-- 声明文件上传 -->
		<input id="file_upload" type="file" name="pic"
			onchange="fileChange('${base}')" />
		<!-- 定义change事件,选择文件后触发 -->
		<!-- 项目需求字段,非必须 -->
		<br /> <span style="color: red" id="fileTypeError"></span>
		<!-- 文件类型错误回显,此处通过前后端两次验证文件类型 -->
	</form>
</body>

</html>
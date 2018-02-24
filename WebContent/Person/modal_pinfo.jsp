<%@page import="org.apache.commons.logging.impl.Log4JLogger"%>
<%@page import="com.alex.entity.UserInfo"%>
<%@page import="com.alex.entity.User"%>
<%@ page pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<style type="text/css">
#file_upload {
	position: absolute;
	overflow: hidden;
	right: 0;
	top: 0;
	opacity: 0;
}
</style>
<body>
	<%
		User user = (User) session.getAttribute(User.CURRENTUSER);
		UserInfo ui = user.getUserInfo();
		String signature = ui.getSignature();
		if (signature.equals("") || signature == null)
			signature = "请填写你的个性签名";
		String txname = ui.getTxpic();
		String txsrc = request.getContextPath() + "/images/usertx/" + txname;
	%>
	<script type="text/javascript">
		function clickModal() {
			$('#pInfoModal').modal('hide');
			$('#uiform').submit();
		}
		function fileChange(base) {
			$("#fileTypeError").html('');
			var fileName = $(base).val(); //获得文件名称
			var fileType = fileName
					.substr(fileName.length - 4, fileName.length);//截取文件类型,如(.xls)
			if (fileType == '.jpg' || fileType == '.png' || fileType == 'jpeg'
					|| fileType == '.ico' || fileType == '.gif') {//验证文件类型,此处验证也可使用正则
				var file = base.files[0];
				var reader = new FileReader();
				reader.readAsDataURL(file);
				reader.onload = function(e) {
					$("#txpicimg").attr('src', e.target.result);
				}

			} else {
				$("#fileTypeError").html(
						'*上传文件类型错误,支持类型: .jpg .jpeg .png .gif .ico');
			}
		}
	</script>
	</button>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="pInfoModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">个人信息</h4>
				</div>
				<div class="modal-body ">
					<form action="<%=path %>/update" method="post" id="uiform"
						enctype="multipart/form-data">
						<div class="row">
							<div class="col-sm-3">

								<img id="txpicimg" onclick="changPic();" alt="头像"
									style="width: 120px; height: 120px;" src="<%=txsrc%>"
									class=" img-thumbnail img-circle">
								<!-- 	<form id="fileuploadForm" enctype="multipart/form-data"> -->
								<!-- 声明文件上传 -->
								<a href="javascript:;" role="btn" class="btn btn-primary"
									style="position: relative; margin: 10px 20px 0px 20px;">更改头像
									<input id="file_upload" type="file" name="file"
									onchange="fileChange(this)" />
								</a> <br /> <span style="color: red" id="fileTypeError"></span>
								<!-- 文件类型错误回显,此处通过前后端两次验证文件类型 -->
								<!-- </form> -->

							</div>

							<div class="col-sm-9">
								<div class="row">
									<div class="form-group-sm col-sm-4 ">
										<input type="hidden" id="txpic" name="userInfo.txpic"
											value="<%=txname%>"> <label for="name"><h5>用户名</h5></label>
										<input type="text" name="uname" class="form-control"
											placeholder="Mango" value="<%=user.getUname()%>"
											disabled="disabled" />
									</div>
									<div class="form-group-sm col-sm-4 ">
										<label for="email"><h5>邮箱</h5></label> <input type="email"
											name="userInfo.email" class="form-control"
											placeholder="<%if (ui.getEmail() != null && ui.getEmail() != "") {
				out.write(ui.getEmail());
			} else {
				out.write("Email");
			}%>"
											value="<%=ui.getEmail()%>" />
									</div>
									<div class="form-group-sm col-sm-4 ">
										<label for="phone"><h5>电话</h5></label> <input type="text"
											name="telphone" class="form-control"
											placeholder="<%if (user.getTelphone() != null && user.getTelphone() != "") {
				out.write(user.getTelphone());
			} else {
				out.write("186********");
			}%>"
											value="<%=user.getTelphone()%>" />
									</div>
									<div class="form-group-sm col-sm-4 ">
										<label for="sex"><h5>性别</h5></label>
										<div>
											<label class="radio-inline"> <input type="radio"
												name="userInfo.sex" id="optionsRadios3" value="男"
												<%if (ui.getSex().equals("男")) {
				out.write("checked='checked'");
			}%>>男
											</label> <label class="radio-inline"> <input type="radio"
												name="userInfo.sex" id="optionsRadios4" value="女"
												<%if (ui.getSex().equals("女")) {
				out.write("checked='checked'");
			}%>>
												女
											</label>
										</div>
									</div>
									<div class="form-group-sm col-sm-4 ">
										<label for="address"><h5>现居地</h5></label> <input type="text"
											name="userInfo.address" class="form-control"
											placeholder="<%if (ui.getAddress() != null && ui.getAddress() != "")
				out.write(ui.getAddress());
			else
				out.write("**市");%>"
											value="<%if (!ui.getAddress().equals("**市"))
				out.write(ui.getAddress());%>" />
									</div>
									<div class="form-group-sm col-sm-4 ">
										<label for="address"><h5>职业</h5></label> <input type="text"
											name="userInfo.job" class="form-control"
											placeholder="<%if (ui.getJob() != null && ui.getJob() != "")
				out.write(ui.getJob());
			else
				out.write("----");%>"
											value="<%if (!ui.getJob().equals("----"))
				out.write(ui.getJob());%>" />
									</div>
									<div class="form-group-sm col-sm-4">
										<label for="age"><h5>年龄</h5></label> <select
											name="userInfo.age" class="form-control">
											<option value="0">请选择</option>
											<%
												int age = ui.getAge();//user.getUserInfo().getAge();
												for (int i = 14; i <= 100; i++) {
													if (age == i) {
											%>
											<option value="<%=age%>" selected="selected"><%=age%></option>
											<%
												} else {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
												}
											%>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 10px;">
							<div class="form-group-sm col-sm-12">
								<label for="signature"><h5>个性签名</h5></label>
								<textarea name="userInfo.signature" class="form-control"
									style="height: 80px;"><%=signature%></textarea>
							</div>
						</div>
						<div class="row" style="margin-top: 10px;">
							<div class="form-group-sm col-sm-12">
								<label for="signature"><h5>简介</h5></label>
								<textarea name="userInfo.intro" class="form-control"
									style="height: 80px;"><%=ui.getIntro()%></textarea>
							</div>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="clickModal()">提交更改</button>
				</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
</html>
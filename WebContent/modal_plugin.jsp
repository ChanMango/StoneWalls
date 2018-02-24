<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script type="text/javascript">
		$(function() {
			$('#notice_modal').click(function() {
				$('#loginbox').modal('show');
			});
			$('#sign-btn').click(function() {
				$(location).prop('href', 'sign.html');
			});
			$('#notice_btn').click(function() {
				$('.popover-hide').popover('show');
				setInterval(function function_name() {
					$('.popover-hide').popover('hide');
				}, 3000);
			});
		});
	</script>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="loginbox" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="width: 60%;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">通知</h4>
				</div>
				<div class="modal-body">
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> 点击我进行展开，再次点击我进行折叠。第 1 部分--hide 方法 </a>
								</h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">Nihil anim keffiyeh helvetica,
									craft beer labore wes anderson cred nesciunt sapiente ea
									proident. Ad vegan excepteur butcher vice lomo.</div>
							</div>
						</div>
						<div class="panel panel-success">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseTwo"> 点击我进行展开，再次点击我进行折叠。第 2 部分--show 方法 </a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">Nihil anim keffiyeh helvetica,
									craft beer labore wes anderson cred nesciunt sapiente ea
									proident. Ad vegan excepteur butcher vice lomo.</div>
							</div>
						</div>
						<div class="panel panel-info">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseThree"> 点击我进行展开，再次点击我进行折叠。第 3 部分--toggle 方法
									</a>
								</h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">Nihil anim keffiyeh helvetica,
									craft beer labore wes anderson cred nesciunt sapiente ea
									proident. Ad vegan excepteur butcher vice lomo.</div>
							</div>
						</div>
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseFour"> 点击我进行展开，再次点击我进行折叠。第 4 部分--options 方法
									</a>
								</h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">Nihil anim keffiyeh helvetica,
									craft beer labore wes anderson cred nesciunt sapiente ea
									proident. Ad vegan excepteur butcher vice lomo.</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- /.modal-content -->
</body>

</html>
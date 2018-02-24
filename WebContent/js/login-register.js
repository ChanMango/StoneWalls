function showRegisterForm() {
	$('.loginBox').fadeOut('fast', function() {
		$('.registerBox').fadeIn('fast');
		$('.login-footer').fadeOut('fast', function() {
			$('.register-footer').fadeIn('fast');
		});
		$('.modal-title').html('注册');
	});
	$('.error').removeClass('alert alert-danger').html('');

}
function showLoginForm() {
	$('#loginModal .registerBox').fadeOut('fast', function() {
		$('.loginBox').fadeIn('fast');
		$('.register-footer').fadeOut('fast', function() {
			$('.login-footer').fadeIn('fast');
		});
		$('.modal-title').html('忘记密码');
	});
	$('.error').removeClass('alert alert-danger').html('');
}

function openLoginModal() {
	showLoginForm();
	setTimeout(function() {
		$('#loginModal').modal('show');
	}, 230);

}
function openRegisterModal() {
	showRegisterForm();
	setTimeout(function() {
		$('#loginModal').modal('show');
	}, 230);

}
function loginAjax() {
	var username = $('#uname').val();
	var psw = $('#upass').val();
	$.ajax({
		type : "post",
		url : "login",
		data : {
			"uname" : username,
			"upassword" : psw
		},
		async : true,
		success : function(data) {
			if (data=="success") {
				  location.href="index";
			} else {
				alert("用户名 或 密码错误,请重新输入");
			}
		}
	});
}
function registerAjax() {
	/* Remove this comments when moving to server */
	var rpsw = $('#registerform').find($('#rpsw')).val();
	var psw = $('#registerform').find($('#psw')).val();
	if (psw != rpsw) {
		shakeModal();
	} else {

		$('#registerform').submit();
		$('#loginModal').modal('hide');
		console.log(psw + "--" + rpsw);
		// window.location.replace("/index");
	}
}

function shakeModal(str) {
	$('#loginModal .modal-dialog').addClass('shake');
	$('.error').addClass('alert alert-danger').html("你输入的密码不一致");
	$('input[type="password"]').val('');
	setTimeout(function() {
		$('#loginModal .modal-dialog').removeClass('shake');
	}, 1000);
}
function missModal() {
	$('#loginModal').modal('hide');
}
function check() {
	var password = $('#registerform password_confirmation').val();
	var rpassword = $('#registerform passwrod').val();
	if (password != rpassword) {
		alert("密码不一致");
		return false;
	}
	return true;
}

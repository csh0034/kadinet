$(document).ready(function() {
	$('#loginForm').submit(function() {
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'checkLogin',
				id : $('#id').val(),
				pw : $('#pw').val()
			},
			success : function(data) {
				if (data == '-1') {
					alert('아이디 또는 비밀번호를 다시 확인하세요');
				} else if (data == '1') {
					alert('가입승인 대기 중입니다');
				} else if (data == '0' || data == '2') {
					location.href = '/index.do';
				} else if (data == '3') {
					alert('탈퇴회원 입니다');
				}
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		});

		return false;
	});
});
$(document).ready(function() {
	$('#loginForm').submit(function() {
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'loginCheck',
				id : $('#id').val(),
				pw : $('#pw').val()

			},
			success : function(data) {
				if (data == 'true') {
					location.href='/index.do';
				} else if(data == 'false'){
					alert('아이디 또는 비밀번호를 다시 확인하세요');
				}
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		});
		
		return false;
	});
});
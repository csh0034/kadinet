$(document).ready(function() {
	$('#leaveForm').submit(function() {
		if ($('#check').is(':checked') == false) {
			$('#txt_error').html('탈퇴약관 안내에 동의해주세요');
			$('#txt_error').css('display', 'block');
			return false;
		} else {
			if (confirm('탈퇴 하시겠습니까?')) {
				$.ajax({
					url : '/ajax',
					type : 'post',
					dataType : 'text',
					data : {
						method : 'leaveUser',
						pw: $('.pw').val()
					},
					success : function(data) {
						if(data == 0){
							$('#txt_error').html('비밀번호가 일치하지 않습니다');
							$('#txt_error').css('display', 'block');
						} else {
							location.href='/index.do';
						}
					},
					error : function(xhr, status) {
						alert('잠시 후 다시 시도해주세요');
					}
				});
				return false;
			} else {
				return false;
			}
		}
	});
});
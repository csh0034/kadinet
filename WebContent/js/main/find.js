var idFlag = 'false';

$(document).ready(function() {
	$('input').focus(function() {
		$(this).parents('dl').addClass('on');
	});

	$('input').blur(function() {
		$(this).parents('dl').removeClass('on');
	});

	$('#searchAddr').click(function() {
		sample6_execDaumPostcode()
	});

	$('#u_id').focus(function() {
		idFlag = 'false';
		$('#idError').css('display', 'none');
	});
	$('#findId').click(function() {
		var u_name = $('#u_name').val();
		var u_phone = $('#u_phone').val();

		if (confirm("등록 하시겠습니까?")) {
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'findId',
					u_name : u_name,
					u_phone : u_phone
				},
				success : function(data) {
					alert('입력하신 정보와 일치하는 아이디는 ㅁㅁㅁ입니다');
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			});
		}
	});
});

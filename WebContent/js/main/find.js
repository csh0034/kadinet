$(document).ready(function() {
	$('input').focus(function() {
		$(this).parents('dl').addClass('on');
	});

	$('input').blur(function() {
		$(this).parents('dl').removeClass('on');
	});

	$('#frm').submit(function() {
		var name = $('#id_find_name').val();
		var phone = $('#id_find_phone').val();

		if (confirm('찾기를 하시겠습니까')) {
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'findId',
					name : name,
					phone : phone
				},
				success : function(data) {
					if (data == 'x') {
						alert('검색된 정보가 없습니다');
					} else if (data == 'leave') {
						alert('탈퇴회원 입니다');
					} else {
						$(".__pop-basic2").fadeIn();
						$("#findid_pop").fadeIn();
						wrapWindowByMask2();
					}
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			});
		}
		return false;
	});

	$('#frm2').submit(function() {
		var id = $('#pw_find_id').val();
		var name = $('#pw_find_name').val();
		var phone = $('#pw_find_phone').val();

		if (confirm('찾기를 하시겠습니까')) {
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'findPw',
					id : id,
					name : name,
					phone : phone
				},
				success : function(data) {
					if (data == '0') {
						alert('검색된 정보가 없습니다');
					} else {
						$(".__pop-basic2").fadeIn();
						$("#findpw_pop").fadeIn();
						wrapWindowByMask2();
					}
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			});
		}
		return false;
	});
});

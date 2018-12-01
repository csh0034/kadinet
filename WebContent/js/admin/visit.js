$(document).ready(function() {
	$('#updateVSubmit').click(function() {
		var visit_x = $('#visit_x').val();
		var visit_y = $('#visit_y').val();
		var address = $('#visit_add').val();
		var phone = $('#visit_phone').val();
		var fax = $('#visit_fax').val();
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'updateVisit',
				visit_x : visit_x,
				visit_y : visit_y,
				address : address,
				phone : phone,
				fax : fax
			},
			success : function(data) {
				alert('정보가 수정되었습니다');
				location.reload();
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	});
});
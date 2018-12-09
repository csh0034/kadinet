$(document).ready(function() {
	$('#updateVSubmit').click(function() {
		if(confirm('수정 하시겠습니까?')){
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
					location.reload();
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			})
		}
	});
});
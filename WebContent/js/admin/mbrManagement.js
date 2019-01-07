$(document).ready(function() {
	$('.btn.btn-danger').click(function() {
		var user_id = $(this).attr("id");
		if (confirm('삭제 하시겠습니까?')) {
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'deleteMbrList',
					id : user_id
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

function setAuthority(id, authority) {
	if (confirm("변경 하시겠습니까?")) {
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'recognizeMbrList',
				id : id,
				authority : authority
			},
			success : function(data) {
				location.reload();
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		});
	}
}
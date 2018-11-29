
$(document).ready(function() {
	$('.btn.btn-danger').click(function() {
		var history_no = $(this).attr("id");

		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'deleteHistory',
				id : history_no
			},
			success : function(data) {
				alert('게시글을 삭제하였습니다');
				window.location.href="/admin/intro/history.do";
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	});
});
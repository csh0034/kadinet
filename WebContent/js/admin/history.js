$(document).ready(function() {
	$('.btn.btn-danger').click(function() {
		var history_no = $(this).attr("id");
		var con = confirm("정말 삭제하시겠습니까?");
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'deleteHistory',
				id : history_no
			},
			success : function(data) {
				if(con==true){
				alert('게시글을 삭제하였습니다');
				location.reload();
				}
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	});
});
$(document).ready(function() {
	$('.btn.btn-danger').click(function() {
		var user_id = $(this).attr("id");
		var con = confirm("정말 삭제하시겠습니까?");
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'deleteMbrList',
				id : user_id
			},
			success : function(data) {
				if(con==true){
				alert('유저 정보를 삭제하였습니다');
				location.reload();
				}
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	});
	$('.btn.btn-primary').click(function() {
		var user_id = $(this).attr("id");
		var con = confirm("승인하시겠습니까?");
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'recognizeMbrList',
				id : user_id
			},
			success : function(data) {
				if(con==true){
				location.reload();
				}
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	});
});
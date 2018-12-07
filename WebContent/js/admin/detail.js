$(function() {
	$("#move").click(function(){
		$(".popUp").fadeIn();
		$(".pop_bk").fadeIn();
	});
		
	$(".pop_close").click(function(){
		$(".popUp").fadeOut();
		$(".pop_bk").fadeOut();
	});
});

function deleteNotice(no, menu, img) {
	if (confirm('삭제 하시겠습니까?')) {
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'deleteNotice',
				no : no,
				img : img
			},
			success : function(data) {
				location.href = '/admin/notice/' + menu + '/list.do';
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	}
}

function updateNotice(no, menu) {
	location.href = '/admin/notice/edit.do?menu=' + menu + '&mode=update&no='+ no;
}
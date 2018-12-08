function deleteMember(no,img) {
	if (confirm('삭제 하시겠습니까?')) {
		$.ajax({
			url : '/ajax',
			type : 'post',
			dataType : 'text',
			data : {
				method : 'deleteMember',
				no : no,
				img : img
			},
			success : function(data) {
				location.href = '/admin/intro/member.do';
			},
			error : function(xhr, status) {
				alert('잠시 후 다시 시도해주세요');
			}
		})
	}
}
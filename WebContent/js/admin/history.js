$(document).ready(function() {
	$('.btn.btn-danger').click(function() {
		var history_no = $(this).attr("id");
		if(confirm("삭제 하시겠습니까?")){
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'deleteHistory',
					id : history_no
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
	
	$('#input_form').submit(function() {
		var history_year = $('#history_year').val();
		var history_month = $('#history_month').val();
		var history_day = $('#history_day').val();
		var history_data = $('#history_data').val();
		
		if(confirm("등록 하시겠습니까?")){
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'addHistory',
					year : history_year,
					month : history_month,
					day : history_day,
					data : history_data,
				},
				success : function(data) {
					location.reload();
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			});
		}
		
		return false;
	});
});
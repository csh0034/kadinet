$(document).ready(function() {
	$('#leaveForm').submit(function() {
		if($('#check').is(':checked') == false){
			$('#txt_error').css('display','block');
			return false;
		} else {
			if(confirm('탈퇴 하시겠습니까?')){
				return false;
			} else {
				return false;
			}
		}
	});
});
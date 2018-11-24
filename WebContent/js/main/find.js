var idFlag = 'false';

$(document).ready(function() {
	$('input').focus(function() {
		$(this).parents('dl').addClass('on');
	});

	$('input').blur(function() {
		$(this).parents('dl').removeClass('on');
	});

	$('#searchAddr').click(function() {
		sample6_execDaumPostcode()
	});

	$('#u_id').focus(function() {
		idFlag = 'false';
		$('#idError').css('display', 'none');
	});

});

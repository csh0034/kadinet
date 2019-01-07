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

});

function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddr = '';
			var extraAddr = '';

			if (data.userSelectedType === 'R') {
				fullAddr = data.roadAddress;

			} else {
				fullAddr = data.jibunAddress;
			}
			if (data.userSelectedType === 'R') {
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}
			document.getElementById('u_addr1').value = data.zonecode;
			document.getElementById('u_addr1').value = '(' + data.zonecode
					+ ') ' + fullAddr;
			document.getElementById('u_addr2').focus();
			$('#addr1Error').css("display", "none");
			$('#u_addr1').css("background-color", "#dff0d8");
			$('#u_addr1').css("color", "#468847");
			$('#u_addr1').css("border", "1px solid #D6E9C6");
		}
	}).open();
}
$(document).ready(function() {
	$('input').focus(function() {
		$(this).parents('dl').addClass('on');
	});

	$('input').blur(function() {
		$(this).parents('dl').removeClass('on');
	});
	
	$('#searchAddr').click(function(){
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

			// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다.
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}

			document.getElementById('u_addr1').value = data.zonecode;
			
			document.getElementById('u_addr1').value = '('+data.zonecode + ') '+ fullAddr;

			document.getElementById('u_addr2').focus();
		}
	}).open();
}

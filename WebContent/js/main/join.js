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

	$('#u_id').blur(function() {
		var reg = /^(?=.*[a-zA-Z])(?=.*[0-9]).{5,20}$/;
		var id = $(this).val();

		id = id.replace(/\s/g, '');
		$(this).val(id);

		if (!reg.test(id)) {
			$('#idError').css('display', 'inline-block');
			$('#idError').html('입력하신 내용이 올바르지 않습니다.');
		} else {
			$.ajax({
				url : '/ajax',
				type : 'post',
				dataType : 'text',
				data : {
					method : 'checkId',
					id : id
				},
				success : function(data) {
					if (data == 'false') {
						$('#idError').css('display', 'inline-block');
						$('#idError').html('이미 사용중인 아이디입니다.');
					} else if ( data =='true'){
						idFlag = 'true';
					}
				},
				error : function(xhr, status) {
					alert('잠시 후 다시 시도해주세요');
				}
			});
		}

	});

	$('#frm').submit(function() {
		var id = $('#u_id').val();
		id = id.replace(/\s/g, '');
		
		if (id.length == 0) {
			$('#idError').html('아이디 입력해주세요.');
			$('#idError').css('display', 'inline-block');
			return false;
		} else if (idFlag == 'false') {
			$('#idError').css('display', 'inline-block');
			return false;
		}
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
			$('#addr1Error').css("display","none");
			$('#u_addr1').css("background-color","#dff0d8");
			$('#u_addr1').css("color","#468847");
			$('#u_addr1').css("border","1px solid #D6E9C6");
		}
	}).open();
}
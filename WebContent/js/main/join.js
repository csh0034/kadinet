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

			document.getElementById('u_addr1').value = '(' + data.zonecode
					+ ') ' + fullAddr;

			document.getElementById('u_addr2').focus();
		}
	}).open();
}
/*
 * function CheckPassWord(userId, userPw, userPwRe) {
 * 
 * if (userPw.value != userPwRe.value) { alert("입력하신 비밀번호와 비밀번호 확인 값이 일치하지
 * 않습니다."); return false; }
 * 
 * if (userPw.value.length < 8) { alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 8자 이상으로
 * 입력해주세요."); return false; }
 * 
 * if (!userPw.value .match(/[a-zA-Z0-9]*[^a-zA-Z0-9\n]+[a-zA-Z0-9]*$/)) {
 * alert("비밀번호는 영문, 숫자, 특수문자의 조합으로 8자 이상으로 입력해주세요."); return false; }
 * 
 * if (userPw.value.indexOf(userId.value) > -1) { alert("비밀번호에 아이디를 사용할 수
 * 없습니다."); return false; }
 * 
 * var SamePass_0 = 0; // 동일문자 카운트 var SamePass_1 = 0; // 연속성(+) 카운드 var
 * SamePass_2 = 0; // 연속성(-) 카운드
 * 
 * var chr_pass_0; var chr_pass_1; var chr_pass_2;
 * 
 * for (var i = 0; i < userPw.value.length; i++) { chr_pass_0 =
 * userPw.value.charAt(i); chr_pass_1 = userPw.value.charAt(i + 1); // 동일문자 카운트
 * if (chr_pass_0 == chr_pass_1) { SamePass_0 = SamePass_0 + 1 }
 * 
 * chr_pass_2 = userPw.value.charAt(i + 2); // 연속성(+) 카운드
 * 
 * if (chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == 1 &&
 * chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == 1) { SamePass_1 =
 * SamePass_1 + 1 } // 연속성(-) 카운드 if (chr_pass_0.charCodeAt(0) -
 * chr_pass_1.charCodeAt(0) == -1 && chr_pass_1.charCodeAt(0) -
 * chr_pass_2.charCodeAt(0) == -1) { SamePass_2 = SamePass_2 + 1 } } if
 * (SamePass_0 > 1) { alert("동일문자를 3번 이상 사용할 수 없습니다."); return false; }
 * 
 * if (SamePass_1 > 1 || SamePass_2 > 1) { alert("연속된 문자열(123 또는 321, abc, cba
 * 등)을\n 3자 이상 사용 할 수 없습니다."); return false; } return true; }
 */

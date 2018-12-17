<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/include/global/meta.jsp"%>
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/global/css.jsp"%>
<%@ include file="/WEB-INF/include/main/css.jsp"%>
<%@ include file="/WEB-INF/include/global/js.jsp"%>
<%@ include file="/WEB-INF/include/main/js.jsp"%>
<script type="text/javascript" src="/js/main/leave.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="menu_img mbr_menu_img">
			<b>회원사</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">회원탈퇴</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="leave_bx">
							<div class="condition_box">
								<span> KADINET 회원(이하 "회원")을 탈퇴하기 전에 반드시 읽어 주십시오.<br />
								<br /> 본 약관은 KADINET 주식회사(이하 “당사”)가<br /> KADINET 회원(이하 “회원”)의 탈퇴에 관한 모든 조건을 규정한 것입니다.<br />
									회원탈퇴를 하실 경우에는 아래의 내용에 동의하신 것으로 간주됩니다.<br />
								<br /> 탈퇴 후에는 당사가 운영하는 모든 웹사이트(이하 “KADINET 사이트”)에서 제공하는<br /> 회원 대상 서비스를 이용하실 수 없습니다.<br />
								<br /> 회원 탈퇴 수속이 수리된 후에 회원정보에 대해서는 모두 삭제처리하게 됩니다.<br />
								</span>
							</div>
							<form id="leaveForm">
								<div class="con_check">
									<input type="checkbox" name="chk_info" value="leave_ok" id="check"> <label
										for="check"> 위 약관에 동의합니다.</label>
								</div>
								<div class="form_wrap">
									<input type="password" id="pw" maxlength="45" title="비밀번호" placeholder="비밀번호" class="inp pw"
										required>
									<div class="btn_area">
										<button type="submit" class="leave_btn">탈퇴하기</button>
									</div>
									<div id="txt_error">
										탈퇴약관 안내에 동의해주세요.
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>
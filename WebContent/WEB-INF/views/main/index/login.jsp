<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="/js/main/login.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="menu_img index_menu_img">
			<b>회원</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">로그인</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="login_bx">
							<div class="form_wrap">
								<form id="loginForm">
									<input type="text" id="id" maxlength="45" title="아이디"
										placeholder="아이디" class="inp" required> <input
										type="password" id="pw" maxlength="45" title="비밀번호"
										placeholder="비밀번호" class="inp" required>
									<div class="btn_area">
										<button type="submit" class="login_btn">로그인</button>
									</div>
									<div class="signup_area">
										<span class="signup_text">계정이 없으신가요?</span> <a href="/join.do"
											class="signup_btn">회원가입</a><br> <span
											class="signup_text">계정을 잊으셨나요?</span> <a href="/find.do"
											class="signup_btn">ID/PW 찾기</a><br>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>
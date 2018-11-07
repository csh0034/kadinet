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
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="login_menu_img">
			<b>로그인</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="login_form">
						<div class="login_bx">
							<h1>환영합니다</h1>
							<input type="text" name="id" maxlength="45" title="아이디" placeholder="아이디" class="inp">
							<input type="password" name="pw" maxlength="45" title="비밀번호" placeholder="비밀번호" class="inp">
							<label class="idSave">
								<span class="ico_checkbox"></span>
								<span class="label_text">아이디 저장</span>
							</label>
							<div class="btn_area">
								<button type="submit" class="login_btn">로그인</button>
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
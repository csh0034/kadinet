<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="/js/main/join.js"></script>
<script type="text/javascript" src="/js/main/parsley.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/main/parsley.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/main/header.jsp"%>
	<section class="wrap">
		<div class="login_menu_img">
			<b>회원</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">회원가입</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="join_bx">
							<div class="joinform_wrap">
								<form action="joinProc.do" onsubmit="return CheckPassWord(u_id,u_pw,u_pwre);" method="post" data-parsley-validate>
									<div class="join_tit">
										<p>&gt; 정보입력</p>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_id">아이디</label>
											</dt>
											<dd>
												<input type="text" name="u_id" id="u_id" value="" placeholder="5~20자리 영문, 숫자만 사용 가능합니다" pattern="^[a-zA-Z0-9]{5,20}$" required />
											</dd>
										</dl>
									</div>
									<div class="item mb2">
										<dl class="line-half1">
											<dt>
												<label for="u_pw">비밀번호</label>
											</dt>
											<dd>
												<input type="password" name="u_pw" id="u_pw" value="" placeholder="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$"  required />
											</dd>
										</dl>
										<dl class="line-half2">
											<dt>
												<label for="u_pwre">비밀번호 확인</label>
											</dt>
											<dd>
												<input type="password" name="u_pwre" id="u_pwre" value="" placeholder="비밀번호 재입력" data-parsley-equalto="#u_pw" pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,20}$" required />
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_name">이름</label>
											</dt>
											<dd>
												<input type="text" name="u_name" id="u_name" value="" placeholder="영문 , 한글만 사용 가능" pattern="^[가-힣a-zA-Z].{1,30}$" required />
											</dd>
										</dl>
									</div>
									<div class="item mb2">
										<dl class="line-full">
											<dt>
												<label for="u_phone">휴대폰</label>
											</dt>
											<dd>
												<input type="text" name="u_phone" id="u_phone" value="" placeholder="숫자만 입력" pattern="^\d{4} \d{4} \d{4}$" required />
											</dd>
										</dl>
									</div>
									<div class="item mb2">
										<dl class="line-full">
											<dt>
												<input type="button" id="searchAddr" value="우편번호 검색 ">
											</dt>
											<dd>
												<input type="text" name="u_addr1" id="u_addr1" placeholder="우편번호 검색" readonly required />
											</dd>
										</dl>
										<dl class="line-full">
											<dt>
												<label for="u_addr2">상세주소</label>
											</dt>
											<dd>
												<input type="text" name="u_addr2" id="u_addr2" required />
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_email">이메일</label>
											</dt>
											<dd>
												<input type="text" name="u_email" id="u_email" placeholder="ex) abc123@naver.com" required data-parsley-type="email" data-parsley-trigger="change"/>
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-half1">
											<dt>
												<label for="u_email_receive">이메일 수신여부</label>
											</dt>
											<dd>
												<input type="radio" name="u_email_receive" value="O" class="inp_radio" checked
													id="emailO" /><label for="emailO" style="margin-right: 15px">수신</label> <input
													type="radio" name="u_email_receive" value="X" class="inp_radio" id="emailX" /><label
													for="emailX">수신안함</label>
											</dd>
										</dl>
										<dl class="line-half2">
											<dt>
												<label for="u_sms_receive">SMS 수신여부</label>
											</dt>
											<dd>
												<input type="radio" name="u_sms_receive" value="O" class="inp_radio" checked id="smsO" /><label
													for="smsO" style="margin-right: 15px">수신</label> <input type="radio"
													name="u_sms_receive" value="X" class="inp_radio" id="smsX" /><label for="smsX">수신안함</label>
											</dd>
										</dl>
									</div>
									<div class="item" style="text-align: center;">
										<input type="submit" value="회원가입" class="join_btn" />
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
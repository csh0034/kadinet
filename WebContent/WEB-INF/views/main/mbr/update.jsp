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
						<h3 class="location">정보수정</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="join_bx">
							<div class="joinform_wrap">
								<form action="joinProc.do" method="post" id="frm" data-parsley-validate>
									<div class="join_tit">
										<p>&gt; 정보수정</p>
									</div>
									<div class="item">
										<dl class="line-full on">
											<dt>
												<label for="u_id">아이디</label>
											</dt>
											<dd>
												user01
											</dd>
										</dl>
										<span id="idError" class="errorArea"></span>
									</div>
									<div class="item mb2">
										<dl class="line-half1">
											<dt>
												<label for="u_pw">비밀번호</label>
											</dt>
											<dd>
												<input type="password" name="u_pw" id="u_pw" value=""
													pattern="(?=.*\d)(?=.*[a-z])(?=.*[~`!@#$%\\^&*()\-]).{5,20}"
													required data-parsley-required="true"
													data-parsley-trigger="change" required
													data-parsley-errors-container="span[id='pwError']" />
											</dd>
										</dl>
										<span id="pwError" class="errorArea"></span>
										<dl class="line-half2">
											<dt>
												<label for="u_pwre">비밀번호 확인</label>
											</dt>
											<dd>
												<input type="password" name="u_pwre" id="u_pwre" value=""
													placeholder="비밀번호 재입력"
													pattern="(?=.*\d)(?=.*[a-z])(?=.*[~`!@#$%\\^&*()\-]).{5,20}"
													data-parsley-equalto="#u_pw" required
													data-parsley-required="true" data-parsley-trigger="change"
													required
													data-parsley-errors-container="span[id='pwreError']" />
											</dd>
										</dl>
										<span id="pwreError" class="errorArea"></span>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_name">이름</label>
											</dt>
											<dd>
												홍길동
											</dd>
										</dl>
										<span id="nameError" class="errorArea"></span>
									</div>
									<div class="item mb2">
										<dl class="line-full">
											<dt>
												<label for="u_phone">휴대폰</label>
											</dt>
											<dd>
												<input type="text" name="u_phone" id="u_phone" value=""
													placeholder="숫자만 입력" data-parsley-type="digits"
													data-parsley-required="true" data-parsley-trigger="change"
													required
													data-parsley-errors-container="span[id='phoneError']" />
											</dd>
										</dl>
										<span id="phoneError" class="errorArea"></span>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<input type="button" id="searchAddr" value="우편번호 검색 ">
											</dt>
											<dd>
												<input type="text" name="u_addr1" id="u_addr1"
													placeholder="우편번호 검색" readonly required
													data-parsley-required="true" 
													data-parsley-errors-container="span[id='addr1Error']" />
											</dd>
										</dl>
										<span id="addr1Error" class="errorArea"></span>
									</div>
									<div class="item mb2">
										<dl class="line-full">
											<dt>
												<label for="u_addr2">상세주소</label>
											</dt>
											<dd>
												<input type="text" name="u_addr2" id="u_addr2"
													data-parsley-required="true" required
													data-parsley-trigger="change"
													data-parsley-errors-container="span[id='addr2Error']" />
											</dd>
										</dl>
										<span id="addr2Error" class="errorArea"></span>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_email">이메일</label>
											</dt>
											<dd>
												<input type="email" name="u_email" id="u_email"
													placeholder="ex) abc123@naver.com" required
													data-parsley-required="true" data-parsley-trigger="change"
													data-parsley-errors-container="span[id='emailError']" />
											</dd>
										</dl>
										<span id="emailError" class="errorArea"></span>
									</div>
									<div class="item">
										<dl class="line-half1">
											<dt>
												<label for="u_email_receive">이메일 수신여부</label>
											</dt>
											<dd>
												<input type="radio" name="u_email_receive" value="O"
													class="inp_radio" checked id="emailO" /><label
													for="emailO" style="margin-right: 15px">수신</label> <input
													type="radio" name="u_email_receive" value="X"
													class="inp_radio" id="emailX" /><label for="emailX">수신안함</label>
											</dd>
										</dl>
										<dl class="line-half2">
											<dt>
												<label for="u_sms_receive">SMS 수신여부</label>
											</dt>
											<dd>
												<input type="radio" name="u_sms_receive" value="O"
													class="inp_radio" checked id="smsO" /><label for="smsO"
													style="margin-right: 15px">수신</label> <input type="radio"
													name="u_sms_receive" value="X" class="inp_radio" id="smsX" /><label
													for="smsX">수신안함</label>
											</dd>
										</dl>
									</div>
									<div class="item" style="text-align: center;">
										<input type="submit" value="수정완료" class="join_btn" />
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
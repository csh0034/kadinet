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
<script type="text/javascript" src="/js/main/find.js"></script>
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
						<h3 class="location">ID/PW 찾기</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="join_bx">
							<div class="joinform_wrap">
								<form id="frm">
									<div class="join_tit">
										<p>&gt; 아이디 찾기</p>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_name">이름</label>
											</dt>
											<dd>
												<input type="text" id="id_find_name" required placeholder="영문 , 한글만  입력" />
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_phone">휴대폰</label>
											</dt>
											<dd>
											<dd>
												<input type="text" id="id_find_phone" value="" placeholder="숫자만 입력" required />
											</dd>
										</dl>
									</div>

									<div class="item" style="text-align: center;">
										<input type="submit" value="아이디 찾기" class="join_btn">
									</div>
								</form>

								<form id="frm2">
									<div class="find_tit">
										<p>&gt; 비밀번호 찾기</p>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_id">아이디</label>
											</dt>
											<dd>
												<input type="text" id="pw_find_id" required>
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_name">이름</label>
											</dt>
											<dd>
												<input type="text" id="pw_find_name" value="" placeholder="영문 , 한글만  입력" required />
											</dd>
										</dl>
									</div>
									<div class="item">
										<dl class="line-full">
											<dt>
												<label for="u_phone">휴대폰</label>
											</dt>
											<dd>
												<input type="text" id="pw_find_phone" value="" placeholder="숫자만 입력" required />
											</dd>
										</dl>
									</div>
									<div class="item" style="text-align: center;">
										<input type="submit" value="비밀번호 찾기" class="join_btn"/>
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
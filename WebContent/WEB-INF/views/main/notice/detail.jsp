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
		<div class="login_menu_img">
			<b>알림마당</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">
							<c:out value="${tit}" />
						</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="notice_bx">
							<table class="detailTable">
								<colgroup>
									<col width="20%">
									<col width="*">
								</colgroup>
								<tr class="lineTop">
									<th>제목</th>
									<td>블라블라</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>관리자</td>
								</tr>
								<tr>
									<th>등록일</th>
									<td>2018-11-18</td>
								</tr>
								<tr class="lineBottom">
									<th>첨부</th>
									<td><p>
											<img src="/img/main/notice/icon_file.gif">3._기업_기술보호의_Open__Close_전략.pdf
										</p>
										<p>
											<img src="/img/main/notice/icon_file.gif">1._제4차_산업혁명과_산업보안전망.pdf
										</p>
										<p>
											<img src="/img/main/notice/icon_file.gif">1._제4차_산업혁명과_산업보안전망.pdf
										</p>
										<p>
											<img src="/img/main/notice/icon_file.gif">1._제4차_산업혁명과_산업보안전망.pdf
										</p></td>
								</tr>
								<tr>
									<td colspan="2"></td>
								</tr>
								<tr class="contentTr">
									<td colspan="2"><div>여기에 내용이 들어갑니다.</div></td>
								</tr>
								<tr class="btnTr">
									<td colspan="2"><input type="button" value="목록"
										onclick="location.href='/notice/${page}/list.do'"></td>
								</tr>
								<tr class="lineTop">
									<th class="move"><p>
											이전글 <img src="/img/main/notice/pre.gif">
										</p></th>
									<td>어찌고저찌고</td>
								</tr>
								<tr class="lineBottom">
									<th class="move"><p>
											다음글<img src="/img/main/notice/next.gif">
										</p></th>
									<td>어찌고저찌고</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>
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
						<h3 class="location">공지사항</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="notice_bx">
							<table>
								<colgroup>
									<col width="9%">
									<col width="*">
									<col width="10%">
									<col width="12%">
									<col width="9%">
									<col width="6%">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일</th>
										<th>조회</th>
										<th>첨부</th>
									</tr>
								</thead>
								<tbody>
									<%
										for (int i = 0; i < 10; i++) {
									%>
									<tr>
										<td><%=10-i %></td>
										<td class="tit">[KADI] 2017 "4차 산업혁명과 융합산업의 미래"</td>
										<td>관리자</td>
										<td>2018-11-16</td>
										<td>10</td>
										<td><img src="/img/main/notice/icon_file.gif"></td>
									</tr>
									<%
										}
									%>
								</tbody>
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
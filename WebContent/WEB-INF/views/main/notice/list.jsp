<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<div class="searchDiv">
								<form method="get">
									<select name="type">
										<option value="title" selected>제목</option>
										<option value="content">내용</option>
									</select>
									<div class="wrap">
										<input class="searchIn" type="text" name="keyWord" required>
										<input class="searchSubmit" type="submit" value="">
									</div>
								</form>
							</div>
							<table class="listTable">
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
									<c:forEach var="i" begin="0" end="9">
										<tr>
											<td class="max74">${10-i}</td>
											<td class="tit"><a
												href="/notice/${page}/detail.do?no=${i}"> [KADI] 2017
													"4차산업혁명과 융합산업의 미래"</a></td>
											<td class="max82">관리자</td>
											<td>2018-11-16</td>
											<td class="max74">10</td>
											<td><img src="/img/main/notice/icon_file.gif"></td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan=6>검색된 글이 없습니다</td>
									</tr>
								</tbody>
							</table>

							<div class="paginDiv">
								<span class="paging">&lt;</span>
								<c:forEach var="i" begin="1" end="10">
									<span class="paging">${i}</span>
								</c:forEach>
								<span class="paging">&gt;</span>
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
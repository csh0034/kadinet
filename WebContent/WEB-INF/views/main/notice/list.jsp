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
<script>
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}

	function block(value) {
		document.readFrm.nowPage.value = 10 * (value - 1) + 1;
		document.readFrm.submit();
	}
</script>
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
									<select name="keyField">
										<option value="title" selected>제목</option>
										<option value="content">내용</option>
									</select>
									<div class="wrap">
										<input class="searchIn" type="text" name="keyWord" required> <input
											class="searchSubmit" type="submit" value="">
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
									<c:choose>
										<c:when test="${!empty list}">

											<c:forEach var="item" items="${list}" varStatus="i">
												<tr>
													<td class="max74"><c:choose>
															<c:when test="${item.getNotice_bool() == 't'}">
																<span id="notice">공지</span>
															</c:when>
															<c:otherwise>
													${totalRecord - ((nowPage - 1) * 10) - i.index}
												</c:otherwise>
														</c:choose></td>
													<td class="tit"><a href="/notice/${page}/detail.do?no=${item.getNotice_no()}">
															${item.getNotice_title()}</a></td>
													<td class="max82">${item.getUser_name()}</td>
													<td>${item.getNotice_regdate()}</td>
													<td class="max74">${item.getNotice_hit()}</td>
													<td><c:if test="${item.getFile_no() != 0}">
															<img src="/img/main/notice/icon_file.gif">
														</c:if></td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan=6>검색된 글이 없습니다</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>

							<div class="paginDiv">
								<c:if test="${totalPage !=0 }">
									<c:if test="${nowblock > 1 }">
										<a href="javascript:block('${nowblock - 1 }')">
											<span class="paging">&lt;</span>
										</a>
									</c:if>
									<c:forEach var="i" begin="${pageStart}" end="${pageEnd}">
										<a href="javascript:pageing('${i}')">
											<span class="paging">${i}</span>
										</a>
									</c:forEach>
									<c:if test="${totalBlock > nowBlock }">
										<a href="javascript:block('${nowblock + 1 }')">
											<span class="paging">&gt;</span>
										</a>
									</c:if>
								</c:if>
							</div>
							<div>
								<form name="readFrm" method="get">
									<input type="hidden" name="nowPage" value="${nowPage}"> <input type="hidden"
										name="keyField" value="${keyField}"> <input type="hidden" name="keyWord"
										value="${keyWord}">
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
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
		<div class="menu_img intro_menu_img">
			<b>협회소개</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">연혁</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="history_bx">
							<c:set var="year" value="" />
							<c:forEach var="item" items="${historyList}" varStatus="i">
								<c:if test="${item.getHistory_year() != year && year != ''}">
									${'</ul></dd></dl>'}
								</c:if>
								<c:if test="${item.getHistory_year() != year}">
									<c:set var="year" value="${item.getHistory_year() }" />
									${"<dl class='dl_bx'>"} 
									<dt>${item.getHistory_year() }</dt>
									<dd>${'<ul>'}
								</c:if>
								<li><c:choose>
										<c:when test='${ item.getHistory_month() < 10}'>
											<strong class="date">0${item.getHistory_month() }</strong>
										</c:when>
										<c:otherwise>
											<strong class="date">${item.getHistory_month() }</strong>
										</c:otherwise>
									</c:choose>
									<p class="txt">${item.getHistory_data() }</p></li>
							</c:forEach>

						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>
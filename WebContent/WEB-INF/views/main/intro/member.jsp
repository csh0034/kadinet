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
		<div class="menu_img intro_menu_img">
			<b>협회소개</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">임원소개</h3>
					</div>
					<div class="contents_box_bottom">
						<div class="member_box">
							<div class="mem_area_01">
								<div class="mem_top_box">
									<div class="mem_title">회장</div>
									<div class="mem_img">
										<img src="/file/member/${ceo.getMember_img()}">
									</div>
									<dl>
										<dt>${ceo.getMember_name()}</dt>
										<dd>${ceo.getMember_etc()}</dd>
										<dd>
											<a href="http://${ceo.getMember_link()}" target="_blank"> ${ceo.getMember_company()}</a>
										</dd>
									</dl>
								</div>
							</div>
							<div class="mem_area_04">
								<div class="mem_title">임원</div>
								<c:forEach var="item" items="${list}">
									<div class="mem_top_box">
										<div class="mem_img">
											<img src="/file/member/${item.getMember_img()}">
										</div>
										<dl>
											<dt>${item.getMember_name()}</dt>
											<dd>${item.getMember_position()}</dd>
											<dd>${item.getMember_etc()}</dd>
											<dd>
												<a href="http://${item.getMember_link()}" target="_blank">${item.getMember_company()}</a>
											</dd>
										</dl>
									</div>
								</c:forEach>
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
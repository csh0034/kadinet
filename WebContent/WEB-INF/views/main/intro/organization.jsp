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
			<b>협회소개</b>
		</div>
		<div class="main">
			<article class="contents">
				<%@ include file="/WEB-INF/include/main/subNav.jsp"%>
				<div class="contents_box">
					<div class="contents_box_top">
						<h3 class="location">조직도</h3>
					</div>
					<div class="contents_box_bottom">
						<div style="width:100%; height: 400px">임시 div</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="/WEB-INF/include/main/footer.jsp"%>
</body>
</html>
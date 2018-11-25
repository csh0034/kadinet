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
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d64ae3dc1ef35b24364c94f0fb547d1b"></script>
<script>
	window.onload = function() {
		var lat = 37.58525000;
		var lng = 127.08855007;
		var container = document.getElementById('map');
		var options = {
			center : new daum.maps.LatLng(lat, lng),
			level : 3
		};
		var marker = new daum.maps.Marker({
			position : new daum.maps.LatLng(lat, lng)
		});

		var map = new daum.maps.Map(container, options);
		marker.setMap(map);
	}
</script>
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
						<h3 class="location">오시는길</h3>
					</div>
					<div class="contents_box_bottom">
						<div id="map"></div>
						<div class="visit_table">
							<table>
								<c:forEach var="item" items="${direcList }" varStatus="i">
									<tr>
										<th>주소</th>
										<td>${item.getAssociation_address() }</td>
									</tr>
								<tr>
									<th>전화번호</th>
									<td>${item.getAssociation_phone() }</td>
								</tr>
								<tr>
									<th>팩스</th>
									<td>${item.getAssociation_fax() }</td>
								</tr>
								</c:forEach>
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
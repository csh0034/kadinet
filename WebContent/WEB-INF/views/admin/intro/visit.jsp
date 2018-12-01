<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/js/admin/visit.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d64ae3dc1ef35b24364c94f0fb547d1b"></script>
<script>
	window.onload = function() {
 		var lat = ${direcList.getVisit_lat() };
		var lng = ${direcList.getVisit_lng()};
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
<body id="page-top">
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; ${page}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header"></div>
					<div class="card-body">
						<div class="admin_visit_bx">
							<div class="visit_wrap">
								<form method="post" id="updateForm">
									<input type="text" name="visit_x" id="visit_x"
										maxlength="20" title="위도" placeholder="위도" class="inp meminp"
										value="${direcList.getVisit_lat() }"
										required>
										
									<input type="text" name="visit_y"
										id="visit_y" maxlength="20" title="경도" placeholder="경도"
										class="inp meminp"value="${direcList.getVisit_lng() }" required>
										
									<input type="text"
										name="visit_add" id="visit_add" maxlength="100" title="주소"
										placeholder="주소" class="inp meminp" value="${direcList.getVisit_address() }"required>
										
									<input
										type="text" name="visit_phone" id="visit_phone" maxlength="30"
										title="전화번호" placeholder="전화번호" class="inp meminp" value="${direcList.getVisit_phone() }"required>

									<input type="text" name="visit_fax" id="visit_fax"
										maxlength="30" title="팩스번호" placeholder="팩스번호"
										class="inp meminp" value="${direcList.getVisit_fax() }" required>

									<button type="submit" class="btn btn-primary" id="updateVSubmit">수정</button>
								</form>
							</div>
						</div>
					</div>
					<div class="contents_box_bottom">
						<div id="map"></div>
						<div class="visit_table">
							<table>
								<tr>
									<th>주소</th>
									<td>${direcList.getVisit_address() }</td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td>${direcList.getVisit_phone() }</td>
								</tr>
								<tr>
									<th>팩스</th>
									<td>${direcList.getVisit_fax() }</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="card-footer small text-muted"></div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
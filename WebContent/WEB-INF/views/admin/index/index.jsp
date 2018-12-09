<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; 대시보드</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 월간 방문자 현황
					</div>
					<div class="card-body">
						<canvas id="myAreaChart" width="100%" height="30"></canvas>
					</div>
					<div class="card-footer small text-muted time"></div>
				</div>

				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> 신규회원 목록 ( 3개월 이내 )
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable1">
								<thead>
									<tr>
										<th>권한</th>
										<th>가입일</th>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>주소</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${list}">
										<tr>
											<td><c:choose>
													<c:when test="${item.getUser_authority() == '1'}">
														준회원
													</c:when>
													<c:when test="${item.getUser_authority() == '2'}">
														정회원
													</c:when>
												</c:choose>
											<td>${item.getUser_regdate()}</td>
											<td>${item.getUser_id()}</td>
											<td>${item.getUser_name()}</td>
											<td>${item.getUser_gender()}</td>
											<td>${item.getUser_age()}</td>
											<td>${item.getUser_phone()}</td>
											<td>${item.getUser_addr1()}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>

			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
	<div class="chartScript">
		<script>
			Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
			Chart.defaults.global.defaultFontColor = '#292b2c';
			var ctx = document.getElementById("myAreaChart");
			var myLineChart = new Chart(ctx, {
				type : 'line',
				data : {
					labels : [ "01월", "02월", "03월", "04월", "05월", "06월", "07월",
							"08월", "09월", "10월", "11월", "12월" ],
					datasets : [ {
						label : "접속자수",
						lineTension : 0.3,
						backgroundColor : "rgba(2,117,216,0.2)",
						borderColor : "rgba(2,117,216,1)",
						pointRadius : 5,
						pointBackgroundColor : "rgba(2,117,216,1)",
						pointBorderColor : "rgba(255,255,255,0.8)",
						pointHoverRadius : 5,
						pointHoverBackgroundColor : "rgba(2,117,216,1)",
						pointHitRadius : 50,
						pointBorderWidth : 2,
						data : [ 100, 302, 263, 184, 1287, 282, 312, 339, 259,
								259, 321, 384 ],
					} ],
				},
				options : {
					scales : {
						xAxes : [ {
							time : {
								unit : 'date'
							},
							gridLines : {
								display : false
							},
							ticks : {
								maxTicksLimit : 7
							}
						} ],
						yAxes : [ {
							ticks : {
								min : 0,
								max : 2000,
								maxTicksLimit : 5
							},
							gridLines : {
								color : "rgba(0, 0, 0, .125)",
							}
						} ],
					},
					legend : {
						display : false
					}
				}
			});

			$(function() {
				var now = new Date();
				var tmp = 'Updated ' + now.getHours() + ':' + now.getMinutes();
				$('.time').html(tmp);

				$('#dataTable1').dataTable({
					"language" : {
						"emptyTable" : "최근 3개월 이내 가입한 회원이 없습니다"
					},
					"order" : [ [ 1, "desc" ] ]
				});
			});
		</script>
	</div>
</body>
</html>
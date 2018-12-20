<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#dataTable1,#dataTable2,#dataTable3,#dataTable4').DataTable({});
	});
</script>
<script type="text/javascript" src="/js/admin/mbrManagement.js"></script>
</head>
<body id="page-top">
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; ${location}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 준회원
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable1">
								<thead>
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
										<th>가입일</th>
										<th>승인</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${junUList}" varStatus="i">
										<tr>
											<td>${item.getUser_id() }</td>
											<td>${item.getUser_name() }</td>
											<td>${item.getUser_gender() }</td>
											<td>${item.getUser_age() }</td>
											<td>${item.getUser_phone() }</td>
											<td>${item.getUser_email() }</td>
											<td>${item.getUser_addr1() } ${item.getUser_addr2() }</td>
											<td>${item.getUser_regdate() }</td>
											<td>
												<button type="button" class="btn btn-primary recognize"
													onClick="setAuthority('${item.getUser_id()}','2')">승인</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>
				<!-- 1 end -->

				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 정회원
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable2">
								<thead>
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
										<th>최근 접속일</th>
										<th>가입일</th>
										<th>권한</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${jeongUList}" varStatus="i">
										<tr>
											<td>${item.getUser_id() }</td>
											<td>${item.getUser_name() }</td>
											<td>${item.getUser_gender() }</td>
											<td>${item.getUser_age() }</td>
											<td>${item.getUser_phone() }</td>
											<td>${item.getUser_email() }</td>
											<td>${item.getUser_addr1() } ${item.getUser_addr2() }</td>
											<td>${item.getUser_last_login() }</td>
											<td>${item.getUser_regdate() }</td>
											<td>
												<button type="button" class="btn btn-primary recognize"
													onClick="setAuthority('${item.getUser_id()}','0')">관리자</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>


				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 관리자
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable3">
								<thead>
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
										<th>최근 접속일</th>
										<th>가입일</th>
										<th>권한</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${adminUList}" varStatus="i">
										<tr>
											<td>${item.getUser_id() }</td>
											<td>${item.getUser_name() }</td>
											<td>${item.getUser_gender() }</td>
											<td>${item.getUser_age() }</td>
											<td>${item.getUser_phone() }</td>
											<td>${item.getUser_email() }</td>
											<td>${item.getUser_addr1() } ${item.getUser_addr2() }</td>
											<td>${item.getUser_last_login() }</td>
											<td>${item.getUser_regdate() }</td>
											<td>
												<button type="button" class="btn btn-primary recognize"
													onClick="setAuthority('${item.getUser_id()}','2')">정회원</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 탈퇴회원
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable4">
								<thead>
									<tr>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
										<th>가입일</th>
										<th>권한</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${leaveUList}" varStatus="i">
										<tr>
											<td>${item.getUser_id() }</td>
											<td>${item.getUser_name() }</td>
											<td>${item.getUser_gender() }</td>
											<td>${item.getUser_age() }</td>
											<td>${item.getUser_phone() }</td>
											<td>${item.getUser_email() }</td>
											<td>${item.getUser_addr1() } ${item.getUser_addr2() }</td>
											<td>${item.getUser_regdate() }</td>
											<td>
												<button type="button" class="btn btn-primary recognize"
													onClick="setAuthority('${item.getUser_id()}','2')">정회원</button>
											</td>
											<td>
												<button type="submit" class="btn btn-danger" id="${item.getUser_id() }">삭제</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
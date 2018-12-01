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
<script type="text/javascript" src="/js/admin/history.js"></script>
<script>
	$(document).ready(function() {
		$('#dataTable2').DataTable({
			"order" : [ [ 0, "desc" ] ]
		});
	});
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
						<div class="admin_history_bx">
							<div class="history_wrap">
								<input type="number" name="history_year" id="history_year"
									maxlength="4" title="년" placeholder="년" class="inp dateinp"
									required> <input type="number" name="history_month"
									id="history_month" maxlength="4" title="월" placeholder="월"
									class="inp dateinp" required> <input type="number"
									name="history_day" id="history_day" maxlength="4" title="일"
									placeholder="일" class="inp dateinp" required> <input
									type="text" name="history_data" id="history_data"
									maxlength="50" title="내용" placeholder="내용" class="inp" required>

								<button type="submit" class="btn btn-primary" id="addHSubmit">등록</button>
							</div>
							<div class="ht_table_area">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable2">
										<thead>
											<tr>
												<th>연도</th>
												<th>월</th>
												<th>일</th>
												<th>내용</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${historyList}" varStatus="i">
												<tr>
													<td>${item.getHistory_year() }</td>
													<td>${item.getHistory_month() }</td>
													<td>${item.getHistory_day() }</td>
													<td>${item.getHistory_data() }</td>
													<td>
														<button type="submit" class="btn btn-primary">수정</button>
													</td>
													<td>
														<button type="submit" class="btn btn-danger"
															id="${item.getHistory_no() }">삭제</button>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div>
				<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
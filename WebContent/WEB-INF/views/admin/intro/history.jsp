<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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
					<li class="breadcrumb-item">ADMIN &gt; ${page}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> ${page}
					</div>
					<div class="card-body">
						<div class="admin_history_bx">
							<div class="history_wrap">
								<form action="addHistory.do" method="post" id="historyForm">
									<input type="number" name="history_year" id="history_year" maxlength="4" title="년"
										placeholder="년" class="hisinp dateinp" required> <input
										type="number" name="history_month" id="history_month" maxlength="4" title="월"
										placeholder="월" class="hisinp dateinp" required> <input
										type="number" name="history_day" id="history_day" maxlength="4" title="일"
										placeholder="일" class="hisinp dateinp" required> <input
										type="text" name="history_data" id="history_data" maxlength="50" title="내용"
										placeholder="내용" class="hisinp" required>

									<div class="htbtn_area">
										<button type="submit" class="ht_btn">등록</button>
									</div>
								</form>

							</div>
							<div class="ht_table_area">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable">
										<thead>
											<tr>
												<th>체크박스</th>
												<th>년</th>
												<th>월</th>
												<th>일</th>
												<th>내용</th>
												<th>-</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${historyList}" varStatus="i">
												<tr>
													<td>[checkBox]</td>
													<td>${item.getHistory_year() }</td>
													<td>${item.getHistory_month() }</td>
													<td>${item.getHistory_day() }</td>
													<td>${item.getHistory_data() }</td>
													<td>
														<button type="submit" class="ht_update_btn">수정</button>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
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
								<form id="historyForm">
									<input type="number" id="year" maxlength="4" title="년"
										placeholder="년" class="hisinp dateinp" required>
									<input type="number" id="month" maxlength="4" title="월"
										placeholder="월" class="hisinp dateinp" required>
									<input type="number" id="day" maxlength="4" title="일"
										placeholder="일" class="hisinp dateinp" required>
									<input type="text" id="hiscontents" maxlength="50" title="내용"
										placeholder="내용" class="hisinp" required>
								</form>
								<div class="htbtn_area">
									<button type="submit" class="ht_btn">등록</button>
								</div>
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
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
													<tr>
														<td>체크</td>
														<td>2018</td>
														<td>11</td>
														<td>27</td>
														<td>카디넷 홈페이지 개설</td>
														<td>
															<button type="submit" class="ht_update_btn">수정</button>
														</td>
													</tr>
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
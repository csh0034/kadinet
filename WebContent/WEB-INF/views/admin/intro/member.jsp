<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<li class="breadcrumb-item">ADMIN &gt; ${location}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header"></div>
					<div class="card-body">
						<div class="admin_member_bx">
							<div class="history_wrap">
								<form action="addmember.do" method="post" id="memberForm">
									<input type="text" name="member_name" id="member_name" maxlength="20" title="이름"
										placeholder="이름" class="inp meminp" required><input type="text"
										name="member_position" id="member_position" maxlength="20" title="직책" placeholder="직책"
										class="inp meminp" required><input type="text" name="member_contact"
										id="member_contact" maxlength="30" title="연락처" placeholder="연락처" class="inp meminp" required><input type="text" name="member_dep" id="member_dep" maxlength="30" title="소속"
										placeholder="소속" class="inp meminp" required><input type="text" name="member_url" id="member_url" maxlength="30" title="소속 홈페이지 url"
										placeholder="소속 홈페이지 url" class="inp meminp" required>

									<button type="submit" class="btn btn-primary">등록</button>
								</form>
							</div>
							
							<div class="ht_table_area">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable">
										<thead>
											<tr>
												<th>no</th>
												<th>이름</th>
												<th>직책</th>
												<th>연락처</th>
												<th>소속</th>
												<th>소속 홈페이지 url</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>김재환</td>
												<td>회장</td>
												<td>010-1234-1234</td>
												<td>디지털융합산업협회</td>
												<td>http://kadinet.org</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>김재환</td>
												<td>회장</td>
												<td>010-1234-1234</td>
												<td>디지털융합산업협회</td>
												<td>http://kadinet.org</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>김재환</td>
												<td>회장</td>
												<td>010-1234-1234</td>
												<td>디지털융합산업협회</td>
												<td>http://kadinet.org</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>김재환</td>
												<td>회장</td>
												<td>010-1234-1234</td>
												<td>디지털융합산업협회</td>
												<td>http://kadinet.org</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>김재환</td>
												<td>회장</td>
												<td>010-1234-1234</td>
												<td>디지털융합산업협회</td>
												<td>http://kadinet.org</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
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
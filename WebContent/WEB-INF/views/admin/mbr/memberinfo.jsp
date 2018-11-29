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
					<li class="breadcrumb-item">ADMIN &gt; ${page}</li>
				</ol>

				<div class="card mb-3">
					<div class="card-header"></div>
					<div class="card-body">
						<div class="admin_meminfo_bx">
							<div class="history_wrap">
								<form action="addmeminfo.do" method="post" id="meminfoForm">
									<input type="text" name="meminfo_company" id="meminfo_company" maxlength="20" title="회사명"
										placeholder="회사명" class="inp meminp" required><input type="text"
										name="meminfo_name" id="meminfo_name" maxlength="20" title="대표명" placeholder="대표명"
										class="inp meminp" required><input type="text" name="meminfo_since"
										id="meminfo_since" maxlength="30" title="설립일" placeholder="설립일" class="inp meminp" required><input type="text" name="meminfo_tel" id="meminfo_tel" maxlength="30" title="대표전화"
										placeholder="대표전화" class="inp meminp" required>

									<button type="submit" class="btn btn-primary">등록</button>
								</form>
							</div>
							
							<div class="ht_table_area">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable">
										<thead>
											<tr>
												<th>no</th>
												<th>회사명</th>
												<th>대표명</th>
												<th>설립일</th>
												<th>대표전화</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
												<td>
													<button type="submit" class="btn btn-primary">수정</button>
												</td>
												<td>
													<button type="submit" class="btn btn-danger">삭제</button>
												</td>
											</tr>
											<tr>
												<td>1</td>
												<td>디지털융합산업협회</td>
												<td>김재환</td>
												<td>2018-11-11</td>
												<td>010-1234-1222</td>
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
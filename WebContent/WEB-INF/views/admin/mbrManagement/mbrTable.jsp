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
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable">
								<thead>
									<tr>
										<th>no</th>
										<th>아이디</th>
										<th>이름</th>
										<th>성별</th>
										<th>직위</th>
										<th>소속</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>주소</th>
										<th>가입일</th>
										<th>회원등급</th>
										<th>수정</th>
										<th>삭제</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
										<td>
											<button type="submit" class="btn btn-primary">수정</button>
										</td>
										<td>
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
										<td>
											<button type="submit" class="btn btn-primary">수정</button>
										</td>
										<td>
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
										<td>
											<button type="submit" class="btn btn-primary">수정</button>
										</td>
										<td>
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
										<td>
											<button type="submit" class="btn btn-primary">수정</button>
										</td>
										<td>
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
										<td>
											<button type="submit" class="btn btn-primary">수정</button>
										</td>
										<td>
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>test1234</td>
										<td>김재환</td>
										<td>남</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>1960-08-09</td>
										<td>010-1234-1234</td>
										<td>test@naver.com</td>
										<td>서울시 중랑구 면목동 서일대학교</td>
										<td>2018-09-08</td>
										<td>
											<select>
												<option>준회원</option>
												<option>정회원</option>
												<option>탈퇴회원</option>
											</select>
										</td>
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
					<div class="card-footer small text-muted"></div>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
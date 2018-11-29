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
						<i class="fas fa-chart-area"></i> 준회원
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
										<th>승인</th>
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
											<button type="submit" class="btn btn-primary">승인</button>
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
				</div><!-- 1 end -->
				
				
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 정회원
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="dataTable_length"><label>Show <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable no-footer" id="dataTable" role="grid" aria-describedby="dataTable_info">
								<thead>
									<tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="no: activate to sort column descending" style="width: 26px;">no</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="아이디: activate to sort column ascending" style="width: 55px;">아이디</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="이름: activate to sort column ascending" style="width: 40px;">이름</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="성별: activate to sort column ascending" style="width: 40px;">성별</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="직위: activate to sort column ascending" style="width: 40px;">직위</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="소속: activate to sort column ascending" style="width: 135px;">소속</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="생년월일: activate to sort column ascending" style="width: 81px;">생년월일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="전화번호: activate to sort column ascending" style="width: 105px;">전화번호</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="이메일: activate to sort column ascending" style="width: 113px;">이메일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="주소: activate to sort column ascending" style="width: 230px;">주소</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="가입일: activate to sort column ascending" style="width: 81px;">가입일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="삭제: activate to sort column ascending" style="width: 50px;">삭제</th></tr>
								</thead>
								<tbody>
									
								<tr role="row" class="odd">
										<td class="sorting_1">1</td>
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
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr></tbody>
							</table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 1 of 1 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item next disabled" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div><!-- 2 end -->
				
				
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-chart-area"></i> 탈퇴회원
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="dataTable_length"><label>Show <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable no-footer" id="dataTable" role="grid" aria-describedby="dataTable_info">
								<thead>
									<tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="no: activate to sort column descending" style="width: 26px;">no</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="아이디: activate to sort column ascending" style="width: 55px;">아이디</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="이름: activate to sort column ascending" style="width: 40px;">이름</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="성별: activate to sort column ascending" style="width: 40px;">성별</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="직위: activate to sort column ascending" style="width: 40px;">직위</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="소속: activate to sort column ascending" style="width: 135px;">소속</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="생년월일: activate to sort column ascending" style="width: 81px;">생년월일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="전화번호: activate to sort column ascending" style="width: 105px;">전화번호</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="이메일: activate to sort column ascending" style="width: 113px;">이메일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="주소: activate to sort column ascending" style="width: 230px;">주소</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="가입일: activate to sort column ascending" style="width: 81px;">가입일</th><th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="삭제: activate to sort column ascending" style="width: 50px;">삭제</th></tr>
								</thead>
								<tbody>
									
								<tr role="row" class="odd">
										<td class="sorting_1">1</td>
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
											<button type="submit" class="btn btn-danger">삭제</button>
										</td>
									</tr></tbody>
							</table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 1 of 1 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item next disabled" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
						</div>
					</div>
					<div class="card-footer small text-muted"></div>
				</div><!-- 3 end -->
				
				
			
				
				
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
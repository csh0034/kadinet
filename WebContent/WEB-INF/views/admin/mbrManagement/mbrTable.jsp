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
										<th>이름</th>
										<th>직위</th>
										<th>소속</th>
										<th>나이</th>
										<th>가입일</th>
										<th>전화번호</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
									</tr>
									<tr>
										<td>김재환</td>
										<td>회장</td>
										<td>디지털산업융합협회</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>011-2038-4838</td>
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
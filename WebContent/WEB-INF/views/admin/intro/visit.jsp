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
						<div class="admin_visit_bx">
							<div class="visit_wrap">
								<form action="addvisit.do" method="post" id="visitForm">
									<input type="text" name="visit_x" id="visit_name" maxlength="20" title="위도"
										placeholder="위도" class="inp meminp" required>
										
									<input type="text"
										name="visit_y" id="visit_y" maxlength="20" title="경도" placeholder="경도"
										class="inp meminp" required>
										
									<input type="text" name="visit_add"
										id="visit_add" maxlength="30" title="주소" placeholder="주소" class="inp meminp" required>
									
									
									<input type="text" name="visit_tel" id="visit_tel" maxlength="30" title="전화번호"
										placeholder="전화번호" class="inp meminp" required>
										
									<input type="text" name="visit_fax" id="visit_fax" maxlength="30" title="팩스번호"
										placeholder="팩스번호" class="inp meminp" required>

									<button type="submit" class="btn btn-primary">수정</button>
								</form>
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
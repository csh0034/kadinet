<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/main/main.css">
<link href="/css/admin/input_file_design.css" rel="stylesheet">
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script src="/js/admin/fileUpload.js"></script>
<script src="/js/admin/member.js"></script>
<c:if test="${no !='1'}">
	<script>
		function checkForm() {
			var reg = /^[0-9]{1,9}$/g;
			var order = $('#order').val();
			
			if (!reg.test(order)) {
				alert('정렬은 숫자만 입력가능하며 최대 9자리입니다');
				$('#order').focus();
				return false;
			} else {
				if(!confirm('수정 하시겠습니까?')){
					return false;
				}
			}

		}
	</script>
</c:if>
<c:if test="${no =='1'}">
	<script>
		function checkForm() {
			if(!confirm('수정 하시겠습니까?')){
				return false;
			}
		}
	</script>
</c:if>
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
				<c:choose>
					<c:when test="${empty no}">
						<c:set var="tmp" value="?mode=new" />
						<c:set var="req" value="required" />
					</c:when>
					<c:when test="${!empty no}">
						<c:set var="tmp" value="?mode=update&no=${no}" />
					</c:when>
				</c:choose>
				<div class="card mb-3" style="width: 900px; margin: 0 auto;">
					<form method=post action="/admin/intro/upload.do${tmp}" id="form1"
						enctype="multipart/form-data" onsubmit="return checkForm();">
						<div class="card-header"></div>
						<div class="card-body">
							<div class="notice_bx" style="width: 825px; margin: 0 auto;">
								<table class="detailTable" id="detailTable">
									<colgroup>
										<col width="20%">
										<col width="*">
									</colgroup>
									<tr class="lineTop">
										<th>이름</th>
										<td><input type="text" class="form-control" name="member_name"
											value="${bean.getMember_name()}" required></td>
									</tr>
									<tr>
										<th>사진</th>
										<td><div class="filebox">
												<input class="upload-name" value="${bean.getMember_img()}" disabled="disabled">
												<label for="input-file0">업로드</label> <input type="file" id="input-file0"
													class="upload-hidden" name="member_img" ${req}>
											</div></td>
									</tr>
									<c:if test="${no !='1'}">
										<tr>
											<th>직급</th>
											<td><input type="text" class="form-control" value="${bean.getMember_position()}"
												name="member_position" required></td>
										</tr>
									</c:if>
									<tr>
										<th>기타</th>
										<td><input type="text" class="form-control" value="${bean.getMember_etc()}"
											name="member_etc" placeholder="전화번호( 숫자만 입력 ) 또는 이메일( ex: abc@naver.com )" required></td>
									</tr>
									<tr>
										<th>소속회사</th>
										<td><input type="text" class="form-control" value="${bean.getMember_company()}"
											name="member_company" required></td>
									</tr>
									<c:choose>
										<c:when test="${no =='1'}">
											<tr class="mem_link lineBottom">
												<th>링크</th>
												<td><input type="text" class="form-control" name="member_link"
													value="${bean.getMember_link()}" required></td>
											</tr>
										</c:when>
										<c:when test="${no != '1'}">
											<tr class="mem_link">
												<th>링크</th>
												<td><input type="text" class="form-control" name="member_link"
													placeholder="URL입력 ( ex: kadinet.org )" value="${bean.getMember_link()}" required></td>
											</tr>
											<tr class="lineBottom member_num">
												<th>정렬</th>
												<td><input type="text" value="${bean.getMember_order()}" id="order"
													class="form-control" name="member_order" placeholder="숫자만 입력 ,최대 9자리" required></td>
											</tr>
										</c:when>
									</c:choose>
								</table>
							</div>
						</div>
						<div class="card-footer small text-muted" style="text-align: center;">
							<c:choose>
								<c:when test="${empty no}">
									<input type="submit" id="go" class="btn btn-primary" value="저장" />
								</c:when>
								<c:otherwise>
									<input type="submit" id="update" class="btn btn-primary" value="수정" />
									<c:if test="${no !='1'}">
										<input type="button" id="del" class="btn btn-primary" value="삭제"
											onclick="deleteMember('${no}','${bean.getMember_img()}')" />
									</c:if>
								</c:otherwise>
							</c:choose>
							<input type="button" id="list" class="btn btn-primary" value="목록"
								onclick="location.href='/admin/intro/member.do'" />
						</div>
					</form>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
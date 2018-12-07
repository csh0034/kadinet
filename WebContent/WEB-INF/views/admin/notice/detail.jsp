<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>디지털산업협회</title>
<%@ include file="/WEB-INF/include/admin/css.jsp"%>
<link rel="stylesheet" type="text/css" href="/css/main/main.css">
<script src="/boot/vendor/jquery/jquery.min.js"></script>
<script src="/js/admin/detail.js"></script>
</head>
<body id="page-top">
<div class="pop_bk"></div>
	<%@ include file="/WEB-INF/include/admin/header.jsp"%>
	<div id="wrapper">
		<%@ include file="/WEB-INF/include/admin/subNav.jsp"%>
		<div id="content-wrapper">
			<div class="container-fluid">
				<ol class="breadcrumb">
					<li class="breadcrumb-item">ADMIN &gt; ${location}</li>
				</ol>

				<div class="card mb-3" style="width: 900px; margin: 0 auto;">
					<div class="card-header"></div>
					<div class="card-body">
						<div class="notice_bx" style="width: 825px; margin: 0 auto;">
							<table class="detailTable">
								<colgroup>
									<col width="20%">
									<col width="*">
								</colgroup>
								<tr class="lineTop">
									<th>제목</th>
									<td>${bean.getNotice_title()}</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>${bean.getUser_name()}</td>
								</tr>
								<c:if test="${menu== 'notice'}">
									<tr>
										<th>메인사진</th>
										<td><a href="/fileDown?re=${bean.getNotice_img()}"> ${bean.getNotice_img()} </a></td>
									</tr>
								</c:if>

								<c:choose>
									<c:when test="${!empty files}">
										<tr>
											<th>등록일</th>
											<td>${bean.getNotice_regdate()}</td>
										</tr>
										<tr class="lineBottom">
											<th>첨부</th>
											<td><c:forEach var="item" items="${files}" varStatus="i">
													<p>
														<img src="/img/main/notice/icon_file.gif">
														<a href="/fileDown?re=${item.getFile_rename()}">${i.index+1}.
															${item.getFile_oriname()}</a>
													</p>
												</c:forEach></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="lineBottom">
											<th>등록일</th>
											<td>${bean.getNotice_regdate()}</td>
										</tr>
									</c:otherwise>
								</c:choose>
								<tr>
									<td colspan="2"></td>
								</tr>
								<tr class="contentTr">
									<td colspan="2"><div style="min-height: 300px;">${bean.getNotice_content()}</div></td>
								</tr>
								<tr>
									<td colspan="2"></td>
								</tr>
								<tr class="lineTop">
									<th class="move"><p>
											이전글 <img src="/img/main/notice/pre.gif">
										</p></th>
									<td><c:choose>
											<c:when test="${empty prePost[0]}">
												이전글이 없습니다.
											</c:when>
											<c:otherwise>
												<a href="/admin/notice/${menu}/detail.do?no=${prePost[0]}">${prePost[1]}</a>
											</c:otherwise>
										</c:choose></td>
								</tr>
								<tr class="lineBottom">
									<th class="move"><p>
											다음글<img src="/img/main/notice/next.gif">
										</p></th>
									<td><c:choose>
											<c:when test="${empty prePost[2]}">
												이전글이 없습니다.
											</c:when>
											<c:otherwise>
												<a href="/admin/notice/${menu}/detail.do?no=${prePost[2]}">${prePost[3]}</a>
											</c:otherwise>
										</c:choose></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="card-footer small text-muted" style="text-align: center;">
						<input type="button" id="update" class="btn btn-primary" value="수정"
							onclick="updateNotice('${no}','${menu}')" /> <input type="button"
							onclick="deleteNotice('${no}','${menu}','${bean.getNotice_img()}')"
							class="btn btn-primary delete" value="삭제" /> <input type="button" id="list"
							class="btn btn-primary" value="목록" onclick="location.href='/admin/notice/${menu}/list.do'" />
						<input type="button" id="move" class="btn btn-primary" value="이동" />
					</div>
					
					<div class="popUp">
						<div class="pop_tit">
							<span>게시글 이동</span>
							<span class="pop_close">x</span>
						</div>
						<input checked type="radio" name="move1" value="m1" class="inp_radio" id="move1" />
						<label for="move1" style="margin-right: 20px">보도자료</label>
						<input type="radio" name="move1" value="m2" class="inp_radio" id="move2" />
						<label for="move2">정보자료실</label><br />
						<input type="button" id="move_ok" class="btn btn-primary" value="이동" />
					</div>
				</div>
			</div>
			<%@ include file="/WEB-INF/include/admin/footer.jsp"%>
		</div>
	</div>
	<%@ include file="/WEB-INF/include/admin/logout.jsp"%>
	<%@ include file="/WEB-INF/include/admin/js.jsp"%>
</body>
</html>
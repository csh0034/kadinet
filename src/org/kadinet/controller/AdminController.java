package org.kadinet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.model.UserBean;
import org.kadinet.service.ConnectionService;
import org.kadinet.service.HistoryService;
import org.kadinet.service.MbrService;
import org.kadinet.service.MemberService;
import org.kadinet.service.MenuService;
import org.kadinet.service.NoticeService;
import org.kadinet.service.UserService;
import org.kadinet.service.VisitService;
import org.kadinet.util.HttpUtil;

public class AdminController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		
		UserBean userBean = HttpUtil.returnUserData(request);
		
		if(!"0".equals(userBean.getUser_authority())) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('권한이 없습니다');");
			out.println("location.href='/index.do';");
			out.println("</script>");
		} else if ("/admin/index.do".equals(path)) {
			index(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/index/index.jsp");
		} else if ("/admin/intro/greeting.do".equals(path)) {
			greeting(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/intro/history.do".equals(path)) {
			history(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/history.jsp");
		} else if ("/admin/intro/member.do".equals(path)) {
			member(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/member.jsp");
		} else if ("/admin/intro/edit.do".equals(path)) {
			memberEdit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/edit.jsp");
		} else if ("/admin/intro/upload.do".equals(path)) {
			memberUpload(request, response);
		} else if ("/admin/intro/organization.do".equals(path)) {
			organization(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/intro/visit.do".equals(path)) {
			visit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/visit.jsp");
			// business
		} else if ("/admin/business/career.do".equals(path)) {
			career(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/business/corporation.do".equals(path)) {
			corporation(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/business/mentoring.do".equals(path)) {
			mentoring(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/business/support.do".equals(path)) {
			support(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
		} else if ("/admin/business/education.do".equals(path)) {
			education(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editorView.jsp");
			// notice
		} else if ("/admin/notice/notice/list.do".equals(path)) {
			noticeList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/list.jsp");
		} else if ("/admin/notice/press/list.do".equals(path)) {
			pressList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/list.jsp");
		} else if ("/admin/notice/data/list.do".equals(path)) {
			dataList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/list.jsp");
		} else if ("/admin/notice/notice/detail.do".equals(path)) {
			noticeView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/detail.jsp");
		} else if ("/admin/notice/press/detail.do".equals(path)) {
			pressView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/detail.jsp");
		} else if ("/admin/notice/data/detail.do".equals(path)) {
			dataView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/detail.jsp");
		} else if ("/admin/notice/edit.do".equals(path)) {
			edit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/notice/edit.jsp");
			// mem
		} else if ("/admin/mbr/memberinfo.do".equals(path)) {
			memberinfo(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/mbr/memberinfo.jsp");
		} else if ("/admin/mbr/edit.do".equals(path)) {
			memberinfoEdit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/mbr/edit.jsp");
		} else if ("/admin/mbr/upload.do".equals(path)) {
			mbrUpload(request, response);
			response.sendRedirect("/admin/mbr/memberinfo.do");
			// mbrManagement
		} else if ("/admin/mbrManagement/mbrTable.do".equals(path)) {
			mbrTable(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/mbrManagement/mbrTable.jsp");
		} else if ("/admin/editor.do".equals(path)) {
			editor(request, response);
		}
	}

	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService service = UserService.getInstance();
		service.getUser3MonthList(request);
		
		ConnectionService service2 = ConnectionService.getInstance();
		service2.getConnectionList(request);
	}

	// intro
	private void greeting(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 협회장인사");
		request.setAttribute("url", "intro/greeting");
		request.setAttribute("menu", "greeting");

		MenuService service = MenuService.getInstance();
		service.getMenuData("greeting", request);
	}

	private void history(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 연혁");
		HistoryService service = HistoryService.getInstance();
		service.getHistoryList(request);

	}

	private void member(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 임원소개");

		MemberService service = MemberService.getInstance();

		service.getMemberData(request);
	}

	private void memberEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 임원소개");

		MemberService service = MemberService.getInstance();
		String no = request.getParameter("no");
		if (no != null) {
			service.getMemberInfo(request);
		}

	}

	private void memberUpload(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberService service = MemberService.getInstance();
		String no = request.getParameter("no");
		if (no == null) {
			service.insertMember(request);
		} else {
			service.updateMember(request, no);
		}

		response.sendRedirect("/admin/intro/member.do");
	}

	private void organization(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 조직도");
		request.setAttribute("url", "intro/organization");
		request.setAttribute("menu", "organization");

		MenuService service = MenuService.getInstance();
		service.getMenuData("organization", request);

	}

	private void visit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("location", "협회소개 > 오시는길");
		VisitService service = VisitService.getInstance();
		service.getDirectionInfo(request);
	}

	// business
	private void career(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("location", "주요사업 > 경력인증");
		request.setAttribute("url", "business/career");
		request.setAttribute("menu", "career");

		MenuService service = MenuService.getInstance();
		service.getMenuData("career", request);
	}

	private void corporation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("location", "주요사업 > 기업체인증");
		request.setAttribute("url", "business/corporation");
		request.setAttribute("menu", "corporation");

		MenuService service = MenuService.getInstance();
		service.getMenuData("corporation", request);
	}

	private void mentoring(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("location", "주요사업 > 멘토링");
		request.setAttribute("url", "business/mentoring");
		request.setAttribute("menu", "mentoring");

		MenuService service = MenuService.getInstance();
		service.getMenuData("mentoring", request);
	}

	private void support(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("location", "주요사업 > 디지털융합산업지원");
		request.setAttribute("url", "business/support");
		request.setAttribute("menu", "support");

		MenuService service = MenuService.getInstance();
		service.getMenuData("support", request);
	}

	private void education(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("location", "주요사업 > 교육사업");
		request.setAttribute("url", "business/education");
		request.setAttribute("menu", "education");

		MenuService service = MenuService.getInstance();
		service.getMenuData("education", request);
	}

	// notice
	private void noticeList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "notice");
		request.setAttribute("location", "알림마당 > 공지사항");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getAdminNoticeList("notice", request);
	}

	private void pressList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "press");
		request.setAttribute("location", "알림마당 > 보도자료");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getAdminNoticeList("press", request);

	}

	private void dataList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "data");
		request.setAttribute("location", "알림마당 > 정보자료실");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getAdminNoticeList("data", request);

	}

	private void noticeView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "notice");
		request.setAttribute("location", "알림마당 > 공지사항");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getNotice(request, false);
	}

	private void pressView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "press");
		request.setAttribute("location", "알림마당 > 보도자료");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getNotice(request, false);
	}

	private void dataView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("menu", "data");
		request.setAttribute("location", "알림마당 > 정보자료실");
		request.setAttribute("subNav", "3");
		NoticeService service = NoticeService.getInstance();
		service.getNotice(request, false);
	}

	// mbr
	private void memberinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("location", "회원사 > 회원사소개");
		request.setAttribute("subNav", "4");
		
		MbrService service = MbrService.getInstance();

		service.getMbrList(request);
	}

	private void memberinfoEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("location", "회원사 > 회원사소개");
		request.setAttribute("subNav", "4");

		MbrService service = MbrService.getInstance();
		String no = request.getParameter("no");
		
		if (no != null) {
			service.getMbrInfo(request);
		}
		
	}

	private void mbrUpload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MbrService service = MbrService.getInstance();
		String no = request.getParameter("no");
		if (no == null) {
			service.insertMbr(request);
		} else {
			service.updateMbr(request, no);
		}
	}

	// mbrManagement
	private void mbrTable(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserService service = UserService.getInstance();
		request.setAttribute("location", "회원관리");
		service.getUserList(request);
	}

	private void editor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String menu = request.getParameter("menu");
		if (menu == null) {
			response.sendRedirect("/index.do");
		} else {
			MenuService service = MenuService.getInstance();
			String content = request.getParameter("ir1");
			String url = request.getParameter("url");
			service.updateMenuData(menu, content);
			response.sendRedirect("/admin/" + url + ".do");
		}
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String menu = request.getParameter("menu");
		if (menu == null) {
			menu = "notice";
		}
		String mode = request.getParameter("mode");
		if (mode == null) {
			mode = "";
		}
		request.setAttribute("subNav", "3");
		request.setAttribute("menu", menu);
		NoticeService service = NoticeService.getInstance();
		if ("notice".equals(menu)) {
			request.setAttribute("location", "알림마당 > 공지사항");
			request.setAttribute("url", "/admin/notice/notice/list.do");
		} else if ("press".equals(menu)) {
			request.setAttribute("location", "알림마당 > 보도자료");
			request.setAttribute("url", "/admin/notice/press/list.do");
		} else if ("data".equals(menu)) {
			request.setAttribute("location", "알림마당 > 정보자료실");
			request.setAttribute("url", "/admin/notice/data/list.do");
		}

		if ("update".equals(mode)) {
			request.setAttribute("mode", mode);
			service.getNoticeInfo(request);
		}
	}

}

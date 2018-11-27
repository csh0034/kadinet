package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.model.HistoryBean;
import org.kadinet.service.HistoryService;
import org.kadinet.service.NoticeService;
import org.kadinet.service.VisitService;
import org.kadinet.util.HttpUtil;

public class AdminController implements Controller {
	NoticeService service = NoticeService.getInstance();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {

		if ("/admin/index.do".equals(path)) {
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/index/index.jsp");
		} else if ("/admin/intro/greeting.do".equals(path)) {
			greeting(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/greeting.jsp");
		} else if ("/admin/intro/history.do".equals(path)) {
			history(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/history.jsp");
		} else if ("/admin/intro/addHistory.do".equals(path)) {
			addHistory(request, response);
			response.sendRedirect("/admin/intro/history.do");
		} else if ("/admin/intro/member.do".equals(path)) {
			member(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/member.jsp");
		} else if ("/admin/intro/organization.do".equals(path)) {
			organization(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/organization.jsp");
		} else if ("/admin/intro/visit.do".equals(path)) {
			visit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/intro/visit.jsp");
			// business
		} else if ("/admin/business/career.do".equals(path)) {
			career(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/business/career.jsp");
		} else if ("/admin/business/corporation.do".equals(path)) {
			corporation(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/business/corporation.jsp");
		} else if ("/admin/business/education.do".equals(path)) {
			education(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/business/education.jsp");
		} else if ("/admin/business/mentoring.do".equals(path)) {
			mentoring(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/business/mentoring.jsp");
		} else if ("/admin/business/support.do".equals(path)) {
			support(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/business/support.jsp");
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
			// mbr
		} else if ("/admin/mbr/memberinfo.do".equals(path)) {
			memberinfo(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/mbr/memberinfo.jsp");
		} else if ("/admin/mbr/memberlogo.do".equals(path)) {
			memberlogo(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/mbr/memberlogo.jsp");
		}
	}

	// intro
	private void greeting(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 협회장인사");

	}

	private void history(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 연혁");
		HistoryService service = HistoryService.getInstance();
		service.getHistoryList(request);

	}

	private void addHistory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String year = request.getParameter("history_year");
		String month = request.getParameter("history_month");
		String day = request.getParameter("history_day");
		String data = request.getParameter("history_data");
		
		HistoryBean bean = new HistoryBean();
		
		bean.setHistory_year(year);
		bean.setHistory_month(month);
		bean.setHistory_day(day);
		bean.setHistory_data(data);
		
		HistoryService service = HistoryService.getInstance();
		service.addHistory(bean);
	}

	private void member(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 임원소개");

	}

	private void organization(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 조직도");

	}

	private void visit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 오시는길");
		VisitService service = VisitService.getInstance();
		service.getDirectionInfo(request);
	}

	// business
	private void career(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("page", "협회소개 > 경력인증");
	}

	private void corporation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("page", "협회소개 > 기업체인증");
	}

	private void education(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("page", "협회소개 > 교육산업");
	}

	private void mentoring(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("page", "협회소개 > 멘토링");
	}

	private void support(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		request.setAttribute("page", "협회소개 > 디지털융합산업지원");
	}

	// notice
	private void noticeList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "notice");
		request.setAttribute("tit", "공지사항");
		request.setAttribute("subNav", "3");
		service.getNoticeList("notice", request);
	}

	private void pressList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "press");
		request.setAttribute("tit", "보도자료");
		request.setAttribute("subNav", "3");
		service.getNoticeList("press", request);

	}

	private void dataList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "data");
		request.setAttribute("tit", "정보자료실");
		request.setAttribute("subNav", "3");
		service.getNoticeList("data", request);

	}

	private void noticeView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "notice");
		request.setAttribute("tit", "공지사항");
		request.setAttribute("subNav", "3");
		service.getNotice(request);
	}

	private void pressView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "press");
		request.setAttribute("tit", "보도자료");
		request.setAttribute("subNav", "3");
		service.getNotice(request);
	}

	private void dataView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "data");
		request.setAttribute("tit", "정보자료실");
		request.setAttribute("subNav", "3");
		service.getNotice(request);
	}

	// mbr
	private void memberinfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("page", "memberinfo");
		request.setAttribute("subNav", "4");
	}

	private void memberlogo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "update");
		request.setAttribute("subNav", "4");
	}

}

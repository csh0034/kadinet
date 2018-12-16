package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.service.NoticeService;
import org.kadinet.util.HttpUtil;

public class MainNoticeController implements Controller {
	NoticeService service = NoticeService.getInstance();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		request.setAttribute("subNav", "3");
		
		String[] userData = HttpUtil.returnUserData(request);
		
		if(!("0".equals(userData[2]) || "2".equals(userData[2]))) {
			HttpUtil.checkUser(userData, response);
		} else if ("/notice/notice/list.do".equals(path)) {
			noticeList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/list.jsp");
		} else if ("/notice/press/list.do".equals(path)) {
			pressList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/list.jsp");
		} else if ("/notice/data/list.do".equals(path)) {
			dataList(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/list.jsp");
		} else if ("/notice/notice/detail.do".equals(path)) {
			noticeView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/detail.jsp");
		} else if ("/notice/press/detail.do".equals(path)) {
			pressView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/detail.jsp");
		} else if ("/notice/data/detail.do".equals(path)) {
			dataView(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/notice/detail.jsp");
		}

	}

	private void noticeList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "notice");
		request.setAttribute("tit", "공지사항");
		service.getNoticeList("notice", request);
	}

	private void pressList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "press");
		request.setAttribute("tit", "보도자료");
		service.getNoticeList("press", request);

	}

	private void dataList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "data");
		request.setAttribute("tit", "정보자료실");
		service.getNoticeList("data", request);

	}

	private void noticeView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "notice");
		request.setAttribute("tit", "공지사항");
		service.getNotice(request,true);
	}

	private void pressView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "press");
		request.setAttribute("tit", "보도자료");
		service.getNotice(request,true);
	}

	private void dataView(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "data");
		request.setAttribute("tit", "정보자료실");
		service.getNotice(request,true);
	}

}

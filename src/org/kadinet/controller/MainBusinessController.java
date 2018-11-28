package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.service.MenuService;
import org.kadinet.util.HttpUtil;

public class MainBusinessController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		request.setAttribute("subNav", "2");
		if ("/business/career.do".equals(path)) {
			career(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/business/career.jsp");
		} else if ("/business/corporation.do".equals(path)) {
			corporation(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/business/corporation.jsp");
		} else if ("/business/mentoring.do".equals(path)) {
			mentoring(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/business/mentoring.jsp");
		} else if ("/business/support.do".equals(path)) {
			support(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/business/support.jsp");
		} else if ("/business/education.do".equals(path)) {
			education(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/business/education.jsp");
		}
	}

	private void career(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("page", "career");
		MenuService service = MenuService.getInstance();
		service.getMenuData("career", request);
	}

	private void corporation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "corporation");
		MenuService service = MenuService.getInstance();
		service.getMenuData("corporation", request);
	}

	private void mentoring(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "mentoring");
		MenuService service = MenuService.getInstance();
		service.getMenuData("mentoring", request);
	}

	private void support(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "support");
		MenuService service = MenuService.getInstance();
		service.getMenuData("support", request);
	}

	private void education(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "education");
		MenuService service = MenuService.getInstance();
		service.getMenuData("education", request);
	}

}

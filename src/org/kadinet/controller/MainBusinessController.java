package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

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

	}

	private void corporation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "corporation");

	}

	private void mentoring(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "mentoring");

	}

	private void support(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "support");

	}

	private void education(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "education");

	}

}

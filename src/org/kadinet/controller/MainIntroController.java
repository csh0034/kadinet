package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.kadinet.util.HttpUtil;

public class MainIntroController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		if ("/intro/greeting.do".equals(path)) {
			greeting(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/intro/greeting.jsp");
		} else if ("/intro/history.do".equals(path)) {
			history(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/intro/history.jsp");
		} else if ("/intro/member.do".equals(path)) {
			member(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/intro/member.jsp");
		} else if ("/intro/organization.do".equals(path)) {
			organization(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/intro/organization.jsp");
		} else if ("/intro/visit.do".equals(path)) {
			visit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/main/intro/visit.jsp");
		}

	}

	private void greeting(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("page", "greeting");

	}

	private void history(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "history");

	}

	private void member(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "member");

	}

	private void organization(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("page", "organization");

	}

	private void visit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("page", "visit");
	}
}

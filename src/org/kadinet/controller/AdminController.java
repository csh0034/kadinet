package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.util.HttpUtil;

public class AdminController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {
		
		if ("/admin/index.do".equals(path)) {
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/index/index.jsp");
		} else if ("/admin/intro/greeting.do".equals(path)) {
			greeting(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editor.jsp");
		} else if ("/admin/intro/history.do".equals(path)) {
			history(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editor.jsp");
		} else if ("/admin/intro/member.do".equals(path)) {
			member(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editor.jsp");
		} else if ("/admin/intro/organization.do".equals(path)) {
			organization(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editor.jsp");
		} else if ("/admin/intro/visit.do".equals(path)) {
			visit(request, response);
			HttpUtil.forward(request, response, "/WEB-INF/views/admin/editor.jsp");
		}
	}

	private void greeting(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 협회장인사");

	}

	private void history(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("subNav", "1");
		request.setAttribute("page", "협회소개 > 연혁");

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
	}
}

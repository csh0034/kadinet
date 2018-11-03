package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kadinet.util.HttpUtil;

public class AdminIndexController implements Controller {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException {

		HttpUtil.forward(request, response, "/WEB-INF/views/admin/index/index.jsp");
	}
}

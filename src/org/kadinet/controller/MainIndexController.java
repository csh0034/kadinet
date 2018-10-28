package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainIndexController implements Controller {
	@Override
	public String[] execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String tmp[] = {"1","/WEB-INF/views/main/index/index.jsp"};
		return tmp;
	}
}

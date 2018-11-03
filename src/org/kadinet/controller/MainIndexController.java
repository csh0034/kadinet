package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class MainIndexController implements Controller {
	@Override
	public String[] execute(HttpServletRequest request, HttpServletResponse response , String path)
			throws ServletException, IOException {
		
		String tmp[] = {"1",""};
		 if ("/index.do".equals(path)) {
			 index(request,response);
			tmp[1] = "/WEB-INF/views/main/index/index.jsp";
		} else if("/join.do".equals(path)) {
			tmp[1] = "/WEB-INF/views/main/index/join.jsp";
		} else if ("/login.do".equals(path)) {
			tmp[1] = "/WEB-INF/views/main/index/login.jsp";
		}
	
		return tmp;
	}
	
	private void index(HttpServletRequest request, HttpServletResponse response) {
		//HttpSession session = request.getSession();

	}
}

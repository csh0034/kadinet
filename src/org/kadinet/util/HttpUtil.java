package org.kadinet.util;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kadinet.service.ConnectionService;

public class HttpUtil {
	public static void forward(HttpServletRequest request, HttpServletResponse response, String path) {
		RequestDispatcher rd = request.getRequestDispatcher(path);
		try {
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void visit(HttpSession session) {
		if(session.getAttribute("visit") == null) {
			ConnectionService service = ConnectionService.getInstance();
			service.upCount();
			session.setAttribute("visit", true);
		}
	}
}

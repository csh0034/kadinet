package org.kadinet.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kadinet.model.UserBean;
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
		if (session.getAttribute("visit") == null) {
			ConnectionService service = ConnectionService.getInstance();
			service.upCount();
			session.setAttribute("visit", true);
		}
	}

	public static void checkUser(HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('회원만 이용 가능합니다');");
		out.println("location.href='/login.do';");
		out.println("</script>");
	}

	public static UserBean returnUserData(HttpServletRequest request) {
		UserBean userBean = new UserBean();
		if (request.getSession().getAttribute("userBean") != null) {
			userBean = (UserBean) request.getSession().getAttribute("userBean");
		}
		return userBean;
	}
}

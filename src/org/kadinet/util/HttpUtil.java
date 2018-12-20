package org.kadinet.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.kadinet.model.UserBean;
import org.kadinet.service.ConnectionService;
import org.kadinet.service.VisitService;

public class HttpUtil {
	public static void forward(HttpServletRequest request, HttpServletResponse response, String path) {
		RequestDispatcher rd = request.getRequestDispatcher(path);
		try {
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void visit(HttpServletRequest request) {
		//footer 주소 , 번호 , 팩스 
		HttpSession session = request.getSession();
		VisitService service1 = VisitService.getInstance();
		service1.getDirectionInfo(request);
		
		if (session.getAttribute("visit") == null) {
			ConnectionService service2 = ConnectionService.getInstance();
			service2.upCount();
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

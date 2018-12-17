package org.kadinet.service;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.UserDao;
import org.kadinet.model.UserBean;
import org.kadinet.util.HttpUtil;

public class UserService {

	private static UserService service = new UserService();
	public UserDao dao = UserDao.getInstance();

	private UserService() {
	}

	public static UserService getInstance() {
		return service;
	}

	public UserBean checkLogin(String id, String pw) {
		return dao.checkLogin(id, pw);
	}

	public boolean checkId(String id) {
		return dao.checkId(id);
	}

	public void updateLastLogin(String id) {
		dao.updateLastLogin(id);
	}

	public void insertUser(UserBean user) {
		String zipCode = user.getUser_addr1().substring(1, 6);
		String addr1 = user.getUser_addr1().substring(8, user.getUser_addr1().length());

		user.setUser_zipCode(zipCode);
		user.setUser_addr1(addr1);

		dao.insertUser(user);
	}

	public void getUserList(HttpServletRequest request) {
		Vector<UserBean> adminUList = dao.getUserList(0);
		Vector<UserBean> junUList = dao.getUserList(1);
		Vector<UserBean> jeongUList = dao.getUserList(2);
		Vector<UserBean> leaveUList = dao.getUserList(3);

		request.setAttribute("adminUList", adminUList);
		request.setAttribute("junUList", junUList);
		request.setAttribute("jeongUList", jeongUList);
		request.setAttribute("leaveUList", leaveUList);

	}
	
	public void getUser3MonthList(HttpServletRequest request) {
		
		request.setAttribute("list", dao.getUser3MonthList());
	}

	public void deleteUser(String id) {
		dao.deleteUser(id);
	}

	public void recognizeUser(int authority, String id) {
		dao.recognizeUser(authority, id);
	}

	public void updateUser(UserBean user) {
		String zipCode = user.getUser_addr1().substring(1, 6);
		String addr1 = user.getUser_addr1().substring(8, user.getUser_addr1().length());
		user.setUser_zipCode(zipCode);
		user.setUser_addr1(addr1);
		dao.updateUser(user);
	}
	public String[] findId(HttpServletRequest request) {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		return dao.findId(name , phone);
	}
	
	public int findPw(HttpServletRequest request) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		return dao.findPw(id,name , phone);
	}
	
	public int leaveUser(HttpServletRequest request) {
		UserBean userBean = HttpUtil.returnUserData(request);
		String id = userBean.getUser_id();
		String pw = request.getParameter("pw");
		
		return dao.leaveUser(id, pw);
	}
}

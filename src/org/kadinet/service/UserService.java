package org.kadinet.service;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.UserDao;
import org.kadinet.model.UserBean;

public class UserService {

	private static UserService service = new UserService();
	public UserDao dao = UserDao.getInstance();

	private UserService() {
	}

	public static UserService getInstance() {
		return service;
	}

	public String[] checkLogin(String id, String pw) {
		return dao.checkLogin(id,pw);
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
		Vector<UserBean>adminUList = dao.getUserList(0);
		Vector<UserBean>junUList = dao.getUserList(1);
		Vector<UserBean>jeongUList = dao.getUserList(2);
		Vector<UserBean>leaveUList = dao.getUserList(3);
		
		request.setAttribute("adminUList", adminUList);
		request.setAttribute("junUList", junUList);
		request.setAttribute("jeongUList", jeongUList);
		request.setAttribute("leaveUList", leaveUList);
		
	}
	public void deleteUser(String id) {
		dao.deleteUser(id);
	}
	public void recognizeUser(int authority, String id) {
		dao.recognizeUser(authority, id);
	}
	public void insertUpload(HttpServletRequest request) {
		
	}
	
	/*	public String findId(String name, String phone) {
		return dao.findId(name, phone);
	}
	
	*/

}

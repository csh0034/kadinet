package org.kadinet.service;
import org.kadinet.dao.UserDao;

public class UserService {

	private static UserService service = new UserService();
	public UserDao dao = UserDao.getInstance();

	private UserService() {
	}

	public static UserService getInstance() {
		return service;
	}

	public boolean loginCheck(String id, String pw) {
		return dao.loginCheck(id,pw);
	}
}

package org.kadinet.service;
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

	public boolean loginCheck(String id, String pw) {
		return dao.loginCheck(id,pw);
	}
	public void loginUpdate(String id) {
		dao.loginUpdate(id);
	}
	public void userJoin(UserBean user) {
		dao.userJoin(user);
	}
}

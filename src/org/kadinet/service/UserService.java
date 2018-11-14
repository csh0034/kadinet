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

	public boolean checkLogin(String id, String pw) {
		return dao.checkLogin(id,pw);
	}
	public void updateLastLogin(String id) {
		dao.updateLastLogin(id);
	}
	public void insertUser(UserBean user) {
		dao.insertUser(user);
	}
/*	public void deleteUser(String id) {
		dao.deleteUser(id);
	}*/
}

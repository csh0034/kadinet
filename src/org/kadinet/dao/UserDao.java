package org.kadinet.dao;
import org.kadinet.util.DBCon;

public class UserDao extends DBCon {
	private static UserDao dao = new UserDao();

	private UserDao() {
	}

	public static UserDao getInstance() {
		return dao;
	}
	
	public boolean loginCheck(String id, String pw) {
		boolean success = false;
		try {
			conStart();
			sql = "select count(*) from user where user_id=? and user_pw=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			rs.next();
			if (rs.getInt(1) > 0) {
				success = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return success;
	}
}

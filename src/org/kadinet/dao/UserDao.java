package org.kadinet.dao;

import org.kadinet.util.DBCon;
import org.kadinet.model.UserBean;

public class UserDao extends DBCon {
	private static UserDao dao = new UserDao();

	private UserDao() {
	}

	public static UserDao getInstance() {
		return dao;
	}

	public boolean checkLogin(String id, String pw) {
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

	public boolean checkId(String id) {
		boolean flag = true;
		try {
			conStart();
			sql = "select count(*) from user where user_id=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getInt(1) > 0) {
					flag = false;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return flag;

	}

	public void updateLastLogin(String id) {
		try {
			conStart();
			sql = "update user set user_last_login = sysdate() where user_id =? ";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public void insertUser(UserBean user) {
		try {
			conStart();
			sql = "insert into user values(?,?,?,?,?,sysdate(),sysdate(),?,?,?,?,?,'1')";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pw());
			pstmt.setString(3, user.getUser_name());
			pstmt.setString(4, user.getUser_email());
			pstmt.setString(5, user.getUser_phone());
			pstmt.setString(6, user.getUser_email_receive());
			pstmt.setString(7, user.getUser_sms_receive());
			pstmt.setString(8, user.getUser_zipCode());
			pstmt.setString(9, user.getUser_addr1());
			pstmt.setString(10, user.getUser_addr2());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	/*
	 * public void deleteUser(String id) { try { conStart(); sql =
	 * "delete from user where id=?";
	 * 
	 * pstmt = con.prepareStatement(sql); pstmt.setString(1, id);
	 * pstmt.executeUpdate();
	 * 
	 * } catch (Exception e) { e.printStackTrace(); } finally { conClose(); } }
	 */
}

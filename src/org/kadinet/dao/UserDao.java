package org.kadinet.dao;

import org.kadinet.util.DBCon;

import java.util.Vector;

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
			sql = "insert into user values(?,?,?,?,?,?,?,sysdate(),sysdate(),?,?,?,?,?,'1')";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pw());
			pstmt.setString(3, user.getUser_name());
			pstmt.setString(4, user.getUser_email());
			pstmt.setString(5, user.getUser_age());
			pstmt.setString(6, user.getUser_gender());
			pstmt.setString(7, user.getUser_phone());
			pstmt.setString(8, user.getUser_email_receive());
			pstmt.setString(9, user.getUser_sms_receive());
			pstmt.setString(10, user.getUser_zipCode());
			pstmt.setString(11, user.getUser_addr1());
			pstmt.setString(12, user.getUser_addr2());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public Vector<UserBean> getUserList(int authority) {
		Vector<UserBean> UserList = new Vector<UserBean>();
		try {
			conStart();
			sql = "select * from user where user_authority = ? order by user_authority desc, user_regdate desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, authority);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				UserBean bean = new UserBean();
				bean.setUser_id(rs.getString("user_id"));
				bean.setUser_name(rs.getString("user_name"));
				bean.setUser_gender(rs.getString("user_gender"));
				bean.setUser_age(rs.getString("user_age"));
				bean.setUser_phone(rs.getString("user_phone"));
				bean.setUser_email(rs.getString("user_email"));
				bean.setUser_addr1(rs.getString("user_addr1"));
				bean.setUser_regdate(rs.getDate("user_regdate"));

				UserList.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return UserList;
	}

	public void deleteUser(String id) {
		try {
			conStart();
			sql = "delete from user where user_id=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
	public void recognizeUser(String id) {
		try {
			conStart();
			sql = "update user set user_authority = user_authority + 1 where user_id = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
}
/*
 * public String findId(String name, String phone) { String user_id = null; try
 * { conStart(); sql =
 * "select * from user where user_name = ? and user_phone = ?";
 * 
 * pstmt = con.prepareStatement(sql); pstmt.setString(1, name);
 * pstmt.setString(2, phone);
 * 
 * pstmt.executeQuery();
 * 
 * while(rs.next()){ user_id = rs.getString("user_id"); } } catch (Exception e)
 * { e.printStackTrace(); } finally { conClose(); } return user_id; }
 * 
 * }
 */
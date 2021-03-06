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

	public UserBean checkLogin(String id, String pw) {
		UserBean bean = new UserBean();
		try {
			conStart();
			sql = "select * from user where user_id=? and user_pw=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setUser_id(rs.getString("user_id"));
				bean.setUser_name(rs.getString("user_name"));
				bean.setUser_gender(rs.getString("user_gender"));
				bean.setUser_age(rs.getString("user_age"));
				bean.setUser_phone(rs.getString("user_phone"));
				bean.setUser_email(rs.getString("user_email"));
				bean.setUser_addr1(rs.getString("user_addr1"));
				bean.setUser_addr2(rs.getString("user_addr2"));
				bean.setUser_authority(rs.getString("user_authority"));
				bean.setUser_email_receive(rs.getString("user_email_receive"));
				bean.setUser_sms_receive(rs.getString("user_sms_receive"));
				bean.setUser_zipCode(rs.getString("user_zip_code"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return bean;
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
			sql = "select *, DATE_FORMAT(user_last_login, '%Y-%m-%d') as last_login from user where user_authority = ? order by user_authority desc, user_regdate desc";
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
				bean.setUser_addr2(rs.getString("user_addr2"));
				bean.setUser_regdate(rs.getDate("user_regdate"));
				bean.setUser_last_login(rs.getDate("last_login"));

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

	public void recognizeUser(int authority, String id) {
		try {
			conStart();
			sql = "update user set user_authority = ? where user_id = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, authority);
			pstmt.setString(2, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public Vector<UserBean> getUser3MonthList() {
		Vector<UserBean> list = new Vector<UserBean>();
		try {
			conStart();
			sql = "select *  from user where user_authority != 3 and user_authority !=0 "
					+ "and date(user_regdate) >= date(subdate(now(), interval 3 month)) "
					+ "order by user_regdate desc";
			pstmt = con.prepareStatement(sql);
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
				bean.setUser_last_login(rs.getDate("user_last_login"));
				bean.setUser_authority(rs.getString("user_authority"));
				list.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return list;
	}

	public void updateUser(UserBean user) {
		try {
			conStart();
			sql = "update user set user_pw=?, user_name=?, user_phone=?, user_addr1=?, user_addr2=?, user_email=?, user_email_receive=?, user_sms_receive=? "
					+ ", user_age = ? , user_gender = ? where user_id=?";

			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, user.getUser_pw());
			pstmt.setString(2, user.getUser_name());
			pstmt.setString(3, user.getUser_phone());
			pstmt.setString(4, user.getUser_addr1());
			pstmt.setString(5, user.getUser_addr2());
			pstmt.setString(6, user.getUser_email());
			pstmt.setString(7, user.getUser_email_receive());
			pstmt.setString(8, user.getUser_sms_receive());
			pstmt.setString(9, user.getUser_age());
			pstmt.setString(10, user.getUser_gender());
			pstmt.setString(11, user.getUser_id());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public String[] findId(String name, String phone) {
		String data[] = { "x", "-1" };
		try {
			conStart();
			sql = "select * from user where user_name=? and user_phone=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				data[0] = rs.getString("user_id");
				data[1] = rs.getString("user_authority");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return data;
	}

	public int findPw(String id, String name, String phone) {
		int cnt = 0;
		try {
			conStart();
			sql = "select count(*) from user where user_id = ? and user_name=? and user_phone=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return cnt;
	}

	public int leaveUser(String id, String pw) {
		int cnt = 0;
		try {
			conStart();
			sql = "update user set user_authority = 3 where user_id = ? and user_pw = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			cnt = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return cnt;
	}
	
	public void changePw(String id, String pw) {
		try {
			conStart();
			sql = "update user set user_pw = ? where user_id = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

	}
}
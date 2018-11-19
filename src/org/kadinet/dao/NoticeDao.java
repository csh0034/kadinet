package org.kadinet.dao;

import java.util.Vector;

import org.kadinet.model.NoticeBean;
import org.kadinet.util.DBCon;

public class NoticeDao extends DBCon {
	private static NoticeDao dao = new NoticeDao();

	private NoticeDao() {
	}

	public static NoticeDao getInstance() {
		return dao;
	}

	public Vector<NoticeBean> getNoticeList(String category, int startRow, int endRow, String keyField,
			String keyWord) {
		Vector<NoticeBean> list = new Vector<NoticeBean>();
		try {
			conStart();
			if (keyWord == null || "".equals(keyWord) || keyWord.isEmpty()) {
				sql = "select * from notice left outer join notice_file\r\n"
						+ "on notice.notice_no = notice_file.notice_no join user on notice.user_id = user.user_id where notice_category = ? and \r\n"
						+ "(notice_file.file_order = (select min(file_order) from notice_file) \r\n"
						+ "or notice_file.file_order is null)\r\n" + "order by notice.notice_no desc limit ?,?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, category);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
			} else {

				sql = "select * from notice left outer join notice_file\r\n"
						+ "on notice.notice_no = notice_file.notice_no join user on notice.user_id = user.user_id where notice_category = ? and \r\n"
						+ "(notice_file.file_order = (select min(file_order) from notice_file) \r\n"
						+ "or notice_file.file_order is null) and notice_" + keyField + " like ? \r\n"
						+ "order by notice.notice_no desc limit ?,?";

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, category);
				pstmt.setString(2, "%" + keyWord + "%");
				pstmt.setInt(3, startRow);
				pstmt.setInt(4, endRow);
			}
			rs = pstmt.executeQuery();

			while (rs.next()) {
				NoticeBean bean = new NoticeBean();
				bean.setNotice_no(rs.getInt("notice_no"));
				bean.setNotice_category(rs.getString("notice_category"));
				bean.setNotice_bool(rs.getString("notice_bool"));
				bean.setNotice_title(rs.getString("notice_title"));
				bean.setNotice_content(rs.getString("notice_content"));
				bean.setUser_id(rs.getString("user_id"));
				bean.setUser_name(rs.getString("user_name"));
				bean.setNotice_regdate(rs.getDate("notice_regdate"));
				bean.setNotice_hit(rs.getInt("notice_hit"));
				bean.setFile_no(rs.getInt("file_no"));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return list;
	}

	public int getCount(String category , String keyField, String keyWord) {
		int count = 0;
		try {
			conStart();
			if (keyWord == null || "".equals(keyWord)) {
				sql = "select count(*) from notice where notice_category = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, category);
			} else {
				sql = "select count(*) from notice where notice_" + keyField + " like ? and notice_category = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, "%" + keyWord + "%");
				pstmt.setString(2, category);
			}

			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return count;
	}

}

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
				sql = "select *,DATE_FORMAT(notice_regdate, '%Y-%m-%d') as reg from notice left outer join notice_file\r\n"
						+ "on notice.notice_no = notice_file.notice_no join user on notice.user_id = user.user_id where notice_category = ? and \r\n"
						+ "(notice_file.file_order = (select min(file_order) from notice_file) \r\n"
						+ "or notice_file.file_order is null)\r\n"
						+ "order by notice.notice_bool desc,notice.notice_no desc limit ?,?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, category);
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
			} else {

				sql = "select *,DATE_FORMAT(notice_regdate, '%Y-%m-%d') as reg from notice left outer join notice_file\r\n"
						+ "on notice.notice_no = notice_file.notice_no join user on notice.user_id = user.user_id where notice_category = ? and \r\n"
						+ "(notice_file.file_order = (select min(file_order) from notice_file) \r\n"
						+ "or notice_file.file_order is null) and notice_" + keyField + " like ? \r\n"
						+ "order by notice.notice_bool desc,notice.notice_no desc limit ?,?";

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
				bean.setNotice_regdate(rs.getDate("reg"));
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

	public int getCount(String category, String keyField, String keyWord) {
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

	public NoticeBean getNotice(String no) {
		NoticeBean bean = new NoticeBean();
		try {
			conStart();

			sql = "select * , DATE_FORMAT(notice_regdate, '%Y-%m-%d') as reg from notice\r\n"
					+ "join user on notice.user_id = user.user_id where notice_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				bean.setNotice_title(rs.getString("notice_title"));
				bean.setNotice_category(rs.getString("notice_category"));
				bean.setNotice_content(rs.getString("notice_content"));
				bean.setUser_name(rs.getString("user_name"));
				bean.setNotice_regdate(rs.getDate("reg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return bean;
	}

	public String[] getPrePost(String no, String category) {
		String tmp[] = { "", "", "", "" };

		try {
			conStart();
			sql = "select * from notice where notice_no > ?  and notice_category = ? order by notice_no asc limit 1";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.setString(2, category);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				tmp[0] = rs.getString("notice_no");
				tmp[1] = rs.getString("notice_title");
			}

			sql = "select * from notice where notice_no < ? and notice_category = ? order by notice_no desc limit 1";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			pstmt.setString(2, category);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				tmp[2] = rs.getString("notice_no");
				tmp[3] = rs.getString("notice_title");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return tmp;
	}

	public Vector<NoticeBean> getFileList(String no) {
		Vector<NoticeBean> list = new Vector<NoticeBean>();
		try {
			conStart();
			sql = "select * from notice_file where notice_no= ? order by file_order";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				NoticeBean bean = new NoticeBean();
				bean.setFile_no(rs.getInt("file_no"));
				bean.setFile_oriname(rs.getString("file_oriname"));
				bean.setFile_rename(rs.getString("file_rename"));
				bean.setFile_size(rs.getString("file_size"));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return list;
	}
	
	public Vector<NoticeBean> getIndexNoiceList(String category,int limit) {
		Vector<NoticeBean> list = new Vector<NoticeBean>();
		try {
			conStart();
			sql = "select *, DATE_FORMAT(notice_regdate, '%Y-%m-%d') as reg from notice where notice_category = ? "
					+ "order by notice.notice_bool desc,notice_no desc limit 0,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				NoticeBean bean = new NoticeBean();
				bean.setNotice_no(rs.getInt("notice_no"));
				bean.setNotice_title(rs.getString("notice_title"));
				bean.setNotice_regdate(rs.getDate("reg"));
				bean.setNotice_hit(rs.getInt("notice_hit"));
				bean.setNotice_bool(rs.getString("notice_bool"));
				list.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return list;
	}

}

package org.kadinet.dao;

import java.util.Vector;

import org.kadinet.model.MemberBean;
import org.kadinet.util.DBCon;

public class MemberDao extends DBCon {
	private static MemberDao dao = new MemberDao();

	private MemberDao() {
 
	}

	public static MemberDao getInstance() {
		return dao;
	}

	public MemberBean getMember(int no) {
		MemberBean bean = new MemberBean();
		try {
			conStart();
			sql = "select * from member where member_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				bean.setMember_no(rs.getInt("member_no"));
				bean.setMember_img(rs.getString("member_img"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_position(rs.getString("member_position"));
				bean.setMember_etc(rs.getString("member_etc"));
				bean.setMember_link(rs.getString("member_link"));
				bean.setMember_company(rs.getString("member_company"));
				bean.setMember_order(rs.getInt("member_order"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return bean;
	}

	public Vector<MemberBean> getMemberList() {
		Vector<MemberBean> list = new Vector<MemberBean>();
		try {
			conStart();
			sql = "select * from member where member_order != -1 order by member_order desc , member_no";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setMember_no(rs.getInt("member_no"));
				bean.setMember_img(rs.getString("member_img"));
				bean.setMember_name(rs.getString("member_name"));
				bean.setMember_position(rs.getString("member_position"));
				bean.setMember_etc(rs.getString("member_etc"));
				bean.setMember_link(rs.getString("member_link"));
				bean.setMember_company(rs.getString("member_company"));
				bean.setMember_order(rs.getInt("member_order"));
				list.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return list;
	}

	public void insertMember(MemberBean bean) {
		try {
			conStart();
			sql = "insert into member values(0,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMember_img());
			pstmt.setString(2, bean.getMember_name());
			pstmt.setString(3, bean.getMember_position());
			pstmt.setString(4, bean.getMember_etc());
			pstmt.setString(5, bean.getMember_company());
			pstmt.setString(6, bean.getMember_link());
			pstmt.setInt(7, bean.getMember_order());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public void updateMember(int no, MemberBean bean) {
		try {
			conStart();
			sql = "update member set member_img = ? , member_name = ? , member_position = ? ,"
					+ "member_etc=? , member_company = ? , member_link = ? , member_order=? where member_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMember_img());
			pstmt.setString(2, bean.getMember_name());
			pstmt.setString(3, bean.getMember_position());
			pstmt.setString(4, bean.getMember_etc());
			pstmt.setString(5, bean.getMember_company());
			pstmt.setString(6, bean.getMember_link());
			pstmt.setInt(7, bean.getMember_order());
			pstmt.setInt(8, no);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
	
	public void deleteMember(int no) {
		try {
			conStart();
			sql = "delete from member where member_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
}

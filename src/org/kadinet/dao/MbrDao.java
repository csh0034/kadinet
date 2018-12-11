package org.kadinet.dao;

import java.util.Vector;

import org.kadinet.model.MbrBean;
import org.kadinet.util.DBCon;

public class MbrDao extends DBCon {
	private static MbrDao dao = new MbrDao();

	private MbrDao() {
	}

	public static MbrDao getInstance() {
		return dao;
	}

	public MbrBean getMbr(String no) {
		MbrBean bean = new MbrBean();
		try {
			conStart();
			sql = "select * from mbr where mbr_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				bean.setMbr_no(rs.getInt("mbr_no"));
				bean.setMbr_img(rs.getString("mbr_img"));
				bean.setMbr_name(rs.getString("mbr_name"));
				bean.setMbr_ceo(rs.getString("mbr_ceo"));
				bean.setMbr_estdate(rs.getString("mbr_estdate"));
				bean.setMbr_regdate(rs.getString("mbr_regdate"));
				bean.setMbr_phone(rs.getString("mbr_phone"));
				bean.setMbr_link(rs.getString("mbr_link"));
				bean.setMbr_order(rs.getInt("mbr_order"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return bean;
	}

	public int getCount() {
		int count = 0;
		try {
			conStart();
				sql = "select count(*) from mbr";
				pstmt = con.prepareStatement(sql);

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

	public Vector<MbrBean> getMbrList(int startRow, int endRow) {
		Vector<MbrBean> list = new Vector<MbrBean>();
		try {
			conStart();
			sql = "select * from mbr order by mbr_order desc limit ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				MbrBean bean = new MbrBean();
				bean.setMbr_no(rs.getInt("mbr_no"));
				bean.setMbr_img(rs.getString("mbr_img"));
				bean.setMbr_name(rs.getString("mbr_name"));
				bean.setMbr_ceo(rs.getString("mbr_ceo"));
				bean.setMbr_estdate(rs.getString("mbr_estdate"));
				bean.setMbr_regdate(rs.getString("mbr_regdate"));
				bean.setMbr_phone(rs.getString("mbr_phone"));
				bean.setMbr_link(rs.getString("mbr_link"));
				bean.setMbr_order(rs.getInt("mbr_order"));
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
		return list;
	}
	
	public void insertMbr(MbrBean bean) {
		try {
			conStart();
			sql = "insert into mbr values(0,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMbr_img());
			pstmt.setString(2, bean.getMbr_name());
			pstmt.setString(3, bean.getMbr_ceo());
			pstmt.setString(4, bean.getMbr_estdate());
			pstmt.setString(5, bean.getMbr_regdate());
			pstmt.setString(6, bean.getMbr_phone());
			pstmt.setString(7, bean.getMbr_link());
			pstmt.setInt(8, bean.getMbr_order());

			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}

	public void updateMbr(int no, MbrBean bean) {
		try {
			conStart();
			sql = "update mbr set mbr_img = ? , mbr_name = ? , mbr_ceo = ? ,"
					+ "mbr_estdate=? , mbr_regdate = ? , mbr_phone = ? , mbr_link= ? , mbr_order = ? where mbr_no = ?";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getMbr_img());
			pstmt.setString(2, bean.getMbr_name());
			pstmt.setString(3, bean.getMbr_ceo());
			pstmt.setString(4, bean.getMbr_estdate());
			pstmt.setString(5, bean.getMbr_regdate());
			pstmt.setString(6, bean.getMbr_phone());
			pstmt.setString(7, bean.getMbr_link());
			pstmt.setInt(8, bean.getMbr_order());
			pstmt.setInt(9, no);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
}

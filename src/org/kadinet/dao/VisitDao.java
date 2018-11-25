package org.kadinet.dao;

import java.util.Vector;
import org.kadinet.model.VisitBean;
import org.kadinet.util.DBCon;

public class VisitDao extends DBCon {
	private static VisitDao dao = new VisitDao();

	private VisitDao() {
	}

	public static VisitDao getInstance() {
		return dao;
	}

	public Vector<VisitBean> getDirectionInfo() {
		Vector<VisitBean> visitList = new Vector<VisitBean>();

		try {
			conStart();
			sql = "select * from visit";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				VisitBean bean = new VisitBean();
				bean.setVisit_no(rs.getInt("visit_no"));
				bean.setLat(rs.getInt("lat"));
				bean.setLng(rs.getInt("lng"));
				bean.setAssociation_address(rs.getString("association_address"));
				bean.setAssociation_phone(rs.getString("association_phone"));
				bean.setAssociation_fax(rs.getString("association_fax"));

				visitList.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return visitList;

	}
}
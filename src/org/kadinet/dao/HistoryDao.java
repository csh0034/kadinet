package org.kadinet.dao;

import java.util.Vector;

import org.kadinet.model.HistoryBean;
import org.kadinet.util.DBCon;

public class HistoryDao extends DBCon {
	private static HistoryDao dao = new HistoryDao();

	private HistoryDao() {
	}

	public static HistoryDao getInstance() {
		return dao;
	}

	public Vector<HistoryBean> getHistoryList() {
		Vector<HistoryBean> historyList = new Vector<HistoryBean>();
		try {
			conStart();
			sql = "select * from history order by history_year desc, history_month desc, history_day desc";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				HistoryBean bean = new HistoryBean();
				bean.setHistory_no(rs.getInt("history_no"));
				bean.setHistory_year(rs.getInt("history_year"));
				bean.setHistory_month(rs.getInt("history_month"));
				bean.setHistory_day(rs.getInt("history_day"));
				bean.setHistory_data(rs.getString("history_data"));

				historyList.add(bean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}

		return historyList;
	}
}

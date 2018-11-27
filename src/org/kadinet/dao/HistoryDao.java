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
			sql = "select * from history group by history_year, history_month, history_data order by history_year desc, history_month desc, history_day desc";
			pstmt = con.prepareStatement(sql);
 
			rs = pstmt.executeQuery();

			while (rs.next()) {
				HistoryBean bean = new HistoryBean();
				bean.setHistory_no(rs.getString("history_no"));
				bean.setHistory_year(rs.getString("history_year"));
				bean.setHistory_month(rs.getString("history_month"));
				bean.setHistory_day(rs.getString("history_day"));
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
	
	public void addHistory(HistoryBean bean) {
		try {
			conStart();
			sql = "insert into history values('0',?,?,?,'sdfds')";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getHistory_year());
			pstmt.setString(2, bean.getHistory_month());
			pstmt.setString(3, bean.getHistory_day());

			
 
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conClose();
		}
	}
}

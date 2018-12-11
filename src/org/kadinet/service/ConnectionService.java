package org.kadinet.service;

import org.kadinet.dao.HistoryDao;

public class ConnectionService {

	private static ConnectionService service = new ConnectionService();
	public HistoryDao dao = HistoryDao.getInstance();
 
	private ConnectionService() {
	}
	public static ConnectionService getInstance() {
		return service;
	}
}

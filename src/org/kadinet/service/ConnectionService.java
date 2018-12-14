package org.kadinet.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import org.kadinet.dao.ConnectionDao;

public class ConnectionService {

	private static ConnectionService service = new ConnectionService();
	public ConnectionDao dao = ConnectionDao.getInstance();
 
	private ConnectionService() {
	}
	public static ConnectionService getInstance() {
		return service;
	}
	
	public void getConnectionList(HttpServletRequest request) {
		Vector<String[]> cList = dao.getConnectionList();
		
		double max = 0;
		String title[] = new String[12];
		String value[] = new String[12];
		for(int i=0; i<cList.size(); i++) {
			title[i] = cList.get(i)[0];
			value[i] = cList.get(i)[1];
			
			if(max < Integer.parseInt(cList.get(i)[1])) {
				max = Integer.parseInt(cList.get(i)[1]);
			}
		}
		
		max = Math.ceil(max * 1.1);
		
		request.setAttribute("title",title);
		request.setAttribute("value",value);
		request.setAttribute("max",max);
	}
	
	public void upCount(){
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM");
		dao.upCount(df.format(date));
	}
}

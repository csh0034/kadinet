package org.kadinet.service;

import java.io.File;
import java.io.IOException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kadinet.dao.MbrDao;
import org.kadinet.model.MbrBean;
import org.kadinet.util.TimestampFileRenamePolicy;

import com.oreilly.servlet.MultipartRequest;

public class MbrService {

	private static MbrService service = new MbrService();
	public MbrDao dao = MbrDao.getInstance();

	private MbrService() {
	}

	public static MbrService getInstance() {
		return service;
	}

	public void getMbrList(HttpServletRequest request) {
		int totalRecord = 0;
		int numPerPage = 6;
		int pagePerBlock = 10;
		int totalPage = 0;
		int totalBlock = 0;
		int nowPage = 1;
		int nowBlock = 1;
		int start = 0;
		
		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		start = (nowPage * numPerPage) - numPerPage;

		totalRecord = dao.getCount();
		totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
		nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);

		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);

		int pageStart = (nowBlock - 1) * pagePerBlock + 1;
		int pageEnd = ((pageStart + pagePerBlock) <= totalPage) ? (pageStart + pagePerBlock - 1) : totalPage;

		Vector<MbrBean> list = dao.getMbrList(start, numPerPage);

		request.setAttribute("mbrList", list);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowBlock", nowBlock);
		request.setAttribute("pageStart", pageStart);
		request.setAttribute("pageEnd", pageEnd);
		request.setAttribute("totalBlock", totalBlock);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("totalRecord", totalRecord);

	}
	
	public void insertMbr(HttpServletRequest request) {
		String ENCTYPE = "utf-8";
		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "mbr" + File.separator;
		int MAXSIZE = 20 * 1024 * 1024;

		MbrBean bean = new MbrBean();
		MultipartRequest multi = null;

		File file = new File(filePath);
		if (!file.exists())
			file.mkdirs();

		try {
			multi = new MultipartRequest(request, filePath, MAXSIZE, ENCTYPE, new TimestampFileRenamePolicy("mbr"));

			if (multi.getFilesystemName("mbr_img") != null) {
				bean.setMbr_img(multi.getFilesystemName("mbr_img"));
			}

			bean.setMbr_name(multi.getParameter("mbr_name"));
			bean.setMbr_ceo(multi.getParameter("mbr_ceo"));
			bean.setMbr_estdate(multi.getParameter("mbr_estdate"));
			bean.setMbr_regdate(multi.getParameter("mbr_regdate"));
			bean.setMbr_phone(multi.getParameter("mbr_phone"));
			bean.setMbr_link(multi.getParameter("mbr_link"));
			bean.setMbr_order(Integer.parseInt(multi.getParameter("mbr_order")));
			
			dao.insertMbr(bean);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void updateMbr(HttpServletRequest request, String no) {
		String ENCTYPE = "utf-8";
		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "mbr" + File.separator;
		int MAXSIZE = 20 * 1024 * 1024;

		MbrBean bean = dao.getMbr(no);
		MultipartRequest multi = null;

		File file = new File(filePath);
		if (!file.exists())
			file.mkdirs();

		try {
			multi = new MultipartRequest(request, filePath, MAXSIZE, ENCTYPE, new TimestampFileRenamePolicy("mbr"));

			if (multi.getFilesystemName("mbr_img") != null) {
				File fileImg = new File(filePath + bean.getMbr_img());
				if (fileImg.exists()) {
					if (fileImg.isFile()) {
						fileImg.delete();
					}
				}
				bean.setMbr_img(multi.getFilesystemName("mbr_img"));
			}

			bean.setMbr_name(multi.getParameter("mbr_name"));
			bean.setMbr_ceo(multi.getParameter("mbr_ceo"));
			bean.setMbr_estdate(multi.getParameter("mbr_estdate"));
			bean.setMbr_regdate(multi.getParameter("mbr_regdate"));
			bean.setMbr_phone(multi.getParameter("mbr_phone"));
			bean.setMbr_link(multi.getParameter("mbr_link"));
			bean.setMbr_order(Integer.parseInt(multi.getParameter("mbr_order")));

			if (!"1".equals(no)) {
				bean.setMbr_order(Integer.parseInt(multi.getParameter("mbr_order")));
			}

			dao.updateMbr(Integer.parseInt(no), bean);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	public void getMbrInfo(HttpServletRequest request) {
		String no = request.getParameter("no");
		request.setAttribute("no", no);
		request.setAttribute("bean", dao.getMbr(no));
	}

}

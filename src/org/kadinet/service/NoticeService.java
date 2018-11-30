package org.kadinet.service;

import java.io.File;
import java.io.IOException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kadinet.dao.NoticeDao;
import org.kadinet.model.NoticeBean;
import org.kadinet.util.TimestampFileRenamePolicy;

import com.oreilly.servlet.MultipartRequest;

public class NoticeService {

	private static NoticeService service = new NoticeService();
	public NoticeDao dao = NoticeDao.getInstance();

	private NoticeService() {
	}

	public static NoticeService getInstance() {
		return service;
	}

	public void getNoticeList(String category, HttpServletRequest request) {
		int totalRecord = 0;
		int numPerPage = 10;
		int pagePerBlock = 10;
		int totalPage = 0;
		int totalBlock = 0;
		int nowPage = 1;
		int nowBlock = 1;
		int start = 0;
		String keyWord = "";
		String keyField = "";

		if (request.getParameter("keyWord") != null) {
			keyWord = request.getParameter("keyWord");
			keyField = request.getParameter("keyField");
		}

		if (request.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}

		start = (nowPage * numPerPage) - numPerPage;

		totalRecord = dao.getCount(category, keyField, keyWord);
		totalPage = (int) Math.ceil((double) totalRecord / numPerPage);
		nowBlock = (int) Math.ceil((double) nowPage / pagePerBlock);

		totalBlock = (int) Math.ceil((double) totalPage / pagePerBlock);

		int pageStart = (nowBlock - 1) * pagePerBlock + 1;
		int pageEnd = ((pageStart + pagePerBlock) <= totalPage) ? (pageStart + pagePerBlock - 1) : totalPage;

		Vector<NoticeBean> list = dao.getNoticeList(category, start, numPerPage, keyField, keyWord);

		request.setAttribute("list", list);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("nowBlock", nowBlock);
		request.setAttribute("pageStart", pageStart);
		request.setAttribute("pageEnd", pageEnd);
		request.setAttribute("totalBlock", totalBlock);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("totalRecord", totalRecord);
		request.setAttribute("keyWord", keyWord);
		request.setAttribute("keyField", keyField);

	}

	public void getNotice(HttpServletRequest request, boolean hit) {
		String no = request.getParameter("no");
		if (no == null || no.isEmpty()) {
			no = "1";
		}

		if (hit) {
			dao.upHit(no);
		}

		NoticeBean bean = dao.getNotice(no);
		Vector<NoticeBean> files = dao.getFileList(no);
		String pre[] = dao.getPre(no, bean.getNotice_category());
		String post[] = dao.getPost(no, bean.getNotice_category());

		String[] prePost = { pre[0], pre[1], post[0], post[1] };

		request.setAttribute("bean", bean);
		request.setAttribute("no", no);
		request.setAttribute("prePost", prePost);
		request.setAttribute("files", files);
	}

	public void getIndexNoticeList(HttpServletRequest request) {

		Vector<NoticeBean> noticeList = dao.getIndexNoticeList("notice", 5);
		Vector<NoticeBean> pressList = dao.getIndexNoticeList("press", 7);
		Vector<NoticeBean> dataList = dao.getIndexNoticeList("data", 7);

		request.setAttribute("noticeList", noticeList);
		request.setAttribute("pressList", pressList);
		request.setAttribute("dataList", dataList);
	}

	public void getAdminNoticeList(String category, HttpServletRequest request) {
		Vector<NoticeBean> list = dao.getNoticeList(category);
		request.setAttribute("list", list);

	}

	public String insertNotice(HttpServletRequest request) {
		String ENCTYPE = "utf-8";
		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "notice" + File.separator;
		// String id = (String) session.getAttribute("id");
		int MAXSIZE = 10 * 1024 * 1024;

		Vector<String> fileName = new Vector<String>();

		NoticeBean bean = new NoticeBean();
		MultipartRequest multi = null;

		try {
			multi = new MultipartRequest(request, filePath, MAXSIZE, ENCTYPE, new TimestampFileRenamePolicy("admin"));

			String notice_bool = multi.getParameter("notice_bool");
			if (notice_bool == null) {
				notice_bool = "f";
			}

			bean.setNotice_img("");
			if (multi.getFilesystemName("notice_img") != null) {
				bean.setNotice_img(multi.getFilesystemName("notice_img"));
			}

			int no = dao.getNoticeMaxNo() + 1;
			bean.setNotice_category(multi.getParameter("menu"));
			bean.setNotice_bool(notice_bool);
			bean.setNotice_content(multi.getParameter("ir1"));
			bean.setNotice_title(multi.getParameter("notice_title"));
			bean.setUser_id("admin");
			bean.setNotice_no(no);

			dao.insertNotice(bean);

			if (multi.getOriginalFileName("notice_file1") != null) {
				fileName.add("notice_file1");
			}

			if (multi.getOriginalFileName("notice_file2") != null) {
				fileName.add("notice_file2");
			}

			if (multi.getOriginalFileName("notice_file3") != null) {
				fileName.add("notice_file3");
			}

			if (multi.getOriginalFileName("notice_file4") != null) {
				fileName.add("notice_file4");
			}
			
			for (int i = 0; i < fileName.size(); i++) {
				String oriname = multi.getOriginalFileName(fileName.get(i));
				String rename = multi.getFilesystemName(fileName.get(i));
				File f = multi.getFile(fileName.get(i));
				dao.insertNoticeFile(no, i + 1, oriname, rename, f.length());
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return multi.getParameter("url");
	}
	
	
}

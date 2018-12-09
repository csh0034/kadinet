package org.kadinet.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.kadinet.dao.MemberDao;
import org.kadinet.model.MemberBean;
import org.kadinet.util.TimestampFileRenamePolicy;

import com.oreilly.servlet.MultipartRequest;

public class MemberService {
	private static MemberService service = new MemberService();
	public MemberDao dao = MemberDao.getInstance();

	private MemberService() {
	}

	public static MemberService getInstance() {
		return service;
	}

	public void getMemberData(HttpServletRequest request) {
		request.setAttribute("ceo", dao.getMember(1));
		request.setAttribute("list", dao.getMemberList());
	}

	public void getMemberInfo(HttpServletRequest request) {
		String no = request.getParameter("no");
		request.setAttribute("no", no);
		request.setAttribute("bean", dao.getMember(Integer.parseInt(no)));

	}

	public void insertMember(HttpServletRequest request) {
		String ENCTYPE = "utf-8";
		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "member" + File.separator;
		int MAXSIZE = 20 * 1024 * 1024;

		MemberBean bean = new MemberBean();
		MultipartRequest multi = null;

		File file = new File(filePath);
		if (!file.exists())
			file.mkdirs();

		try {
			multi = new MultipartRequest(request, filePath, MAXSIZE, ENCTYPE, new TimestampFileRenamePolicy("member"));

			if (multi.getFilesystemName("member_img") != null) {
				bean.setMember_img(multi.getFilesystemName("member_img"));
			}

			bean.setMember_name(multi.getParameter("member_name"));
			bean.setMember_etc(multi.getParameter("member_etc"));
			bean.setMember_company(multi.getParameter("member_company"));
			bean.setMember_link(multi.getParameter("member_link"));
			bean.setMember_order(Integer.parseInt(multi.getParameter("member_order")));
			bean.setMember_position(multi.getParameter("member_position"));

			dao.insertMember(bean);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void updateMember(HttpServletRequest request, String no) {
		String ENCTYPE = "utf-8";
		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "member" + File.separator;
		int MAXSIZE = 20 * 1024 * 1024;

		MemberBean bean = dao.getMember(Integer.parseInt(no));
		MultipartRequest multi = null;

		File file = new File(filePath);
		if (!file.exists())
			file.mkdirs();

		try {
			multi = new MultipartRequest(request, filePath, MAXSIZE, ENCTYPE, new TimestampFileRenamePolicy("member"));

			if (multi.getFilesystemName("member_img") != null) {
				File fileImg = new File(filePath + bean.getMember_img());
				if (fileImg.exists()) {
					if (fileImg.isFile()) {
						fileImg.delete();
					}
				}
				bean.setMember_img(multi.getFilesystemName("member_img"));
			}

			bean.setMember_name(multi.getParameter("member_name"));
			bean.setMember_etc(multi.getParameter("member_etc"));
			bean.setMember_company(multi.getParameter("member_company"));
			bean.setMember_link(multi.getParameter("member_link"));

			if (!"1".equals(no)) {
				bean.setMember_order(Integer.parseInt(multi.getParameter("member_order")));
				bean.setMember_position(multi.getParameter("member_position"));
			}

			dao.updateMember(Integer.parseInt(no), bean);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public void deleteMember(HttpServletRequest request) {
		String no = request.getParameter("no");
		String img = request.getParameter("img");

		HttpSession session = request.getSession();
		String dftFilePath = session.getServletContext().getRealPath("/");
		String filePath = dftFilePath + "file" + File.separator + "member" + File.separator;

		File file = new File(filePath + img);
		if (file.exists()) {
			if (file.isFile()) {
				file.delete();
			}
		}

		dao.deleteMember(Integer.parseInt(no));
	}
}

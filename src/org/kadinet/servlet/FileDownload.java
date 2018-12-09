package org.kadinet.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fileDown")
public class FileDownload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String re = request.getParameter("re");
		String downloadName = "";

		if (re == null) {
			response.sendRedirect("/index.do");
		} else {
			String dftFilePath = this.getServletContext().getRealPath("/");
			String filePath = dftFilePath + "file" + File.separator + "notice" + File.separator;

			File file = new File(filePath + re);
			
			String mimeType = getServletContext().getMimeType(file.toString());

			if (mimeType == null) {
				response.setContentType("application/octet-stream");
			}
			
			if (request.getHeader("User-Agent").indexOf("MSIE") == -1) {
				downloadName = URLEncoder.encode(re,"UTF-8").replaceAll("\\+", "%20");
			} else {
				downloadName = new String(re.getBytes("UTF-8"),"ISO-8859-1");
			}
			response.setHeader("Content-Disposition", "attachment;filename=\"" + downloadName +"\";"); 
			
			if (file.isFile()) {
				FileInputStream fin = new FileInputStream(file);
				ServletOutputStream outs = response.getOutputStream();
				
				byte[] b = new byte[1024];
				int data =0;
				while ((data = (fin.read(b , 0 , b.length))) != -1) {
					outs.write(b, 0, data);
				}
				outs.flush();
				outs.close();
				fin.close();
			}
		}

	}
}

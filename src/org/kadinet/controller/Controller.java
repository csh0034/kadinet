package org.kadinet.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response, String path)
			throws ServletException, IOException;
}

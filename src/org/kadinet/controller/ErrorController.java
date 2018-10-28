package org.kadinet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ErrorController implements Controller {

	@Override
	public String[] execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tmp[] = {"2","/errorPage/error404.jsp"};
		return tmp;
	}

}

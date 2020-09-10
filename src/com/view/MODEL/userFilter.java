package com.view.MODEL;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.BEAN.userBEAN;

@WebFilter(urlPatterns = { "/cartController", "/billController" })
public class userFilter implements Filter {

	public userFilter() {
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession hs = req.getSession();

		userBEAN u = (userBEAN) hs.getAttribute("user");
		
		if (u != null) {
			chain.doFilter(request, response);
		} else {
			HttpServletResponse resp = (HttpServletResponse) response;			
			resp.sendRedirect("login.jsp");
			
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}

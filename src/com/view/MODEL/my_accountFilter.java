package com.view.MODEL;

import java.io.IOException;

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

/**
 * Servlet Filter implementation class my_accountFilter
 */
@WebFilter(urlPatterns = { "/userController" })
public class my_accountFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession hs = req.getSession();
		String action = request.getParameter("action");
		String contains = "update account editPassword editAddress addAddress removeAddress";
		if (contains.contains(action)) {
			// nếu hết hiệu lực thì chuyển qua login
			if (hs.getAttribute("user") == null) {
				resp.sendRedirect("login.jsp");
			}
		}
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}

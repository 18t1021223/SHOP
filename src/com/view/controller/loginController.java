package com.view.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.BEAN.cartBEAN;
import com.view.BEAN.userBEAN;
import com.view.BO.cartBO;
import com.view.BO.userBO;

@WebServlet(urlPatterns = { "/loginController" })
public class loginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		check_login(req, resp, username, password);
	}

	public void check_login(HttpServletRequest req, HttpServletResponse resp, String username, String password)
			throws ServletException, IOException {
		HttpSession hs = req.getSession();

		userBEAN u = userBO.checkLogin(username, password);
		if (u != null) {
			hs.setAttribute("user", u);

			ArrayList<cartBEAN> ds = (ArrayList<cartBEAN>) cartBO.getCart(u.getUser_id());
			hs.setAttribute("cart_list", ds);
			//lấy ra tổng số tiền
			hs.setAttribute("cart_total", cartBO.getCartPriceTotal(u.getUser_id()));
			// xóa
			hs.setMaxInactiveInterval(5);
			req.getRequestDispatcher("/controller_direction?page=shop&numberPage=1&init=init&user=exists").forward(req,
					resp);
			
		} else {
			resp.sendRedirect("login.jsp");
		}
	}
}

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
import com.view.MODEL.cartModel;

@WebServlet(urlPatterns = { "/loginController" })
public class loginController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	public boolean check_login(HttpServletRequest req, HttpServletResponse resp, String email, String password)
			throws ServletException, IOException {
		HttpSession hs = req.getSession();
		userBEAN u = userBO.checkLogin(email, password);
		if (u != null) {
			hs.setAttribute("user", u);
			khoitaoAttribute(req, resp);
			return true;
		}
		return false;
	}

	public static void khoitaoAttribute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");

		ArrayList<cartBEAN> ds = (ArrayList<cartBEAN>) cartBO.getCart(u.getUser_id());
		// lấy giỏ hàng trong DB
		cartModel cart = new cartModel();

		for (cartBEAN cartBEAN : ds) {
			cart.addProduct(cartBEAN);
		}
		hs.setAttribute("cart_model", cart);
		// thoi gian song
		hs.setMaxInactiveInterval(240);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/hmtl");
		if ( check_login(req, resp, username, password) == false) {
			resp.getWriter().write("3");
		} else{
			resp.getWriter().write("shop.jsp");
		}
	}
}

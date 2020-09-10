package com.view.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.BEAN.imageBEAN;
import com.view.BEAN.productBEAN;
import com.view.BO.imageBO;
import com.view.BO.productBO;
import com.view.MODEL.productAjax;
import com.view.utils.messengerUTILS;

@WebServlet("/productController")
public class productController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String page = req.getParameter("page");
		if (page.equals("shop")) {
			shop(req, resp);
		} else if (page.equals("billDetail")) {
			billDetail(req, resp);

		} else if (page.equals("cart")) {
			cart(req, resp);
		}
	}

	public void shop(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String product_id = req.getParameter("product_id");
		productBEAN prod = productBO.getProduct(product_id);
		if (prod == null) {
			messengerUTILS.showMSG("ERROR_SYSTEM");
			req.getRequestDispatcher("shop.jsp").forward(req, resp);
		} else {
			HttpSession hs = req.getSession();
			ArrayList<imageBEAN> ds = (ArrayList<imageBEAN>) imageBO.getImageAll(product_id);
			hs.setAttribute("productImageAll", ds);
			hs.setAttribute("product", prod);
			req.getRequestDispatcher("product-details.jsp").forward(req, resp);
		}
	}

	// CHƯA LÀM
	public void billDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action.equals("showProduct")) {
			String product_id = req.getParameter("product_id");
			productBEAN prod = productBO.getProduct(product_id);
			if (prod != null) {
				ArrayList<imageBEAN> ds = (ArrayList<imageBEAN>) imageBO.getImageAll(product_id);
				req.setAttribute("productImageAll", ds);
				req.setAttribute("product", prod);
				req.getRequestDispatcher("product-details.jsp").forward(req, resp);
			} 
		}
	}

	public void cart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String product_id = req.getParameter("product_id");
		productBEAN prod = productBO.getProduct(product_id);
		ArrayList<imageBEAN> ds = (ArrayList<imageBEAN>) imageBO.getImageAll(product_id);
		req.setAttribute("productImageAll", ds);
		req.setAttribute("product", prod);
		req.getRequestDispatcher("product-details.jsp").forward(req, resp);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action.equals("quickView")) {
			String product_id = req.getParameter("product_id");
			productBEAN prod = productBO.getProduct(product_id);
			productAjax.quickView(req, resp, prod);
		} 

	}

}

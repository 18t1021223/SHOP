package com.view.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.BEAN.categoryBEAN;
import com.view.BEAN.imageBEAN;
import com.view.BEAN.producerBEAN;
import com.view.BEAN.productBEAN;
import com.view.BO.categoryBO;
import com.view.BO.imageBO;
import com.view.BO.producerBO;
import com.view.BO.productBO;

@WebServlet("/controller_direction")
public class controller_direction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public controller_direction() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession hs = request.getSession();

		String page = (String) request.getParameter("page");
		if (page != null) {
			controller_directionPage(request, response, page);
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void controller_directionPage(HttpServletRequest req, HttpServletResponse resp, String page)
			throws ServletException, IOException {
		HttpSession hs = req.getSession();

		if (page.equals("shop")) {

			int total = productBO.getProductTotal(utils.productFilter(req));
			int fetch = 16;
			int totalPage = utils.getTotalPage((double) total, (double) fetch);
			int current_page = utils.currentPage(req.getParameter("numberPage"), totalPage);
			int offset = (current_page - 1) * fetch;

			ArrayList<productBEAN> dsProd = (ArrayList<productBEAN>) productBO.getProductAll(utils.productFilter(req),
					offset, fetch);

			hs.setAttribute("totalPage", totalPage);
			hs.setAttribute("numberPage", current_page);
			hs.setAttribute("product_list", dsProd);

			ArrayList<categoryBEAN> dsCate = (ArrayList<categoryBEAN>) categoryBO.getCategoryAll();
			ArrayList<producerBEAN> dsProducer = (ArrayList<producerBEAN>) producerBO.getProducerAll();

			hs.setAttribute("category_list", dsCate);
			hs.setAttribute("producer_list", dsProducer);

			req.getRequestDispatcher("controller_direction?page=view").forward(req, resp);
		} else if (page.equals("view")) {

			req.getRequestDispatcher("shop.jsp").forward(req, resp);
		}

	}

}

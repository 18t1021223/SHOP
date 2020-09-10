package com.view.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.view.BEAN.cartBEAN;
import com.view.BEAN.productBEAN;
import com.view.BEAN.userBEAN;
import com.view.BO.cartBO;
import com.view.BO.productBO;
import com.view.MODEL.cartModel;
import com.view.MODEL.productAjax;
import com.view.constan.systemCONSTANT;
import com.view.utils.messengerUTILS;

@WebServlet("/cartController")
public class cartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		check(request, response, action);
	}

	public void check(HttpServletRequest req, HttpServletResponse resp, String action)
			throws IOException, ServletException {
		HttpSession hs = req.getSession();

		/*------------*/
		cartModel cart = (cartModel) hs.getAttribute("cart_model");
		userBEAN user = (userBEAN) hs.getAttribute("user");
		/*------------*/

		// xóa theo mã sản phẩm (product_id)
		if (action.equals("remove")) {
			String id = req.getParameter("product_id");
			if (!cartBO.removeCart(id)) {
				hs.setAttribute("msg", messengerUTILS.showMSG(systemCONSTANT.ERROR_SYSTEM));
			}

		} else if (action.equals("viewcart")) {
			loginController.khoitaoAttribute(req, resp);
			req.getRequestDispatcher("cart.jsp").forward(req, resp);

		} else if (action.equals("add")) {

			String product_id = req.getParameter("product_id");
			int quantify = Integer.parseInt(req.getParameter("quantify"));
			String msg = "";
			productBEAN prod = productBO.getProduct(product_id);
			if (prod != null) {

				if (cart.containsKey(prod.getProduct_id())) {
					cart.addProduct(new cartBEAN(quantify, prod));
					cartBEAN temp = cart.get(product_id);
					// update số lượng nếu tồn tại trong db
					cartBO.updateProduct(temp.getCart_quantify(), temp.getProd().getProduct_id(), user.getUser_id());
				} else {
					// them vao csdl nếu chưa tồn tại
					cartBO.insertProduct(quantify, product_id, user.getUser_id());
				}

				msg = messengerUTILS.showMSG("INSERT_SUCCESS");
			} else {
				msg = messengerUTILS.showMSG("ERROR_SYSTEM");
			}
			hs.setAttribute("msg", msg);

		} else if (action.equals("update")) {

			String product_id = req.getParameter("product_id");
			int quantify = 1;
			try {
				quantify = Integer.parseInt(req.getParameter("quantify"));
				if (quantify <= 0) {
					quantify = 1;
				}
			} catch (Exception e) {
				quantify = 1;
			}

			String user_id = ((userBEAN) hs.getAttribute("user")).getUser_id();
			if (cartBO.updateProduct(quantify, product_id, user_id) == false) {
				hs.setAttribute("msg", messengerUTILS.showMSG(systemCONSTANT.ERROR_SYSTEM));
			}
		}

		// <<<----end-->>>>
		loginController.khoitaoAttribute(req, resp);
		cartModel cm = (cartModel) hs.getAttribute("cart_model");
		productAjax.getCartJson(req, resp, cm);
	}

}

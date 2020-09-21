package com.view.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.CheckedOutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.basic.BasicScrollPaneUI.HSBChangeListener;

import com.google.gson.Gson;
import com.view.BEAN.addressToBEAN;
import com.view.BEAN.billBEAN;
import com.view.BEAN.billDetailBEAN;
import com.view.BEAN.userBEAN;
import com.view.BO.addressToBO;
import com.view.BO.billBO;
import com.view.BO.userBO;

@WebServlet("/billController")
public class billController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");

		if (action.equals("show")) {
			show(req, resp);
		} else if (action.equals("showDetail")) {
			showDetail(req, resp);
		} else if (action.equals("getAddress")) {
			getAddress(req, resp);
		}
	}

	public void show(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		ArrayList<billBEAN> ds = billBO.getBill(u.getUser_id());
		hs.setAttribute("bill_list", ds);
		hs.setAttribute("layout", 2);

		req.getRequestDispatcher("my-account.jsp").forward(req, resp);
	}

	public void showDetail(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String bill_id = req.getParameter("bill_id");
		ArrayList<billDetailBEAN> ds = billBO.getBillDetail(bill_id);
		billBEAN b = billBO.getBillSingle(bill_id);
		Gson g = new Gson();
		String temp1 = g.toJson(b);
		String temp2 = g.toJson(ds);

		resp.setContentType("application/json");
		resp.setCharacterEncoding("utf-8");
		resp.getWriter().write(temp1 + "&&" + temp2);
	}

	public void getAddress(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		resp.setCharacterEncoding("utf-8");
		resp.setContentType("application/json");
		addressToBEAN as = addressToBO.getAddressSingle(req.getParameter("address_id"));

		resp.getWriter().write(new Gson().toJson(as));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

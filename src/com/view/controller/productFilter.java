package com.view.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.Filter;

import javafx.util.converter.ShortStringConverter;

@WebServlet(urlPatterns = { "/productFilter" })
public class productFilter extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		categoryFilter(req, resp);
	}

	public void categoryFilter(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String category_id = req.getParameter("category_id");
		String producer_id = req.getParameter("producer_id");
		String product_price = req.getParameter("product_price");
		
		if (category_id != null) {
			category_id = " P.Category_id = '" + category_id + "'";
		} else {
			category_id = " P.Category_id >'' ";
		}
		if (producer_id != null) {
			producer_id = "p.Producer_id = '" + producer_id + "' ";
		} else {
			producer_id = " p.Producer_id >'' ";
		}
		if (product_price != null) {
			if (product_price.equals("thap"))
				product_price = " p.Product_price < 100000 ";
			else if (product_price.equals("trungbinh")) {
				product_price = "( p.Product_price > 100000 and p.Product_price < 200000 ) ";
			} else if (product_price.equals("vua")) {
				product_price = "( p.Product_price > 200000 and p.Product_price < 400000 ) ";
			} else {
				product_price = " p.Product_price > 400000 ";
			}
		} else {
			product_price = " p.Product_price>0 ";
		}
		
		String url = "controller_direction?page=shop&w";
		req.getRequestDispatcher(url).forward(req, resp);
	}
}

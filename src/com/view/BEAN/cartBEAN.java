package com.view.BEAN;

import com.view.controller.utils;

public class cartBEAN {
	private int cart_quantify;
	private productBEAN prod;

	public cartBEAN(int cart_quantify, productBEAN prod) {
		super();
		this.cart_quantify = cart_quantify;
		this.prod = prod;
	}

	public cartBEAN() {
		// TODO Auto-generated constructor stub
	}

	public int getCart_quantify() {
		return cart_quantify;
	}

	public void setCart_quantify(int cart_quantify) {
		this.cart_quantify = cart_quantify;
	}

	public productBEAN getProd() {
		return prod;
	}

	public void setProd(productBEAN prod) {
		this.prod = prod;
	}

	public double getPriceTotal() {
		return (double) (cart_quantify * prod.checkProductSale());
	}

	public String getPriceTotalFormat() {
		return utils.formatNumber((cart_quantify * prod.checkProductSale()));
	}

}

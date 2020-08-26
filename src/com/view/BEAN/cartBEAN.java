package com.view.BEAN;

public class cartBEAN {
	private String cart_id;
	private int cart_quantify;
	private productBEAN prod;
	private userBEAN user;

	public cartBEAN(String cart_id, int cart_quantify, productBEAN prod, userBEAN user) {
		super();
		this.cart_id = cart_id;

		this.cart_quantify = cart_quantify;
		this.prod = prod;
		this.user = user;
	}

	public cartBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getCart_id() {
		return cart_id;
	}

	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
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

	public userBEAN getUser() {
		return user;
	}

	public void setUser(userBEAN user) {
		this.user = user;
	}

	public double getPriceTotal() {
		return (double) (cart_quantify * prod.checkProductSale());
	}

}

package com.view.BEAN;

import com.view.BO.categoryBO;

public class categoryBEAN {
	private String category_id, category_name;

	public categoryBEAN(String category_id, String category_name) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
	}

	public categoryBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getCategory_id() {
		return category_id;
	}

	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public int getProduct() {
		// in ra tong so san pham
		return categoryBO.getProductTotal(this.category_id);
	}

}

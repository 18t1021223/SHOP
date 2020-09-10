package com.view.BEAN;

import com.view.controller.utils;

public class billDetailBEAN {
	private String billdetail_id, billdetail_name, billdetail_image, product_id, bill_id;
	private String billdetail_sale;
	private String billdetail_price, billdetail_total;
	private int billdetail_quantify;

	public billDetailBEAN(String billdetail_id, String billdetail_name, String billdetail_image, String product_id,
			String bill_id, double billdetail_sale, double billdetail_price, double billdetail_total,
			int billdetail_quantify) {
		super();
		setBill_id(bill_id);
		setBilldetail_name(billdetail_name);
		setBilldetail_image(billdetail_image);
		setProduct_id(product_id);
		setBill_id(bill_id);
		setBilldetail_sale(billdetail_sale);
		setBilldetail_price(billdetail_price);
		setBilldetail_quantify(billdetail_quantify);
		setBilldetail_total(billdetail_total);
	}

	public billDetailBEAN() {
	}

	public String getBilldetail_id() {
		return billdetail_id;
	}

	public void setBilldetail_id(String billdetail_id) {
		this.billdetail_id = billdetail_id;
	}

	public String getBilldetail_name() {
		return billdetail_name;
	}

	public void setBilldetail_name(String billdetail_name) {
		this.billdetail_name = billdetail_name;
	}

	public String getBilldetail_image() {
		return billdetail_image;
	}

	public void setBilldetail_image(String billdetail_image) {
		this.billdetail_image = billdetail_image;
	}

	public String getProduct_id() {
		return product_id;
	}

	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}

	public String getBill_id() {
		return bill_id;
	}

	public void setBill_id(String bill_id) {
		this.bill_id = bill_id;
	}

	public String getBilldetail_sale() {
		return billdetail_sale;
	}

	public void setBilldetail_sale(double billdetail_sale) {
		this.billdetail_sale = utils.formatNumber(billdetail_sale);
	}

	public String getBilldetail_price() {
		return billdetail_price;
	}

	public void setBilldetail_price(double billdetail_price) {
		this.billdetail_price = utils.formatNumber(billdetail_price);
	}

	public int getBilldetail_quantify() {
		return billdetail_quantify;
	}

	public void setBilldetail_quantify(int billdetail_quantify) {
		this.billdetail_quantify = billdetail_quantify;
	}

	public String getBilldetail_total() {
		return billdetail_total;
	}

	public void setBilldetail_total(double billdetail_total) {
		this.billdetail_total = utils.formatNumber(billdetail_total);
	}

}

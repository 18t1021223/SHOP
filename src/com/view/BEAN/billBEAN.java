package com.view.BEAN;

import com.view.BO.billBO;
import com.view.controller.utils;

public class billBEAN {
	private String bill_id, bill_address, bill_date, user_id;
	private String payment_name, status_name;
	private String bill_total, bill_costs, bill_temp, bill_costsSale;

	public billBEAN() {

	}

	public billBEAN(String bill_id, String bill_address, String bill_date, String user_id, int payment_id,
			int status_id, double bill_total, double bill_costs, double bill_temp, double bill_costsSale) {
		setBill_id(bill_id);
		setBill_address(bill_address);
		setBill_date(bill_date);
		setUser_id(user_id);
		setPayment_name(payment_id);
		setStatus_name(status_id);
		setBill_total(bill_total);
		setBill_costs(bill_costs);
		setBill_temp(bill_temp);
		setBill_costsSale(bill_costsSale);

	}

	public String getBill_id() {
		return bill_id;
	}

	public void setBill_id(String bill_id) {
		this.bill_id = bill_id;
	}

	public String getBill_address() {
		return bill_address;
	}

	public void setBill_address(String bill_address) {
		this.bill_address = bill_address;
	}

	public String getBill_date() {
		return bill_date;
	}

	public void setBill_date(String bill_date) {
		this.bill_date = bill_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPayment_name() {
		return payment_name;
	}

	public void setPayment_name(int payment_id) {
		this.payment_name = billBO.getNamePayment(payment_id);
	}

	public String getStatus_name() {
		return status_name;
	}

	public void setStatus_name(int status_id) {
		this.status_name = billBO.getNameStatus(status_id);
	}

	public String getBill_total() {
		return bill_total;
	}

	public void setBill_total(double bill_total) {
		this.bill_total = utils.formatNumber(bill_total);
	}

	public String getBill_costs() {
		return bill_costs;
	}

	public void setBill_costs(double bill_costs) {
		this.bill_costs = utils.formatNumber(bill_costs);
	}

	// lấy ten sản phẩm dau tien
	public String getProductFirstName() {
		return billBO.getProductFirstName(bill_id);
	}

	// lay so luong san pham cua don hang
	public int getProductQuantify() {
		return billBO.getProductTotal(bill_id);
	}

	public String getBill_temp() {
		return bill_temp;
	}

	public void setBill_temp(double bill_temp) {
		this.bill_temp = utils.formatNumber(bill_temp);
	}

	public String getBill_costsSale() {
		return bill_costsSale;
	}

	public void setBill_costsSale(double bill_costsSale) {
		this.bill_costsSale = utils.formatNumber(bill_costsSale);
	}

}

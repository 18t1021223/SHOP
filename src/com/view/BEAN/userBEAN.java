package com.view.BEAN;

import com.view.BO.cartBO;

public class userBEAN {
	private String user_id, user_name, user_email, user_password, user_telephone, user_birthday, user_role;
	private boolean user_gender;

	public userBEAN(String user_id, String user_name, String user_email, String user_password, String user_telephone,
			String user_birthday, String user_role, boolean user_gender) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_telephone = user_telephone;
		this.user_birthday = user_birthday;

		this.user_role = user_role;
		this.user_gender = user_gender;
	}

	public userBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_telephone() {
		return user_telephone;
	}

	public void setUser_telephone(String user_telephone) {
		this.user_telephone = user_telephone;
	}

	public String getUser_birthday() {
		return user_birthday;
	}

	public void setUser_birthday(String user_birthday) {
		this.user_birthday = user_birthday;
	}

	public String getUser_role() {
		return user_role;
	}

	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}

	public boolean isUser_gender() {
		return user_gender;
	}

	public void setUser_gender(boolean user_gender) {
		this.user_gender = user_gender;
	}

	// xuaats ra tổng số sản phẩm trong giỏ hàng
	public int getCartTotal() {
		return cartBO.getProductTotal(user_id);
	}

	// tính tổng số tiền san phẩm trong giỏ hàng
	public double getCartPriceTotal() {
		return cartBO.getCartPriceTotal(user_id);
	}
}

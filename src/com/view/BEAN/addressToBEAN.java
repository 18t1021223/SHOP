package com.view.BEAN;

public class addressToBEAN {
	private String address_id, address_telephone, address_description, user_id, address_type, address_user,
			address_code;

	public addressToBEAN(String address_id, String address_telephone, String address_description, String user_id,
			String address_type, String address_user, String address_code) {
		super();
		this.address_id = address_id;
		this.address_telephone = address_telephone;
		this.address_description = address_description;
		this.user_id = user_id;
		this.address_type = address_type;
		this.address_user = address_user;
		this.address_code = address_code;
	}

	public addressToBEAN() {
		// TODO Auto-generated constructor stub
	}

	public String getAddress_id() {
		return address_id;
	}

	public void setAddress_id(String address_id) {
		this.address_id = address_id;
	}

	public String getAddress_telephone() {
		return address_telephone;
	}

	public void setAddress_telephone(String address_telephone) {
		this.address_telephone = address_telephone;
	}

	public String getAddress_description() {
		return address_description;
	}

	public void setAddress_description(String address_description) {
		this.address_description = address_description;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAddress_type() {
		return address_type;
	}

	public void setAddress_type(String address_type) {
		this.address_type = address_type;
	}

	public String getAddress_user() {
		return address_user;
	}

	public void setAddress_user(String address_user) {
		this.address_user = address_user;
	}

	public String getAddress_code() {
		return address_code;
	}

	public void setAddress_code(String address_code) {
		this.address_code = address_code;
	}

}

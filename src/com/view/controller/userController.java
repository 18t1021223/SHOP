package com.view.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.Email;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.SimpleEmail;

import com.google.gson.Gson;
import com.view.BEAN.addressToBEAN;
import com.view.BEAN.billBEAN;
import com.view.BEAN.userBEAN;
import com.view.BO.addressToBO;
import com.view.BO.billBO;
import com.view.BO.userBO;
import com.view.MODEL.my_accountAjax;
import com.view.constan.systemCONSTANT;
import com.view.utils.messengerUTILS;

@WebServlet("/userController")
public class userController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		String action = req.getParameter("action");
		HttpSession hs = req.getSession();
		if (action.equals("logout"))
			logout(req, resp);
		else if (action.equals("register")) {
			String EMAIL_TO = req.getParameter("user_email");
			// nếu email đã tồn tại thi báo lỗi
			if (userBO.checkEmail(EMAIL_TO) == 1) {
				resp.getWriter().write("4");
				resp.getWriter().close();
				return;
			}
			register(req, resp, EMAIL_TO);

			hs.setAttribute("user_name", req.getParameter("user_name"));
			hs.setAttribute("user_password", req.getParameter("user_password"));
			hs.setAttribute("user_email", EMAIL_TO);
		} else if (action.equals("verification")) {
			verification(req, resp);
		} else if (action.equals("forget")) {
			String EMAIL_TO = req.getParameter("user_email");
			forget(req, resp, EMAIL_TO);
		} else if (action.equals("update")) {
			update(req, resp);
		} else if (action.equals("editPassword")) {
			editPassword(req, resp);
		} else if (action.equals("account")) {
			// chuyển đến để kiểm tra user đã hết phiên chưa
			// và lấy dịa chỉ
			account(req, resp);
		} else if (action.equals("editAddress")) {
			editAddress(req, resp);
		} else if (action.equals("addAddress")) {
			addAddress(req, resp);
		} else if (action.equals("addressDefault")) {
			addressDefault(req, resp);
		} else if (action.equals("addressRemove")) {
			addressRemove(req, resp);
		}
	}

	public void logout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession hs = req.getSession();
		hs.invalidate();
		resp.sendRedirect("login.jsp");
	}

	public void register(HttpServletRequest req, HttpServletResponse resp, String EMAIL_TO) throws IOException {

		try {
			HtmlEmail email = new HtmlEmail();
			email.setAuthentication(systemCONSTANT.EMAIL_NAME, systemCONSTANT.EMAIL_PASSWORD);
			email.setHostName("smtp.googlemail.com");
			email.setSmtpPort(465);
			email.setSSLOnConnect(true);
			email.setCharset("utf-8");
			// Người gửi
			email.setFrom(systemCONSTANT.EMAIL_NAME);
			UUID u = UUID.randomUUID();
			// Tiêu đề
			email.setSubject("Mã xác nhận tài khoản");
			// Nội dung email
			String url = req.getRequestURL() + "?action=verification&verification_code=" + u;
			email.setHtmlMsg("<html>" + "<p>Mã xác nhận tài khoản " + EMAIL_TO + " là: </p>" + u + "<br>" + " <a href='"
					+ url + "'> click xác nhận</a>" + "  </html>");
			// Người nhận
			email.addTo(EMAIL_TO);

			email.send();
			System.out.println("Sent!!");
			// nếu gửi thành công thì luu mã uuid
			HttpSession hs = req.getSession();
			hs.setAttribute("verification", u + "");
			hs.setMaxInactiveInterval(120);

			// http://localhost:9999/demo_webapp/verification.jsp
			resp.getWriter().write("verification.jsp");
		} catch (Exception e) {
			System.out.println("register- loi: " + e.getMessage());
			resp.sendError(404);
		}
	}

	public void verification(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String EMAIL_CODE = req.getParameter("verification_code");
		HttpSession hs = req.getSession();

		if (hs.getAttribute("verification") == null) {
			resp.sendError(404, "hết thời gian xác thực Email ");
			return;
		}
		if (hs.getAttribute("verification").equals(EMAIL_CODE.trim())) {

			UUID u = UUID.randomUUID();
			userBEAN user = new userBEAN();
			user.setUser_id(u + "");
			user.setUser_name((String) hs.getAttribute("user_name"));
			user.setUser_email((String) hs.getAttribute("user_email"));
			user.setUser_password((String) hs.getAttribute("user_password"));

			userBO.insertUser(user);
			String url = "loginController?username=" + user.getUser_email() + "&password=" + user.getUser_password();
			hs.invalidate();
			req.getRequestDispatcher(url).forward(req, resp);
		} else {
			resp.sendError(404, "Mã xác nhận sai , vui lòng thử lại");
		}

	}

	public boolean forget(HttpServletRequest req, HttpServletResponse resp, String EMAIL_TO) throws IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		HttpSession hs = req.getSession();
		try {
			UUID u = UUID.randomUUID();
			String pass_new = u + "";
			int begin = pass_new.lastIndexOf('-');
			String b = pass_new.substring(begin + 1, pass_new.length());
			userBEAN user = userBO.getUserEmail(EMAIL_TO);
			// nếu tài khoản tồn tại trong csdl thì update
			if (user != null) {

				user.setUser_password(b);
				userBO.eidtPassword(user.getUser_password(), user.getUser_id());

				HtmlEmail email = new HtmlEmail();
				email.setAuthentication(systemCONSTANT.EMAIL_NAME, systemCONSTANT.EMAIL_PASSWORD);
				email.setHostName("smtp.googlemail.com");
				email.setSmtpPort(465);
				email.setSSLOnConnect(true);
				// Người gửi
				email.setFrom(systemCONSTANT.EMAIL_NAME, "SHOP");
				email.setCharset("utf-8");
				// Tiêu đề
				email.setSubject("Mật khẩu mới");
				// Nội dung email
				email.setHtmlMsg("<html> <h3>Mật khẩu mới của bạn là:</h3> <br> " + b + "  </html>");
				// Người nhận
				email.addTo(EMAIL_TO);
				// (Trong trường hợp chương trình đọc mail của người nhận ko hỗ
				// trợ đọc HTML Email)
				email.setTextMsg("Your email client does not support HTML messages");
				email.send();
				System.out.println("password Sent!!");
				// thông báo ra jsp
				resp.getWriter().write("1");
				return true;
			} else {
				// neeus khoong co trong csdl
				resp.getWriter().write("2");
			}
		} catch (Exception e) {
			System.out.println("forget- loi: " + e.getMessage());
			resp.sendError(404);
		}
		return false;
	}

	public void update(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		String user_name = req.getParameter("user_name");
		String user_telephone = req.getParameter("user_telephone");
		String user_gender = req.getParameter("user_gender");
		String user_birthday = req.getParameter("user_birthday");
		u.setUser_name(user_name);
		u.setUser_telephone(user_telephone);
		u.setUser_gender(user_gender);
		u.setUser_birthday(user_birthday);
		String msg = "";
		if (userBO.updateUser(u)) {
			hs.setAttribute("user", u);
			msg = messengerUTILS.showMSG(systemCONSTANT.UPDATE_SUCCESS);
		} else {
			msg = messengerUTILS.showMSG(systemCONSTANT.ERROR_SYSTEM);
		}
		hs.setAttribute("layout", 0);
		hs.setAttribute("msg", msg);
	}

	public void editPassword(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		if (req.getParameter("pass-current").equals(u.getUser_password()) == false) {
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("text/html");
			resp.getWriter().write(messengerUTILS.showMSG(systemCONSTANT.FAIL_SYSTEM));
		} else {
			String password = req.getParameter("password");
			if (userBO.eidtPassword(password, u.getUser_id())) {
				u.setUser_password(password);
				hs.setAttribute("user", u);
				hs.setAttribute("msg", messengerUTILS.showMSG(systemCONSTANT.UPDATE_SUCCESS));
			}
			hs.setAttribute("layout", 0);
		}
	}

	public void editAddress(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		String address_id = req.getParameter("address_id");
		String address_user = req.getParameter("address_user");
		String address_telephone = req.getParameter("address_telephone");
		int province_id = Integer.parseInt(req.getParameter("province"));
		int district_id = Integer.parseInt(req.getParameter("district"));
		String address_description = req.getParameter("address_description");
		int ward_id = 0;
		try {
			ward_id = Integer.parseInt(req.getParameter("ward"));
			address_description += "|" + addressToBO.getName(province_id, district_id, ward_id);
		} catch (Exception e) {
			address_description += "|" + addressToBO.getName(province_id, district_id);
		}
		String address_code = ward_id + " " + district_id + " " + province_id;
		addressToBEAN a = new addressToBEAN(address_id, address_telephone, address_description, u.getUser_id(), null,
				address_user, address_code);

		String msg = "";
		if (addressToBO.updateAddress(a)) {
			msg = messengerUTILS.showMSG(systemCONSTANT.UPDATE_SUCCESS);
		} else {
			msg = messengerUTILS.showMSG(systemCONSTANT.ERROR_SYSTEM);
		}
		hs.setAttribute("msg", msg);
		hs.setAttribute("layout", 1);
		ArrayList<addressToBEAN> dsAddress = addressToBO.getAddress(u.getUser_id());
		hs.setAttribute("address_list", dsAddress);
	}

	public void addAddress(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		Random r = new Random();
		String address_id = r.nextInt() + "";
		String address_user = req.getParameter("address_user");
		String address_telephone = req.getParameter("address_telephone");
		int province_id = Integer.parseInt(req.getParameter("province"));
		int district_id = Integer.parseInt(req.getParameter("district"));
		String address_description = req.getParameter("address_description");
		int ward_id = 0;
		try {
			ward_id = Integer.parseInt(req.getParameter("ward"));
			address_description += "|" + addressToBO.getName(province_id, district_id, ward_id);
		} catch (Exception e) {
			address_description += "|" + addressToBO.getName(province_id, district_id);
		}
		String address_code = ward_id + " " + district_id + " " + province_id;
		addressToBEAN a = new addressToBEAN(address_id, address_telephone, address_description, u.getUser_id(), null,
				address_user, address_code);
		String msg = "";
		if (addressToBO.insertAddress(a)) {
			msg = messengerUTILS.showMSG(systemCONSTANT.INSERT_SUCCESS);
		} else {
			msg = messengerUTILS.showMSG(systemCONSTANT.ERROR_SYSTEM);
		}
		hs.setAttribute("msg", msg);
		hs.setAttribute("layout", 1);
		ArrayList<addressToBEAN> dsAddress = addressToBO.getAddress(u.getUser_id());
		hs.setAttribute("address_list", dsAddress);
	}

	// chinh sua dia chi mac dinh
	public void addressDefault(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String address_id = req.getParameter("address_id");
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");

		addressToBO.updateAddressType(u.getUser_id(), address_id, "1");
		hs.setAttribute("layout", 1);
		ArrayList<addressToBEAN> dsAddress = addressToBO.getAddress(u.getUser_id());
		hs.setAttribute("address_list", dsAddress);
	}

	// xoa dia chi
	public void addressRemove(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		String address_id = req.getParameter("address_id");
		userBEAN u = (userBEAN) hs.getAttribute("user");
		addressToBO.removeAddress(address_id);

		hs.setAttribute("layout", 1);
		// nạp danh sách địa chỉ
		ArrayList<addressToBEAN> dsAddress = addressToBO.getAddress(u.getUser_id());
		hs.setAttribute("address_list", dsAddress);
	}

	public void account(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		userBEAN u = (userBEAN) hs.getAttribute("user");
		// nạp danh sách địa chỉ
		ArrayList<addressToBEAN> dsAddress = addressToBO.getAddress(u.getUser_id());
		hs.setAttribute("address_list", dsAddress);

		ArrayList<billBEAN> ds = billBO.getBill(u.getUser_id());
		hs.setAttribute("bill_list", ds);

		req.getRequestDispatcher("my-account.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action.equals("address")) {
			String province_id = req.getParameter("province");
			String district_id = req.getParameter("district");
			if (province_id != null) {
				HashMap<Integer, String> ds = addressToBO.getDistrict(Integer.parseInt(province_id));
				my_accountAjax.getDistrict(req, resp, ds);
			} else if (district_id != null) {
				try {
					HashMap<Integer, String> ds = addressToBO.getWard(Integer.parseInt(district_id));
					my_accountAjax.getWard(req, resp, ds);
				} catch (Exception e) {
				}

			} else {
				String mission = req.getParameter("mission");
				if (mission.equals("add")) {

					HashMap<Integer, String> ds = addressToBO.getProvince();
					my_accountAjax.getProvince(req, resp, ds);
				} else if (mission.equals("edit")) {

					addressToBEAN a = addressToBO.getAddressSingle(req.getParameter("address_id"));
					String info = new Gson().toJson(a);
					resp.setContentType("application/json");
					resp.setCharacterEncoding("utf-8");
					resp.getWriter().write(info);
				}
			}
		} else if (action.equals("bill")) {

		}
	}

}

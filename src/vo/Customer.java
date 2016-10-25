package vo;

public class Customer {

	private String cust_email;
	private String cust_password;
	private String cust_nickname;
	private String cust_address;
	private String cust_birthday;
	private String cust_gender;
	private String cust_activity;
	private String cust_signup_date;
	
	public Customer() {
	}

	public Customer(String cust_email, String cust_password, String cust_nickname, String cust_address,
			String cust_birthday, String cust_gender, String cust_activity, String cust_signup_date) {
		this.cust_email = cust_email;
		this.cust_password = cust_password;
		this.cust_nickname = cust_nickname;
		this.cust_address = cust_address;
		this.cust_birthday = cust_birthday;
		this.cust_gender = cust_gender;
		this.cust_activity = cust_activity;
		this.cust_signup_date = cust_signup_date;
	}

	public String getCust_email() {
		return cust_email;
	}

	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}

	public String getCust_password() {
		return cust_password;
	}

	public void setCust_password(String cust_password) {
		this.cust_password = cust_password;
	}

	public String getCust_nickname() {
		return cust_nickname;
	}

	public void setCust_nickname(String cust_nickname) {
		this.cust_nickname = cust_nickname;
	}

	public String getCust_address() {
		return cust_address;
	}

	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}

	public String getCust_birthday() {
		return cust_birthday;
	}

	public void setCust_birthday(String cust_birthday) {
		this.cust_birthday = cust_birthday;
	}

	public String getCust_gender() {
		return cust_gender;
	}

	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}

	public String getCust_activity() {
		return cust_activity;
	}

	public void setCust_activity(String cust_activity) {
		this.cust_activity = cust_activity;
	}

	public String getCust_signup_date() {
		return cust_signup_date;
	}

	public void setCust_signup_date(String cust_signup_date) {
		this.cust_signup_date = cust_signup_date;
	}

	@Override
	public String toString() {
		return "Customer [cust_email=" + cust_email + ", cust_password=" + cust_password + ", cust_nickname="
				+ cust_nickname + ", cust_address=" + cust_address + ", cust_birthday=" + cust_birthday
				+ ", cust_gender=" + cust_gender + ", cust_activity=" + cust_activity + ", cust_signup_date="
				+ cust_signup_date + "]";
	}
	
}

package action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.CustomerDAO;
import vo.Customer;

public class AndroidAction extends ActionSupport implements SessionAware{
	private Map<String, Object> session;
	private boolean loginCheck;
	private String cust_email;
	private String cust_password; 
	
	
	public String execute(){
		System.out.println(cust_email+" / "+cust_password);
		
		CustomerDAO dao = new CustomerDAO();
		Customer customer = new Customer();
		customer.setCust_email(cust_email);
		customer.setCust_password(cust_password);
		Customer c = dao.login(customer);
		System.out.println("cust : "+customer + " / c : " +c);
		if(c==null){
			loginCheck = false;
		}
		else{
			session.put("loginId", c.getCust_email());
			session.put("nickname", c.getCust_nickname());
			loginCheck = true;
		}
		return SUCCESS;
	}

	
	public boolean isLoginCheck() {
		return loginCheck;
	}


	public void setLoginCheck(boolean loginCheck) {
		this.loginCheck = loginCheck;
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

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}
	
}

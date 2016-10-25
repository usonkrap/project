package action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.TableDAO;
import vo.Bill;
import vo.Item;

public class TableAction extends ActionSupport implements SessionAware {

	private Bill bill;
	private Item item;
	private List<Bill> billList;
	private Map<String, Object> session;

	public String goTable() {

		TableDAO dao = new TableDAO();
		billList = dao.tableList((String) session.get("loginId"));

		for (Bill bill : billList) {

			System.out.println(bill);

		}

		return SUCCESS;
	}

	////////////////////////////

	public Bill getBill() {
		return bill;
	}

	public void setBill(Bill bill) {
		this.bill = bill;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	public List<Bill> getBillList() {
		return billList;
	}

	public void setBillList(List<Bill> billList) {
		this.billList = billList;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}

package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.TableDAO;
import vo.Bill;
import vo.Item;

public class TableAction extends ActionSupport {

	private Bill bill;
	private Item item;
	private List<Bill> billList;

	public String tableList() {

		TableDAO dao = new TableDAO();
		billList = dao.tableList();
		System.out.println(billList);
	
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

}

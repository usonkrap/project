package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import dao.TableDAO;
import vo.Bill;
import vo.Item;
import vo.MainPage;

public class TableAction extends ActionSupport implements SessionAware {

	private Bill bill;
	private Item item;
	private MainPage main;
	private List<Bill> billList;
	private String[] mainPieCategory;
	private String[] mainPiePrice;
	private String calendarDate;
	private Map<String, Object> session;

	public String goTable() {

		TableDAO dao = new TableDAO();
		billList = dao.tableList((String) session.get("loginId"));


		return SUCCESS;
	}
	
	
	public String mainPageLoad(){
		main = new MainPage();
		String cust_email = (String) session.get("loginId");
		TableDAO dao = new TableDAO();
		Map<String, Object> result1 = dao.mostVisitStore(cust_email);
		main.setMostVisitStoreName((String) result1.get("STORENAME"));
		main.setMostVisitStoreNumber(String.valueOf(result1.get("COUNT")));
		Map<String, Object> result2 = dao.mostSpendDay(cust_email);
		main.setMostSpendDayCount(String.valueOf(result2.get("COUNT")));
		main.setMostSpendDayDate((String)(result2.get("BILLDATE")));
		main.setMostSpendDayMoney((String)result2.get("SUM"));
		Map<String, Object> result3 = dao.mostSpendBill(cust_email);
		main.setMostSpendPrice((String)result3.get("TOTALPRICE"));
		main.setMostSpendStore((String)result3.get("STORENAME"));
		main.setLatestBills(dao.latestBills(cust_email));
		
		return SUCCESS;
	}
	
	public String mainPagePie(){
		TableDAO dao = new TableDAO();
		ArrayList<String> pieCategory = new ArrayList<>();
		ArrayList<String> piePrice = new ArrayList<>();
		List<Map<String, Object>> data = dao.mainPagePie((String)session.get("loginId"));
		for (Map<String, Object> map : data) {
			pieCategory.add((String) map.get("CATEGORY_NAME"));
			piePrice.add(String.valueOf(map.get("TOTAL")));
		}
		mainPieCategory = new String[pieCategory.size()];
		mainPiePrice = new String[piePrice.size()];
		
		for(int i = 0; i < mainPieCategory.length; i++){
			mainPieCategory[i] = pieCategory.get(i);
			mainPiePrice[i] = piePrice.get(i);
		}
		
		return SUCCESS;
	}
	
	public String calendarBillList(){
		TableDAO dao = new TableDAO();
		billList = new ArrayList<>();
		List<Bill> temp = new ArrayList<>();
		temp = dao.tableList((String) session.get("loginId"));
		String date = "";
		String[] month = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
		String[] month2 = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"};
		if(calendarDate.length() > 10){
			for(int i = 0; i < 12; i++){
				if(calendarDate.substring(4, 7).equals(month[i])){
					date = calendarDate.substring(11, 15) + "-" + month2[i] + "-" + calendarDate.substring(8, 10); 
					break;
				}
			}
		}else{
			date = calendarDate.substring(6) + "-" + calendarDate.substring(0, 2) + "-" + calendarDate.substring(3, 5);
		}
		for (Bill bill : temp) {
			if(bill.getBillDate().substring(0, 10).equals(date)){
				bill.setBillDate(date);
				if(bill.getStoreName().length() > 9){
//					bill.setStoreName(bill.getStoreName().substring(0, 8) + "...");
				}
				billList.add(bill);
			}
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
	
	public MainPage getMain() {
		return main;
	}


	public void setMain(MainPage main) {
		this.main = main;
	}

	public String[] getMainPieCategory() {
		return mainPieCategory;
	}


	public void setMainPieCategory(String[] mainPieCategory) {
		this.mainPieCategory = mainPieCategory;
	}


	public String[] getMainPiePrice() {
		return mainPiePrice;
	}


	public void setMainPiePrice(String[] mainPiePrice) {
		this.mainPiePrice = mainPiePrice;
	}

	

	public String getCalendarDate() {
		return calendarDate;
	}


	public void setCalendarDate(String calendarDate) {
		this.calendarDate = calendarDate;
	}


	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}

package action;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
	private Double[] dayRecentAver;
	private Double[] dayTotalAver;


	public String goTable() {
		TableDAO dao = new TableDAO();
		billList = dao.tableList((String) session.get("loginId"));
		 raderChart();
		return SUCCESS;
	}//end of goTable
	
	
	public String raderChart(){
		TableDAO dao = new TableDAO();
		List<List<Double>> lists =  dao.raderChart((String) session.get("loginId"));
		dayTotalAver = new Double[7];
		dayRecentAver = new Double[7];
		for(int i = 0; i<lists.size(); i++){
			List<Double> littles = lists.get(i);
			for(int ii=0; ii< littles.size(); ii++ ){
				if(i == 0){
					dayTotalAver[ii] = littles.get(ii);
				}else{
					dayRecentAver[ii] = littles.get(ii);
				}//if else
			}//for
		}//else
		return SUCCESS;
	}//end of raderChart
	
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
	}//end of mainPageLoad
	
	public String mainPagePie(){
		TableDAO dao = new TableDAO();
		ArrayList<String> pieCategory = new ArrayList<>();
		ArrayList<String> piePrice = new ArrayList<>();
		List<Map<String, Object>> data = dao.mainPagePie((String)session.get("loginId"));
		for (Map<String, Object> map : data) {
			pieCategory.add((String) map.get("CATEGORY_NAME"));
			piePrice.add(String.valueOf(map.get("TOTAL")));
		}//for
		mainPieCategory = new String[pieCategory.size()];
		mainPiePrice = new String[piePrice.size()];
		for(int i = 0; i < mainPieCategory.length; i++){
			mainPieCategory[i] = pieCategory.get(i);
			mainPiePrice[i] = piePrice.get(i);
		}//for
		return SUCCESS;
	}//end of mainPagePie
	
	public String calendarBillList(){
		TableDAO dao = new TableDAO();
		billList = new ArrayList<>();
		billList = dao.tableList((String) session.get("loginId"),calendarDate);
		System.out.println(billList);
		return SUCCESS;
	}//end of calendarBillList

	////////////////////////////
	public Double[] getDayRecentAver() {return dayRecentAver;}
	public void setDayRecentAver(Double[] dayRecentAver) {this.dayRecentAver = dayRecentAver;}
	
	public Double[] getDayTotalAver() {return dayTotalAver;}
	public void setDayTotalAver(Double[] dayTotalAver) {this.dayTotalAver = dayTotalAver;}

	public Bill getBill() {return bill;}
	public void setBill(Bill bill) {this.bill = bill;}
	
	public Item getItem() {return item;}
	public void setItem(Item item) {this.item = item;}

	public List<Bill> getBillList() {return billList;}
	public void setBillList(List<Bill> billList) {this.billList = billList;}
	
	public MainPage getMain() {return main;}
	public void setMain(MainPage main) {this.main = main;}

	public String[] getMainPieCategory() {return mainPieCategory;}
	public void setMainPieCategory(String[] mainPieCategory) {this.mainPieCategory = mainPieCategory;}

	public String[] getMainPiePrice() {return mainPiePrice;}
	public void setMainPiePrice(String[] mainPiePrice) {this.mainPiePrice = mainPiePrice;}

	public String getCalendarDate() {return calendarDate;}
	public void setCalendarDate(String calendarDate) {this.calendarDate = calendarDate;}

	@Override
	public void setSession(Map<String, Object> session) {this.session = session;}

}//end of class
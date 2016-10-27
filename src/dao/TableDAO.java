package dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import util.MybatisConfig;
import vo.Bill;
import vo.Item;

public class TableDAO {
	SqlSessionFactory factory = MybatisConfig.getSqlSessionFactory();
	SqlSession ss;

	public List<Bill> tableList(String id) {

		List<Bill> billList = new ArrayList<>();

		try {
			ss = factory.openSession();
			billList = ss.selectList("table.billList", id);
			for (Bill bill : billList) {
				List<Item> itemList = ss.selectList("table.itemList", bill.getBillNo());
				bill.setItemList(itemList);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}

		return billList;

	}

	// 가장 많이 간 가게
	public Map<String, Object> mostVisitStore(String customerId) {
		Map<String, Object> storeName = null;
		try {
			ss = factory.openSession();
			storeName = ss.selectOne("table.mostVisitStore", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return storeName;
	}
	
	// 최대 소비날
	public Map<String, Object> mostSpendDay(String customerId){
		Map<String, Object> mostSpendDay = null;
		try {
			ss = factory.openSession();
			mostSpendDay = ss.selectOne("table.mostSpendDay", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return mostSpendDay;
	}
	
	// 최고 소비액
	public Map<String, Object> mostSpendBill(String customerId){
		Map<String, Object> mostSpendBill = null;
		try {
			ss = factory.openSession();
			mostSpendBill = ss.selectOne("table.mostSpendBill", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return mostSpendBill;
	}
	
	public List<Bill> latestBills(String customerId){
		List<Bill> billList = new ArrayList<>();

		try {
			ss = factory.openSession();
			billList = ss.selectList("table.latestBills", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return billList;
	}

}

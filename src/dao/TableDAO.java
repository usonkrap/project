package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import util.MybatisConfig;
import vo.Bill;
import vo.Item;
import vo.ProgressData;

public class TableDAO {
	SqlSessionFactory factory = MybatisConfig.getSqlSessionFactory();
	SqlSession ss;
	
	
	public ProgressData progressGet(String customerId){
		ProgressData progressData = new ProgressData();
		try {
			ss = factory.openSession();
			progressData = ss.selectOne("table.progressGet",customerId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}///try catch finally
		return progressData;
	}//end of progressGet
	/*
	 * 레이더 차트에 사용되는
	 * 전체 요일 금액의 소비량 퍼센티지(비율)와
	 * 최근 요일 금액의 소비량 퍼센티지(비율)를
	 * 테이터 베이스에서 각각의 더블 배열로 받아와
	 * 그 배열을 배열에 저장해두고 액션으로 돌려준다
	 */
	public List<List<Double>> raderChart(String customerId){
		List<List<Double>> list = new ArrayList<>();
		List<Double> recevie = new ArrayList<>();
		Map<String, Object> dateType = new HashMap<>();
		dateType.put("customerId", customerId);
		dateType.put("type", "all");
		try {
			ss = factory.openSession();
			recevie = ss.selectList("table.raderChart", dateType);
			list.add(recevie);
			recevie = new ArrayList<>();
			dateType.put("type", "limited");
			recevie = ss.selectList("table.raderChart", dateType);
			list.add(recevie);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}//try catch finally
		return list;
	}//end of raderChart
	/*
	 * 특정 유저의 전체 거래 목록을 뽑아줌
	 */
	public List<Bill> tableList(String id) {
		List<Bill> billList = new ArrayList<>();
		try {
			ss = factory.openSession();
			billList = ss.selectList("table.billList", id);
			for (Bill bill : billList) {
				List<Item> itemList = ss.selectList("table.itemList", bill.getBillNo());
				bill.setItemList(itemList);
			}//for
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}//try catch finally
		return billList;
	}//end of tableList
	
	/*
	 *특정 유저의 특정 거래일의 목록을 뽑아줌 
	 */
	public List<Bill> tableList(String id,String date) {
		List<Bill> billList = new ArrayList<>();
		Map<String, Object>map = new HashMap<>();
		map.put("id", id);
		map.put("dates", date);
		try {
			ss = factory.openSession();
			billList = ss.selectList("table.billListForDate", map);
			for (Bill bill : billList) {
				List<Item> itemList = ss.selectList("table.itemList", bill.getBillNo());
				bill.setItemList(itemList);
			}//for
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}//try catch finally
		return billList;
	}//end of tableList
	
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
	}//end of mostVisitStore
	
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
		}//try catch finally
		return mostSpendDay;
	}//end of mostSpendDay
	
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
	/*
	 * 최근 거래 목록
	 */
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
		}//try catch finally
		return billList;
	}//end of latestBills
	
	/*
	 * 메인 파이
	 */
	public List<Map<String, Object>> mainPagePie(String customerId){
		List<Map<String, Object>> dataList = null;

		try {
			ss = factory.openSession();
			dataList = ss.selectList("table.mainPagePie", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}//try catch finally
		return dataList;
	}//end fo mainPagePie
	
	
	public List<Map<String, Object>> donutChart(String customerId){
		List<Map<String, Object>> dataList = null;
		try {
			ss = factory.openSession();
			dataList = ss.selectList("table.donutChart", customerId);
			ss.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}//try catch finally
		return dataList;
	}//end fo donutChart
}//end of class
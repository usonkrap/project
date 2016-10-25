package dao;

import java.util.ArrayList;
import java.util.List;

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

}

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

	public List<Bill> tableList() {

		List<Bill> billList = null;

		try {
			ss = factory.openSession();
			billList = ss.selectList("table.selectList");

			for (Bill bill : billList) {
				List<Item> itemList = ss.selectList("table.itemList");
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

package dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import util.MybatisConfig;

public class BillDAO {

	SqlSessionFactory factory = MybatisConfig.getSqlSessionFactory();
	SqlSession ss;
	
	public String searchRestaurant(String keyword){
		String category = "";
		try {
			ss = factory.openSession();
			category = ss.selectOne("bill.searchRestaurant", keyword);
			if(category.equals("null")){
				int no = ss.selectOne("bill.countRestaurant");
				category = "L01M" + Integer.toString(no);
				Map<String, String> map = new HashMap<>();
				map.put("category_num", "L01");
				map.put("sub_category_num", category);
				map.put("sub_category_name", keyword);
				ss.insert("bill.insertRestaurant", map);
				ss.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return category;
	}
	
	public String searchItem(String keyword){
		String category = "";
		try {
			ss = factory.openSession();
			category = ss.selectOne("bill.searchItem", keyword);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return category;
	}


}

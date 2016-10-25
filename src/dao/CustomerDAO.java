package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import util.MybatisConfig;
import vo.Customer;

public class CustomerDAO {

	SqlSessionFactory factory = MybatisConfig.getSqlSessionFactory();
	SqlSession ss;

	public void join(Customer c) {

		try {
			ss = factory.openSession();
			ss.insert("customer.join", c);
			ss.commit();
			ss.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Customer login(Customer c) {

		Customer customer = new Customer();

		try {
			ss = factory.openSession();
			customer = ss.selectOne("customer.login", c);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return customer;
	}

}

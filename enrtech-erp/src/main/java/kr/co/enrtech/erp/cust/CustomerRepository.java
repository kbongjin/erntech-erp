package kr.co.enrtech.erp.cust;

import java.util.List;

import kr.co.enrtech.erp.base.AbstractBaseDao;
import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.stereotype.Repository;

/**
 * CustomerRepository
 *
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Repository
public class CustomerRepository extends AbstractBaseDao {

	/**
	 * CustomerRepository
	 *
	 * @param
	 * @exception
	 */
	public CustomerRepository() {
	}

	public List<Customer> getCustomerList(SearchListParam gridParam) {
		return sqlSession.selectList("enr.Customer.getCustomerList", gridParam);
	}

	public int getCustomerListTotalCount(SearchListParam gridParam) {

		return sqlSession.selectOne("enr.Customer.getCustomerListTotalCount",
				gridParam);
	}

	public Customer getCustomer(Customer customer) {
		return sqlSession.selectOne("enr.Customer.getCustomer", customer);
	}

	public void insertCustomer(Customer customer) {
		sqlSession.insert("enr.Customer.insertCustomer", customer);
	}

	public void updateCustomer(Customer customer) {
		sqlSession.update("enr.Customer.updateCustomer", customer);
	}

	public void deleteCustomer(Customer customer) {
		sqlSession.delete("enr.Customer.deleteCustomer", customer);
	}
}
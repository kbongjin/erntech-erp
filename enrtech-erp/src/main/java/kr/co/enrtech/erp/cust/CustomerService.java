package kr.co.enrtech.erp.cust;

import java.util.List;

import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Service
public class CustomerService {

	@Autowired
	private CustomerRepository repository;
	
	public CustomerService() {
		// TODO Auto-generated constructor stub
	}
	
	public void insertCustomer(Customer customer){
		repository.insertCustomer(customer);
	}
	
	public List<Customer> getCustomerList(SearchListParam gridParam){
		return repository.getCustomerList(gridParam);
	}
	
	public int getCustomerListTotalCount(SearchListParam gridParam){
		
		return repository.getCustomerListTotalCount(gridParam);
	}
	
	public Customer getCustomer(Customer customer){
		return repository.getCustomer(customer);
	}
	
	public void updateCustomer(Customer customer){
		repository.updateCustomer(customer);
	}
	
	public void deleteCustomer(Customer customer){
		repository.deleteCustomer(customer);
	}

}
//end of CustomerService.java
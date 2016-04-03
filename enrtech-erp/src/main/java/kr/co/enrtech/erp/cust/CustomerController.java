package kr.co.enrtech.erp.cust;

import kr.co.enrtech.erp.common.model.GridJsonResponse;
import kr.co.enrtech.erp.common.model.SearchListParam;
import kr.co.enrtech.erp.common.model.SimpleJsonResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/cust")
public class CustomerController {
	
	@Autowired
	private CustomerService service;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public CustomerController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public String list(){
	
		return "admin.customer";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	@ResponseBody
	public GridJsonResponse list(SearchListParam gridParam){
	
		GridJsonResponse jsonRes = new GridJsonResponse();
		jsonRes.setTotal(service.getCustomerListTotalCount(gridParam));
		jsonRes.setRows(service.getCustomerList(gridParam));
		
		return jsonRes;
	}
	
	@RequestMapping("/create")
	@ResponseBody
	public SimpleJsonResponse create(SimpleJsonResponse jsonRes, Customer customer){
		
		service.insertCustomer(customer);
		
		
		return jsonRes;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public SimpleJsonResponse update(SimpleJsonResponse jsonRes, Customer customer){
		
		service.updateCustomer(customer);
		
		return jsonRes;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public SimpleJsonResponse delete(SimpleJsonResponse jsonRes, Customer customer){
		
		service.deleteCustomer(customer);
		
		return jsonRes;
	}
	
	@RequestMapping(value="/getCustomer", method = RequestMethod.GET)
	@ResponseBody
	public Customer getCustomer(Customer customer){
	
		return service.getCustomer(customer);
	}

}
//end of CustomerController.java
package kr.co.enrtech.erp.contract;

import javax.servlet.http.HttpServletRequest;

import kr.co.enrtech.erp.common.model.GridJsonResponse;
import kr.co.enrtech.erp.common.model.SearchListParam;
import kr.co.enrtech.erp.common.model.SimpleJsonResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Controller
@RequestMapping("/contract")
public class ContractController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ContractController.class);
	
	@Autowired
	private ContractService service;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public ContractController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value = {"/main/{contractId}"}, method=RequestMethod.GET)
    public String cmain(@PathVariable int contractId, HttpServletRequest req) {
		
		req.setAttribute("contractId", contractId);
		
        return "page.contractMain";
    }
	
	@RequestMapping(value = {"/search"})
    public String search() {
		
		System.out.println("---------------------------------------------");
        return "page.contractList";
    }
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public GridJsonResponse list(SearchListParam searchParam){
		
		GridJsonResponse jsonRes = new GridJsonResponse();
		jsonRes.setTotal(service.getContractListTotalCount(searchParam));
		jsonRes.setRows(service.getContractList(searchParam));
		
		return jsonRes;
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	@ResponseBody
	public SimpleJsonResponse create(Contract contract, SimpleJsonResponse jresp){
		
		service.insertContract(contract);
		jresp.setData(contract.getContractId());
		
		LOGGER.debug("inserted {} : {} __________________________________", contract.getContractId(), contract.getCnstrctNm());
		
		return jresp;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public SimpleJsonResponse update(Contract contract, SimpleJsonResponse jresp){
		
		service.updateContract(contract);
		
		return jresp;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public SimpleJsonResponse delete(@RequestParam(value="contractId") int contractId, SimpleJsonResponse jresp){
		
		service.deleteContract(contractId);
		
		return jresp;
	}
	
	@RequestMapping(value = "/{contractId}", method = RequestMethod.GET)
	@ResponseBody
	public Contract getContract(@PathVariable int contractId){
	
		
		return service.getContract(contractId);
	}

}
//end of ContractController.java
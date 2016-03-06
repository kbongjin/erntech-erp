package kr.co.enrtech.erp.contract;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <pre>
 * 
 * </pre>
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Controller
@RequestMapping("/Contract")
public class ContractController {
	
	//@Autowired
	//private ContractService service;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public ContractController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value = {"/{cntrId}"}, method=RequestMethod.GET)
    public String getContract(@PathVariable String cntrId) {
        return "page.contract";
    }
	
	@RequestMapping(value = {"/search"})
    public String search() {
		
		System.out.println("---------------------------------------------");
        return "page.contractList";
    }
	/*
	@RequestMapping("/list", method = RequestMethod.GET)
	@ResponseBody
	public GridJsonResponse list(ExtjsGridParam gridParam){
	
		GridJsonResponse jsonRes = new GridJsonResponse();
		jsonRes.setTotal(service.getContractListTotalCount(gridParam));
		jsonRes.setList(service.getContractList(gridParam));
		
		return jsonRes;
	}
	
	@RequestMapping("/create")
	@ResponseBody
	public SimpleJsonResponse create(Contract contract){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.insertContract(contract);
			jsonRes.setMsg("사용자가 정상적으로 생성되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 생성 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		
		return jsonRes;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public SimpleJsonResponse update(Contract contract){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.updateContract(contract);
			jsonRes.setMsg("사용자 정보가 정상적으로 수정되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 정보 수정 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		
		return jsonRes;
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public SimpleJsonResponse delete(Contract contract){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.deleteContract(contract);
			jsonRes.setMsg("사용자 정보가 정상적으로 삭제되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 정보 삭제 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		return jsonRes;
	}
	
	@RequestMapping("/getContract", method = RequestMethod.GET)
	@ResponseBody
	public DtoJsonResponse getContract(Contract contract){
	
		DtoJsonResponse jsonRes = new DtoJsonResponse();
		
		jsonRes.setData(service.getContract(contract));
		
		return jsonRes;
	}
*/
}
//end of ContractController.java
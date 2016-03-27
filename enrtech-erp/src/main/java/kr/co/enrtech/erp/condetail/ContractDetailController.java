package kr.co.enrtech.erp.condetail;

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
@RequestMapping("/ContractDetail")
public class ContractDetailController {
	
	@Autowired
	private ContractDetailService service;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public ContractDetailController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	@ResponseBody
	public GridJsonResponse list(SearchListParam gridParam){
	
		GridJsonResponse jsonRes = new GridJsonResponse();
		jsonRes.setTotal(service.getContractDetailListTotalCount(gridParam));
		jsonRes.setRows(service.getContractDetailList(gridParam));
		
		return jsonRes;
	}
	
	@RequestMapping("/create")
	@ResponseBody
	public SimpleJsonResponse create(ContractDetail contractDetail){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.insertContractDetail(contractDetail);
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
	public SimpleJsonResponse update(ContractDetail contractDetail){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.updateContractDetail(contractDetail);
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
	public SimpleJsonResponse delete(ContractDetail contractDetail){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.deleteContractDetail(contractDetail);
			jsonRes.setMsg("사용자 정보가 정상적으로 삭제되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 정보 삭제 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		return jsonRes;
	}
	
	@RequestMapping(value="/getContractDetail", method = RequestMethod.GET)
	@ResponseBody
	public ContractDetail getContractDetail(ContractDetail contractDetail){
	
		return service.getContractDetail(contractDetail);
	}

}
//end of ContractDetailController.java
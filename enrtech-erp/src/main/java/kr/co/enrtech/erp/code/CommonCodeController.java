package kr.co.enrtech.erp.code;

import kr.co.enrtech.erp.common.code.CommonCode;
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
@RequestMapping("/admin/code")
public class CommonCodeController {
	
	@Autowired
	private CommonCodeService service;

	/**
	 * <pre>
	 * 
	 * </pre>
	 */
	public CommonCodeController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="/view", method = RequestMethod.GET)
	public String list(){
	
		return "admin.code";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	@ResponseBody
	public GridJsonResponse list(CommonCode commonCode){
	
		GridJsonResponse jsonRes = new GridJsonResponse();
		jsonRes.setTotal(service.getCommonCodeListTotalCount(commonCode));
		jsonRes.setRows(service.getCommonCodeList(commonCode));
		
		return jsonRes;
	}
	
	@RequestMapping(value="/create")
	@ResponseBody
	public SimpleJsonResponse create(CommonCode commonCode){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.insertCommonCode(commonCode);
			jsonRes.setMsg("사용자가 정상적으로 생성되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 생성 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		
		return jsonRes;
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public SimpleJsonResponse update(CommonCode commonCode){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.updateCommonCode(commonCode);
			jsonRes.setMsg("사용자 정보가 정상적으로 수정되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 정보 수정 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		
		return jsonRes;
	}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public SimpleJsonResponse delete(CommonCode commonCode){
		
		SimpleJsonResponse jsonRes = new SimpleJsonResponse();
		try{
			service.deleteCommonCode(commonCode);
			jsonRes.setMsg("사용자 정보가 정상적으로 삭제되었습니다.");
			
		}catch(Exception e){
			
			jsonRes.setSuccess(false);
			jsonRes.setMsg("사용자 정보 삭제 중 에러가 발생하였습니다.");
			
			e.printStackTrace();
		}
		
		return jsonRes;
	}
	
	@RequestMapping(value="/getCommonCode", method = RequestMethod.GET)
	@ResponseBody
	public CommonCode getCommonCode(CommonCode commonCode){
	
		
		return service.getCommonCode(commonCode);
	}

}
//end of CommonCodeController.java
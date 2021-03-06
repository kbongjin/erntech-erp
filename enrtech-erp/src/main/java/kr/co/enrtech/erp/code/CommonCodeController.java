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
	
	@RequestMapping(value="/save")
	@ResponseBody
	public SimpleJsonResponse save(SimpleJsonResponse jsonRes, CommonCode commonCode){
		
		if("insert".equals(commonCode.getHandle())){
			service.insertCommonCode(commonCode);
		} else {
			service.updateCommonCode(commonCode);
		}
		
		return jsonRes;
	}
	
	@RequestMapping(value="/create")
	@ResponseBody
	public SimpleJsonResponse create(SimpleJsonResponse jsonRes, CommonCode commonCode){
		
		service.insertCommonCode(commonCode);
		
		return jsonRes;
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public SimpleJsonResponse update(SimpleJsonResponse jsonRes, CommonCode commonCode){
		
		service.updateCommonCode(commonCode);
		
		
		return jsonRes;
	}
	
	@RequestMapping(value="/delete")
	@ResponseBody
	public SimpleJsonResponse delete(SimpleJsonResponse jsonRes, CommonCode commonCode){
		
		service.deleteCommonCode(commonCode);
		
		return jsonRes;
	}
	
	@RequestMapping(value="/getCommonCode", method = RequestMethod.GET)
	@ResponseBody
	public CommonCode getCommonCode(CommonCode commonCode){
	
		
		return service.getCommonCode(commonCode);
	}

}
//end of CommonCodeController.java
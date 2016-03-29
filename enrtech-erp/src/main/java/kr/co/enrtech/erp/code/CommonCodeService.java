package kr.co.enrtech.erp.code;

import java.util.List;

import kr.co.enrtech.erp.common.code.CommonCode;
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
public class CommonCodeService {

	@Autowired
	private CommonCodeRepository repository;
	
	public CommonCodeService() {
		// TODO Auto-generated constructor stub
	}
	
	public void insertCommonCode(CommonCode commonCode){
		repository.insertCommonCode(commonCode);
	}
	
	public List<CommonCode> getCommonCodeList(CommonCode gridParam){
		return repository.getCommonCodeList(gridParam);
	}
	
	public int getCommonCodeListTotalCount(CommonCode gridParam){
		
		return repository.getCommonCodeListTotalCount(gridParam);
	}
	
	public CommonCode getCommonCode(CommonCode commonCode){
		return repository.getCommonCode(commonCode);
	}
	
	public void updateCommonCode(CommonCode commonCode){
		repository.updateCommonCode(commonCode);
	}
	
	public void deleteCommonCode(CommonCode commonCode){
		repository.deleteCommonCode(commonCode);
	}

}
//end of CommonCodeService.java